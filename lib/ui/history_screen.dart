import 'package:flutter/material.dart';

import '../core/db.dart';
import '../core/track.dart';
import '../core/units.dart';
import '../export/report.dart';
import '../export/share.dart';
import '../map/route_thumb.dart';
import 'app.dart';
import 'detail_screen.dart';
import 'import_screen.dart';
import 'run_screen.dart';
import 'settings_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Běhánek'),
        actions: [
          TextButton(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ImportScreen())),
              child: const Text('Import')),
          TextButton(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())),
              child: const Text('Nastavení')),
        ],
      ),
      body: ListenableBuilder(
        listenable: s.settings,
        builder: (context, _) => StreamBuilder<List<RunRow>>(
          stream: s.db.watchRuns(),
          builder: (context, snap) {
            final runs = snap.data;
            if (runs == null) return const SizedBox.shrink();
            if (runs.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Text('Zatím žádný běh.\nObuj boty a zmáčkni Běžet.',
                      textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white70)),
                ),
              );
            }
            return _RunList(runs);
          },
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(72)),
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (_) => const RunScreen())),
          child: const Text('Běžet', style: TextStyle(fontSize: 26)),
        ),
      ),
    );
  }
}

class _Month {
  final DateTime month;
  final List<RunRow> runs = [];
  _Month(this.month);

  double get km => runs.fold(0.0, (s, r) => s + r.distanceM);
  double? get pace {
    final d = km, t = runs.fold(0.0, (s, r) => s + r.movingTimeS);
    return d > 0 ? t / (d / 1000) : null;
  }
}

class _RunList extends StatelessWidget {
  final List<RunRow> runs;
  const _RunList(this.runs);

  @override
  Widget build(BuildContext context) {
    final months = <_Month>[];
    for (final r in runs) {
      final m = DateTime(r.startedAt.year, r.startedAt.month);
      if (months.isEmpty || months.last.month != m) months.add(_Month(m));
      months.last.runs.add(r);
    }
    final items = <Widget>[];
    for (var i = 0; i < months.length; i++) {
      items.add(_MonthHeader(months[i], i + 1 < months.length ? months[i + 1] : null));
      for (final r in months[i].runs) {
        items.add(_RunTile(r));
      }
    }
    return ListView(padding: const EdgeInsets.only(bottom: 16), children: items);
  }
}

class _MonthHeader extends StatelessWidget {
  final _Month m;
  final _Month? previous;
  const _MonthHeader(this.m, this.previous);

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    final pace = m.pace, prev = previous?.pace;
    String trend = '';
    if (pace != null && prev != null) {
      final d = (pace - prev).round();
      trend = d.abs() < 2 ? ' · tempo stejné' : d < 0 ? ' · o ${-d} s rychleji' : ' · o $d s pomaleji';
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 8, 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${czechMonths[m.month.month - 1]} ${m.month.year}',
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
                const SizedBox(height: 2),
                Text(
                    '${formatDistance(m.km, unit, decimals: 1)} ${unit.label} · ${m.runs.length}× · '
                    '${formatPace(pace, unit)}${unit.paceLabel}$trend',
                    style: const TextStyle(color: Colors.white70, fontSize: 15)),
              ],
            ),
          ),
          TextButton(
            onPressed: () async {
              final png = await renderMonthReport(m.month, m.runs, unit);
              await sharePng(png, 'behanek-${m.month.year}-${m.month.month}.png');
            },
            child: const Text('Report'),
          ),
        ],
      ),
    );
  }
}

/// Body pro miniatury držíme v paměti, ať se seznam při scrollu nenačítá znovu.
final thumbCache = <int, List<TrackPt>>{};

class _RunTile extends StatelessWidget {
  final RunRow r;
  const _RunTile(this.r);

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    final cached = thumbCache[r.id];
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(runId: r.id))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            SizedBox.square(
              dimension: 56,
              child: cached != null
                  ? RouteThumb(cached)
                  : FutureBuilder(
                      future: s.db.pointsOf(r.id).then((p) => thumbCache[r.id] = p),
                      builder: (_, snap) => snap.hasData ? RouteThumb(snap.data!) : const SizedBox()),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${formatDistance(r.distanceM, unit)} ${unit.label}',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                  Text(
                    '${formatDateTime(r.startedAt)} · ${formatDuration(r.movingTimeS)} · '
                    '${formatPace(r.avgPaceSPerKm, unit)}${unit.paceLabel}',
                    style: const TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
