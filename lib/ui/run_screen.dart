import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../core/settings.dart';
import '../core/units.dart';
import '../gps/location_source.dart';
import '../gps/run_controller.dart';
import '../gps/run_tracker.dart';
import '../map/tiles.dart';
import 'app.dart';
import 'detail_screen.dart';
import 'slide_to_stop.dart';

class RunScreen extends StatefulWidget {
  const RunScreen({super.key});

  @override
  State<RunScreen> createState() => _RunScreenState();
}

class _RunScreenState extends State<RunScreen> {
  LocationAccess? _access;
  bool _showMap = false;
  final _map = MapController();
  late final RunController _run;

  @override
  void initState() {
    super.initState();
    _run = App.of(context).run;
    _warmUp();
  }

  Future<void> _warmUp() async {
    final a = await _run.warmUp();
    if (mounted) setState(() => _access = a);
  }

  @override
  void dispose() {
    _run.coolDown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _run,
      builder: (context, _) => PopScope(
        // Během běhu zpět nevede — jen přes stop, ať se běh omylem neztratí.
        canPop: _run.phase == Phase.idle,
        child: Scaffold(
          appBar: _run.phase == Phase.idle ? AppBar(title: const Text('Běh')) : null,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: switch (_run.phase) {
                Phase.idle => _idle(context),
                Phase.countdown => _countdown(),
                Phase.active => _active(context),
                Phase.stopped => _stopped(context),
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _idle(BuildContext context) {
    final s = App.of(context);
    final fix = _run.lastFix;
    if (_access != null && _access != LocationAccess.granted) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            switch (_access!) {
              LocationAccess.serviceOff => 'Poloha v telefonu je vypnutá. Bez ní běh nezaznamenám.',
              _ => 'Běhánek potřebuje polohu „při používání“, aby zaznamenal trasu. '
                  'Nikam ji neposílá, zůstává v telefonu.',
            },
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () async {
              if (_access == LocationAccess.deniedForever) {
                await Geolocator.openAppSettings();
              } else if (_access == LocationAccess.serviceOff) {
                await Geolocator.openLocationSettings();
              }
              await _warmUp();
            },
            child: const Text('Povolit polohu'),
          ),
        ],
      );
    }

    final gpsText = fix == null
        ? 'Hledám GPS…'
        : fix.accuracy <= 10
            ? 'GPS výborné (±${fix.accuracy.round()} m)'
            : fix.accuracy <= 25
                ? 'GPS dobré (±${fix.accuracy.round()} m)'
                : 'GPS slabé (±${fix.accuracy.round()} m) — počkej chvíli';
    final p = _run.profile;
    final pacerText = switch (_run.pacer) {
      GhostPacer(:final run) =>
        'Duch: ${formatDate(run.startedAt)}, ${formatDistance(run.distanceM, s.settings.unit)} ${s.settings.unit.label}',
      FormPacer() => p == null
          ? 'Pacer: zatím málo běhů — budu hlásit jen čas a vzdálenost'
          : 'Pacer: tvoje forma z ${p.basedOnRuns} běhů'
              '${s.settings.pacerTarget == PacerTarget.improve ? ', o 2 % rychleji' : ''}',
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(gpsText,
            style: TextStyle(fontSize: 22, color: _run.hasGpsFix ? accent : Colors.orangeAccent)),
        const SizedBox(height: 24),
        Text(pacerText, style: const TextStyle(fontSize: 18)),
        const SizedBox(height: 12),
        Row(children: [
          Expanded(
            child: OutlinedButton(
                onPressed: () => _run.choosePacer(const FormPacer()), child: const Text('Forma')),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: OutlinedButton(onPressed: () => _pickGhost(context), child: const Text('Duch')),
          ),
        ]),
        const Spacer(),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(120)),
          // Start jde i bez fixu; body se začnou počítat, jakmile je přesnost dost dobrá.
          onPressed: _run.start,
          child: const Text('START', style: TextStyle(fontSize: 40)),
        ),
      ],
    );
  }

  Future<void> _pickGhost(BuildContext context) async {
    final s = App.of(context);
    final runs = await s.db.watchRuns().first;
    final near = await _run.ghostCandidates(runs);
    if (!context.mounted) return;
    final unit = s.settings.unit;
    await showModalBottomSheet<void>(
      context: context,
      builder: (c) => SafeArea(
        child: near.isEmpty
            ? const Padding(
                padding: EdgeInsets.all(24),
                child: Text('Odtud jsi ještě neběžel(a) — duch potřebuje běh se startem do 300 m.',
                    style: TextStyle(fontSize: 18)),
              )
            : ListView(
                shrinkWrap: true,
                children: [
                  for (final r in near)
                    ListTile(
                      minTileHeight: 64,
                      title: Text('${formatDate(r.startedAt)} · ${formatDistance(r.distanceM, unit)} ${unit.label}',
                          style: const TextStyle(fontSize: 18)),
                      subtitle: Text('${formatDuration(r.movingTimeS)} · ${formatPace(r.avgPaceSPerKm, unit)}${unit.paceLabel}'),
                      onTap: () {
                        _run.choosePacer(GhostPacer(r));
                        Navigator.pop(c);
                      },
                    ),
                ],
              ),
      ),
    );
  }

  Widget _countdown() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text('${_run.countdown}',
                  style: const TextStyle(fontSize: 220, fontWeight: FontWeight.w900, color: accent)),
            ),
          ),
          OutlinedButton(onPressed: _run.cancelCountdown, child: const Text('Zrušit')),
        ],
      );

  Widget _active(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    final tr = _run.tracker!;
    final now = DateTime.now();
    final paused = tr.state != RunState.running;

    String? pacerLine;
    Color pacerColor = Colors.white;
    final ghost = _run.ghostDeltaM;
    final target = _run.targetPace;
    if (ghost != null) {
      final m = ghost.abs().round();
      pacerLine = ghost >= 0 ? '$m m před duchem' : '$m m za duchem';
      pacerColor = ghost >= 0 ? accent : Colors.orangeAccent;
    } else if (target != null && tr.currentPace != null) {
      final d = (tr.currentPace! - target).round();
      pacerLine = d.abs() <= 3
          ? 'v plánu (${formatPace(target, unit)})'
          : d < 0
              ? '${-d} s rychleji než ${formatPace(target, unit)}'
              : '$d s pomaleji než ${formatPace(target, unit)}';
      pacerColor = d.abs() <= 3 ? accent : Colors.orangeAccent;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (paused)
          Container(
            color: Colors.orangeAccent,
            padding: const EdgeInsets.all(8),
            child: Text(tr.state == RunState.autoPaused ? 'AUTO-PAUZA' : 'PAUZA',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black)),
          ),
        if (!_run.hasGpsFix)
          const Text('Slabý GPS signál', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.orangeAccent)),
        Expanded(
          child: _showMap
              ? _liveMap(context)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigStat(formatDuration(tr.movingTimeS(now)), 'čas', size: 96),
                    BigStat(formatDistance(tr.distanceM, unit), unit.label, size: 96),
                    Row(children: [
                      Expanded(child: BigStat(formatPace(tr.currentPace, unit), 'tempo ${unit.paceLabel}', size: 64)),
                      Expanded(child: BigStat(formatPace(tr.avgPace(now), unit), 'průměr ${unit.paceLabel}', size: 64)),
                    ]),
                    if (pacerLine != null)
                      Text(pacerLine,
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: pacerColor)),
                  ],
                ),
        ),
        Row(children: [
          Expanded(
            flex: 2,
            child: FilledButton(
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(88)),
              onPressed: _run.togglePause,
              child: Text(paused ? 'Pokračovat' : 'Pauza', style: const TextStyle(fontSize: 28)),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(88)),
              onPressed: () => setState(() => _showMap = !_showMap),
              child: Text(_showMap ? 'Čísla' : 'Mapa'),
            ),
          ),
        ]),
        const SizedBox(height: 16),
        SlideToStop(onStop: _run.stop),
      ],
    );
  }

  Widget _liveMap(BuildContext context) {
    final s = App.of(context);
    final pts = toLatLng(_run.tracker!.points);
    final fix = _run.lastFix;
    final here = fix == null ? (pts.isEmpty ? null : pts.last) : LatLng(fix.lat, fix.lon);
    if (here == null) return const Center(child: Text('Čekám na polohu…'));
    // Mapa jede s běžcem; přiblížení si může nastavit sám.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        _map.move(here, _map.camera.zoom);
      } catch (_) {/* mapa ještě není vykreslená */}
    });
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: FlutterMap(
        mapController: _map,
        options: MapOptions(initialCenter: here, initialZoom: 16),
        children: [
          tileLayer(s.settings.mapLayer),
          PolylineLayer(polylines: [Polyline(points: pts, color: routeColor, strokeWidth: 5)]),
          MarkerLayer(markers: [
            Marker(
              point: here,
              width: 22,
              height: 22,
              child: Container(
                decoration: BoxDecoration(
                    color: accent, shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 3)),
              ),
            ),
          ]),
          attribution(s.settings.mapLayer),
        ],
      ),
    );
  }

  Widget _stopped(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    final tr = _run.tracker!;
    final now = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Běh zastaven', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
        const SizedBox(height: 24),
        BigStat('${formatDistance(tr.distanceM, unit)} ${unit.label}', 'vzdálenost', size: 64),
        const SizedBox(height: 16),
        BigStat(formatDuration(tr.movingTimeS(now)), 'čas', size: 64),
        const Spacer(),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(88)),
          onPressed: () async {
            final nav = Navigator.of(context);
            final id = await _run.save();
            if (id == null) {
              nav.pop();
            } else {
              nav.pushReplacement(MaterialPageRoute(builder: (_) => DetailScreen(runId: id)));
            }
          },
          child: const Text('Uložit', style: TextStyle(fontSize: 28)),
        ),
        const SizedBox(height: 12),
        OutlinedButton(onPressed: _run.continueRun, child: const Text('Pokračovat v běhu')),
        const SizedBox(height: 12),
        OutlinedButton(
          style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFFFF5252)),
          onPressed: () async {
            final nav = Navigator.of(context);
            if (await confirm(context, 'Zahodit běh?', 'Zahodit', body: 'Běh se neuloží.')) {
              await _run.discard();
              nav.pop();
            }
          },
          child: const Text('Zahodit'),
        ),
      ],
    );
  }
}
