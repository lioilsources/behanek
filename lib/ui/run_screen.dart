import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../core/settings.dart';
import '../core/units.dart';
import '../gps/location_source.dart';
import '../gps/run_controller.dart';
import '../gps/run_tracker.dart';
import '../l10n/l10n.dart';
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
          appBar: _run.phase == Phase.idle ? AppBar(title: Text(context.l.run_title)) : null,
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
    final l = context.l;
    final fix = _run.lastFix;
    if (_access != null && _access != LocationAccess.granted) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            switch (_access!) {
              LocationAccess.serviceOff => l.run_locationOff,
              _ => l.run_locationNeeded,
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
            child: Text(l.run_allowLocation),
          ),
        ],
      );
    }

    final gpsText = fix == null
        ? l.run_gpsSearching
        : fix.accuracy <= 10
            ? l.run_gpsExcellent(fix.accuracy.round())
            : fix.accuracy <= 25
                ? l.run_gpsGood(fix.accuracy.round())
                : l.run_gpsWeak(fix.accuracy.round());
    final p = _run.profile;
    final pacerText = switch (_run.pacer) {
      GhostPacer(:final run) =>
        l.run_ghostPacer(formatDate(run.startedAt),
            '${formatDistance(run.distanceM, s.settings.unit)} ${s.settings.unit.label}'),
      FormPacer() => p == null
          ? l.run_pacerFewRuns
          : s.settings.pacerTarget == PacerTarget.improve
              ? l.run_pacerFormImprove(p.basedOnRuns)
              : l.run_pacerForm(p.basedOnRuns),
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
                onPressed: () => _run.choosePacer(const FormPacer()), child: Text(l.run_form)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: OutlinedButton(onPressed: () => _pickGhost(context), child: Text(l.run_ghost)),
          ),
        ]),
        const Spacer(),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(120)),
          // Start jde i bez fixu; body se začnou počítat, jakmile je přesnost dost dobrá.
          onPressed: _run.start,
          child: Text(l.run_start, style: const TextStyle(fontSize: 40)),
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
            ? Padding(
                padding: const EdgeInsets.all(24),
                child: Text(c.l.run_noGhost, style: const TextStyle(fontSize: 18)),
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
          OutlinedButton(onPressed: _run.cancelCountdown, child: Text(context.l.run_cancel)),
        ],
      );

  Widget _active(BuildContext context) {
    final s = App.of(context);
    final l = context.l;
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
      pacerLine = ghost >= 0 ? l.run_aheadOfGhost(m) : l.run_behindGhost(m);
      pacerColor = ghost >= 0 ? accent : Colors.orangeAccent;
    } else if (target != null && tr.currentPace != null) {
      final d = (tr.currentPace! - target).round();
      pacerLine = d.abs() <= 3
          ? l.run_onTarget(formatPace(target, unit))
          : d < 0
              ? l.run_fasterThan(-d, formatPace(target, unit))
              : l.run_slowerThan(d, formatPace(target, unit));
      pacerColor = d.abs() <= 3 ? accent : Colors.orangeAccent;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (paused)
          Container(
            color: Colors.orangeAccent,
            padding: const EdgeInsets.all(8),
            child: Text(tr.state == RunState.autoPaused ? l.run_autoPaused : l.run_paused,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black)),
          ),
        if (!_run.hasGpsFix)
          Text(l.run_weakGps, textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.orangeAccent)),
        Expanded(
          child: _showMap
              ? _liveMap(context)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigStat(formatDuration(tr.movingTimeS(now)), l.stat_time, size: 96),
                    BigStat(formatDistance(tr.distanceM, unit), unit.label, size: 96),
                    Row(children: [
                      Expanded(child: BigStat(formatPace(tr.currentPace, unit), '${l.stat_pace} ${unit.paceLabel}', size: 64)),
                      Expanded(child: BigStat(formatPace(tr.avgPace(now), unit), '${l.stat_average} ${unit.paceLabel}', size: 64)),
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
              child: Text(paused ? l.run_resume : l.run_pause, style: const TextStyle(fontSize: 28)),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(88)),
              onPressed: () => setState(() => _showMap = !_showMap),
              child: Text(_showMap ? l.run_numbers : l.run_map),
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
    if (here == null) return Center(child: Text(context.l.run_waitingForLocation));
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
    final l = context.l;
    final unit = s.settings.unit;
    final tr = _run.tracker!;
    final now = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l.run_stopped, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
        const SizedBox(height: 24),
        BigStat('${formatDistance(tr.distanceM, unit)} ${unit.label}', l.stat_distance, size: 64),
        const SizedBox(height: 16),
        BigStat(formatDuration(tr.movingTimeS(now)), l.stat_time, size: 64),
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
          child: Text(l.run_save, style: const TextStyle(fontSize: 28)),
        ),
        const SizedBox(height: 12),
        OutlinedButton(onPressed: _run.continueRun, child: Text(l.run_continue)),
        const SizedBox(height: 12),
        OutlinedButton(
          style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFFFF5252)),
          onPressed: () async {
            final nav = Navigator.of(context);
            if (await confirm(context, l.run_discardTitle, l.run_discard, body: l.run_discardBody)) {
              await _run.discard();
              nav.pop();
            }
          },
          child: Text(l.run_discard),
        ),
      ],
    );
  }
}
