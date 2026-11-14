import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ol1n_telemetry/ol1n_telemetry.dart';

import '../core/units.dart';
import '../export/importer.dart';
import '../l10n/l10n.dart';
import '../map/route_thumb.dart';
import 'app.dart';

/// Import historie ze Stravy/Garminu. Náhled zdarma, uložení po jednorázovém nákupu.
class ImportScreen extends StatefulWidget {
  const ImportScreen({super.key});

  @override
  State<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  List<ImportCandidate>? _items;
  bool _busy = false;
  String? _result;

  /// Měření: od výběru souborů po uložení, nebo odchod z obrazovky.
  TelemetryFlow? _flow;
  int _failed = 0;
  late final Services _s;

  @override
  void initState() {
    super.initState();
    _s = App.of(context);
  }

  void _endFlow(String result, int runs) {
    _flow?.end(result, {'runs': runs, 'failed': _failed});
    _flow = null;
  }

  @override
  void dispose() {
    // Odchod bez uložení: zamčený import skončil náhledem, jinak zrušeno.
    _endFlow(_items != null && !_s.settings.importUnlocked ? 'preview' : 'cancel', 0);
    super.dispose();
  }

  Future<void> _pick() async {
    final db = App.of(context).db;
    _flow ??= Telemetry.flow('import', const {}, () => {'runs': 0, 'failed': _failed});
    final files = await FilePicker.pickFiles(type: FileType.any);
    if (files.isEmpty) {
      if (_items == null) _endFlow('cancel', 0);
      return;
    }
    setState(() {
      _busy = true;
      _result = null;
    });
    final items = <ImportCandidate>[];
    for (final f in files) {
      items.addAll(parseImportFile(f.name, await f.readAsBytes()));
    }
    final existing = await db.watchRuns().first;
    for (final c in items) {
      final g = c.gpx;
      if (g == null) continue;
      c.duplicate = existing.any((r) => r.startedAt.difference(g.startedAt).inSeconds.abs() < 60);
    }
    items.sort((a, b) => (b.gpx?.startedAt ?? DateTime(0)).compareTo(a.gpx?.startedAt ?? DateTime(0)));
    if (!mounted) return;
    _failed = items.where((c) => c.error != null).length;
    if (_failed > 0) Telemetry.errorShown('import_file');
    if (!items.any((c) => c.importable)) {
      _endFlow('empty', 0);
    } else if (!_s.settings.importUnlocked) {
      // Náhled je zdarma, uložit všechno jde až po nákupu.
      Telemetry.lockedTap('import_all');
    }
    setState(() {
      _items = items;
      _busy = false;
    });
  }

  Future<void> _import() async {
    final db = App.of(context).db;
    setState(() => _busy = true);
    _flow ??= Telemetry.flow('import', const {}, () => {'runs': 0, 'failed': _failed});
    var ok = 0, skipped = 0;
    for (final c in _items!.where((c) => c.importable)) {
      final id = await db.importRun(c.gpx!.startedAt, c.gpx!.points, notes: c.gpx!.name);
      id == null ? skipped++ : ok++;
    }
    Telemetry.feature('import');
    _failed += skipped;
    _endFlow('ok', ok);
    if (!mounted) return;
    setState(() {
      _busy = false;
      _items = null;
      _result = skipped > 0 ? context.l.import_doneSkipped(ok, skipped) : context.l.import_done(ok);
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(context.l.import_title)),
      body: ListenableBuilder(
        listenable: Listenable.merge([s.settings, s.purchases]),
        builder: (context, _) {
          final unlocked = s.settings.importUnlocked;
          final items = _items;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(context.l.import_intro, style: const TextStyle(fontSize: 17)),
              const SizedBox(height: 16),
              FilledButton(
                  onPressed: _busy ? null : _pick,
                  child: Text(items == null ? context.l.import_pick : context.l.import_pickOther)),
              if (_busy) const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
              if (_result != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(_result!, style: const TextStyle(fontSize: 18, color: accent)),
                ),
              if (items != null && !_busy) ..._preview(context, items, unlocked),
              const SizedBox(height: 32),
              if (!unlocked) ..._purchase(context),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _preview(BuildContext context, List<ImportCandidate> items, bool unlocked) {
    final unit = App.of(context).settings.unit;
    final l = context.l;
    final good = items.where((c) => c.importable).toList();
    // Bez nákupu: náhled jednoho souboru — co by se naimportovalo.
    final shown = unlocked ? items : items.take(1).toList();
    return [
      const SizedBox(height: 16),
      Text(
          items.length > good.length
              ? l.import_toImportSkipped(good.length, items.length - good.length)
              : l.import_toImport(good.length),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
      for (final c in shown)
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: c.gpx == null ? null : SizedBox.square(dimension: 48, child: RouteThumb(c.gpx!.points, size: 48)),
          title: Text(c.gpx == null
              ? c.fileName
              : '${formatDateTime(c.gpx!.startedAt)} · ${formatDistance(c.stats!.distanceM, unit)} ${unit.label}'),
          subtitle: Text(c.error?.message(l) ??
              (c.duplicate
                  ? l.import_duplicate
                  : '${formatDuration(c.stats!.movingTimeS)} · ${formatPace(c.stats!.avgPaceSPerKm, unit)}${unit.paceLabel}')),
        ),
      if (!unlocked && items.length > 1)
        Text(l.import_andMore(items.length - 1), style: const TextStyle(color: Colors.white60)),
      const SizedBox(height: 16),
      if (unlocked)
        FilledButton(
            onPressed: good.isEmpty ? null : _import, child: Text(l.import_importN(good.length))),
    ];
  }

  List<Widget> _purchase(BuildContext context) {
    final p = App.of(context).purchases;
    final l = context.l;
    return [
      Text(l.import_paid(p.price),
          style: const TextStyle(fontSize: 16, color: Colors.white70)),
      const SizedBox(height: 12),
      FilledButton(
          onPressed: p.pending ? null : p.buy, child: Text(l.import_unlock(p.price))),
      const SizedBox(height: 8),
      TextButton(onPressed: p.pending ? null : p.restore, child: Text(l.import_restore)),
      if (p.error != null) Text(p.error!, style: const TextStyle(color: Colors.orangeAccent)),
    ];
  }
}
