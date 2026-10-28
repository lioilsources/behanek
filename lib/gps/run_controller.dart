import 'dart:async';

import 'package:flutter/foundation.dart';

import '../audio/audio_cues.dart';
import '../core/db.dart';
import '../core/settings.dart';
import '../pacer/cue.dart';
import '../pacer/form_model.dart';
import 'geo.dart';
import 'location_source.dart';
import 'run_tracker.dart';

enum Phase { idle, countdown, active, stopped }

/// Čím pacer dnes měří: formou z historie, nebo duchem konkrétního běhu.
sealed class PacerChoice {
  const PacerChoice();
}

class FormPacer extends PacerChoice {
  const FormPacer();
}

class GhostPacer extends PacerChoice {
  final RunRow run;
  const GhostPacer(this.run);
}

/// Řídí jeden běh: GPS -> tracker -> průběžné ukládání -> cue v intervalech.
class RunController extends ChangeNotifier {
  final AppDb db;
  final AppSettings settings;
  final AudioCues audio;

  RunController(this.db, this.settings, this.audio);

  Phase phase = Phase.idle;
  int countdown = 0;
  RunTracker? tracker;
  int? _runId;
  int _flushed = 0;

  StreamSubscription<GpsFix>? _gps;
  Timer? _ticker;
  GpsFix? lastFix;

  FormProfile? profile;
  Ghost? ghost;
  PacerChoice pacer = const FormPacer();
  double _nextCueAt = 0;

  DateTime get now => DateTime.now();

  bool get hasGpsFix => lastFix != null && lastFix!.accuracy <= 25;

  /// Zapne GPS na obrazovce Běh, aby byl signál, než běžec zmáčkne start.
  Future<LocationAccess> warmUp() async {
    final access = await LocationSource.ensurePermission();
    if (access != LocationAccess.granted) return access;
    _gps ??= LocationSource.stream().listen(_onFix, onError: (_) {});
    profile = FormProfile.build(await db.pastRuns(), now);
    notifyListeners();
    return access;
  }

  /// Opuštění obrazovky bez startu — GPS zase vypnout.
  Future<void> coolDown() async {
    if (phase != Phase.idle) return;
    await _gps?.cancel();
    _gps = null;
    lastFix = null;
  }

  Future<void> choosePacer(PacerChoice c) async {
    pacer = c;
    ghost = null;
    if (c is GhostPacer) {
      ghost = Ghost(c.run.id, c.run.startedAt, await db.pointsOf(c.run.id));
    }
    notifyListeners();
  }

  /// Minulé běhy se startem do 300 m od současné polohy — kandidáti na ducha.
  Future<List<RunRow>> ghostCandidates(List<RunRow> runs) async {
    final fix = lastFix;
    if (fix == null) return [];
    final out = <RunRow>[];
    for (final r in runs.take(100)) {
      final p = await db.firstPointOf(r.id);
      if (p == null) continue;
      final d = haversineM(fix.lat, fix.lon, p.lat, p.lon);
      if (d <= 300) out.add(r);
    }
    return out;
  }

  Future<void> start() async {
    if (phase != Phase.idle) return;
    phase = Phase.countdown;
    await audio.setLanguage(settings.cueLang);
    for (countdown = 3; countdown > 0; countdown--) {
      notifyListeners();
      unawaited(audio.countdownBeep());
      await Future.delayed(const Duration(seconds: 1));
      if (phase != Phase.countdown) return; // zrušeno během odpočtu
    }
    unawaited(audio.countdownBeep(last: true).then((_) => audio.releaseFocus()));
    final startedAt = now;
    tracker = RunTracker(startedAt: startedAt, autoPauseEnabled: settings.autoPause);
    _runId = await db.startRun(startedAt);
    _flushed = 0;
    _nextCueAt = settings.cueIntervalS.toDouble();
    phase = Phase.active;
    if (settings.metronome) audio.startMetronome(settings.metronomeBpm);
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    notifyListeners();
  }

  void cancelCountdown() {
    if (phase == Phase.countdown) {
      phase = Phase.idle;
      notifyListeners();
    }
  }

  void _onFix(GpsFix fix) {
    lastFix = fix;
    final tr = tracker;
    if (phase == Phase.active && tr != null) {
      final before = tr.state;
      tr.addFix(fix);
      if (before != tr.state) _onStateChanged(tr.state);
    }
    notifyListeners();
  }

  void _onStateChanged(RunState s) {
    if (s == RunState.running && settings.metronome) {
      audio.startMetronome(settings.metronomeBpm);
    } else if (s != RunState.running) {
      audio.stopMetronome();
    }
  }

  void togglePause() {
    final tr = tracker;
    if (tr == null || phase != Phase.active) return;
    if (tr.state == RunState.running) {
      tr.pause(now);
    } else {
      tr.resume(now);
    }
    _onStateChanged(tr.state);
    notifyListeners();
  }

  Future<void> _tick() async {
    final tr = tracker;
    if (tr == null) return;
    if (tr.points.length - _flushed >= 10) await _flush();
    final moving = tr.movingTimeS(now);
    if (tr.state == RunState.running && moving >= _nextCueAt) {
      _nextCueAt += settings.cueIntervalS;
      unawaited(audio.play(currentCue(), settings.cueMode));
    }
    notifyListeners();
  }

  double? get targetPace {
    final p = profile;
    final tr = tracker;
    if (p == null || tr == null || pacer is! FormPacer) return null;
    final f = settings.pacerTarget == PacerTarget.improve ? 0.98 : 1.0;
    return p.withFactor(f).targetPaceAt(tr.distanceM);
  }

  /// Kladné = napřed před duchem.
  double? get ghostDeltaM {
    final g = ghost;
    final tr = tracker;
    if (g == null || tr == null) return null;
    return tr.distanceM - g.distanceAt(tr.movingTimeS(now));
  }

  Cue currentCue() {
    final tr = tracker!;
    return CueBuilder(settings.cueLang, settings.unit).build(
      distanceM: tr.distanceM,
      movingTimeS: tr.movingTimeS(now),
      currentPace: tr.currentPace,
      targetPace: targetPace,
      ghostDeltaM: ghostDeltaM,
    );
  }

  Future<void> _flush() async {
    final tr = tracker;
    final id = _runId;
    if (tr == null || id == null) return;
    final pending = tr.points.sublist(_flushed);
    _flushed = tr.points.length;
    await db.appendPoints(id, pending);
  }

  /// Slide-to-stop: zastaví záznam, čeká na rozhodnutí uložit / zahodit / pokračovat.
  void stop() {
    final tr = tracker;
    if (tr == null) return;
    if (tr.state == RunState.running) tr.pause(now);
    audio.stopMetronome();
    phase = Phase.stopped;
    notifyListeners();
  }

  void continueRun() {
    if (phase != Phase.stopped) return;
    phase = Phase.active;
    tracker?.resume(now);
    _onStateChanged(RunState.running);
    notifyListeners();
  }

  Future<int?> save() async {
    final tr = tracker;
    final id = _runId;
    if (tr == null || id == null) return null;
    await _flush();
    final stats = tr.finish(now);
    if (tr.points.length < 2) {
      await db.discardRun(id);
      await _reset();
      return null;
    }
    await db.finishRun(id, stats, endedAt: now);
    await _reset();
    return id;
  }

  Future<void> discard() async {
    final id = _runId;
    if (id != null) await db.discardRun(id);
    await _reset();
  }

  Future<void> _reset() async {
    _ticker?.cancel();
    _ticker = null;
    audio.stopMetronome();
    await _gps?.cancel();
    _gps = null;
    tracker = null;
    _runId = null;
    lastFix = null;
    ghost = null;
    pacer = const FormPacer();
    phase = Phase.idle;
    notifyListeners();
  }
}
