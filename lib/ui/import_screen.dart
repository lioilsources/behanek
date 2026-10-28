import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../core/units.dart';
import '../export/importer.dart';
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

  Future<void> _pick() async {
    final db = App.of(context).db;
    final files = await FilePicker.pickFiles(type: FileType.any);
    if (files.isEmpty) return;
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
    setState(() {
      _items = items;
      _busy = false;
    });
  }

  Future<void> _import() async {
    final db = App.of(context).db;
    setState(() => _busy = true);
    var ok = 0, skipped = 0;
    for (final c in _items!.where((c) => c.importable)) {
      final id = await db.importRun(c.gpx!.startedAt, c.gpx!.points, notes: c.gpx!.name);
      id == null ? skipped++ : ok++;
    }
    if (!mounted) return;
    setState(() {
      _busy = false;
      _items = null;
      _result = 'Naimportováno $ok běhů${skipped > 0 ? ', $skipped už v historii bylo' : ''}.';
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Import GPX')),
      body: ListenableBuilder(
        listenable: Listenable.merge([s.settings, s.purchases]),
        builder: (context, _) {
          final unlocked = s.settings.importUnlocked;
          final items = _items;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Přenes si historii ze Stravy, Garminu nebo jiné appky — vyber jednotlivá GPX, '
                'nebo celý ZIP exportu. Pacer se z ní hned naučí tvoji formu.',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 16),
              FilledButton(
                  onPressed: _busy ? null : _pick, child: Text(items == null ? 'Vybrat soubory' : 'Vybrat jiné')),
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
    final good = items.where((c) => c.importable).toList();
    // Bez nákupu: náhled jednoho souboru — co by se naimportovalo.
    final shown = unlocked ? items : items.take(1).toList();
    return [
      const SizedBox(height: 16),
      Text(
          '${good.length} běhů k importu'
          '${items.length > good.length ? ' (${items.length - good.length} přeskočeno)' : ''}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
      for (final c in shown)
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: c.gpx == null ? null : SizedBox.square(dimension: 48, child: RouteThumb(c.gpx!.points, size: 48)),
          title: Text(c.gpx == null
              ? c.fileName
              : '${formatDateTime(c.gpx!.startedAt)} · ${formatDistance(c.stats!.distanceM, unit)} ${unit.label}'),
          subtitle: Text(c.error ??
              (c.duplicate
                  ? 'Už je v historii'
                  : '${formatDuration(c.stats!.movingTimeS)} · ${formatPace(c.stats!.avgPaceSPerKm, unit)}${unit.paceLabel}')),
        ),
      if (!unlocked && items.length > 1)
        Text('… a dalších ${items.length - 1} souborů', style: const TextStyle(color: Colors.white60)),
      const SizedBox(height: 16),
      if (unlocked)
        FilledButton(
            onPressed: good.isEmpty ? null : _import, child: Text('Importovat ${good.length} běhů')),
    ];
  }

  List<Widget> _purchase(BuildContext context) {
    final p = App.of(context).purchases;
    return [
      Text('Import je jediná placená věc v Běhánkovi: jednorázově ${p.price}. '
          'Export tvých běhů je vždy zdarma.',
          style: const TextStyle(fontSize: 16, color: Colors.white70)),
      const SizedBox(height: 12),
      FilledButton(
          onPressed: p.pending ? null : p.buy, child: Text('Odemknout import — ${p.price}')),
      const SizedBox(height: 8),
      TextButton(onPressed: p.pending ? null : p.restore, child: const Text('Obnovit nákup')),
      if (p.error != null) Text(p.error!, style: const TextStyle(color: Colors.orangeAccent)),
    ];
  }
}
