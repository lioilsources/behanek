import 'dart:collection';

import '../core/track.dart';
import 'geo.dart';

enum RunState { running, paused, autoPaused }

class GpsFix {
  final DateTime time;
  final double lat;
  final double lon;
  final double? alt;
  final double accuracy;

  /// Rychlost hlášená systémem; záporná/null = neznámá.
  final double? speed;

  const GpsFix({
    required this.time,
    required this.lat,
    required this.lon,
    this.alt,
    required this.accuracy,
    this.speed,
  });
}

/// Živý výpočet běhu. Čistá logika bez platformy — čas přichází zvenku,
/// takže jde testovat i přehrát z GPX.
class RunTracker {
  final DateTime startedAt;
  final bool autoPauseEnabled;

  RunState _state = RunState.running;
  RunState get state => _state;

  double distanceM = 0;
  final elevation = ElevationAccumulator();
  final _splits = SplitAccumulator(1000);
  List<Split> get splits => _splits.splits;

  /// Body k uložení (jen přijaté, mimo pauzu).
  final List<TrackPt> points = [];

  /// Poslední přijatý bod aktuálního úseku; po pauze null = nový úsek.
  TrackPt? _segmentLast;

  double? _smoothedSpeed;
  DateTime? _slowSince;
  int _fastFixes = 0;

  // Pohybový čas se počítá z hodin, aby displej tikal i bez GPS bodů.
  double _movingAccumS = 0;
  DateTime? _runningSince;

  // (pohybový čas, vzdálenost) pro klouzavé tempo za posledních ~200 m.
  final _window = ListQueue<(double, double)>();
  static const rollingWindowM = 200.0;

  /// Poslední přesnost GPS (i zahozeného bodu) pro indikátor signálu.
  double? lastAccuracy;

  RunTracker({required this.startedAt, this.autoPauseEnabled = false}) {
    _runningSince = startedAt;
  }

  double movingTimeS(DateTime now) {
    final since = _runningSince;
    return _movingAccumS +
        (since == null ? 0 : now.difference(since).inMilliseconds / 1000.0);
  }

  double elapsedTimeS(DateTime now) => now.difference(startedAt).inMilliseconds / 1000.0;

  double? avgPace(DateTime now) =>
      distanceM > 50 ? movingTimeS(now) / (distanceM / 1000.0) : null;

  /// Tempo za posledních ~200 m (s/km), nebo null, dokud není z čeho.
  double? get currentPace {
    if (_window.length < 2 || _state != RunState.running) return null;
    final last = _window.last;
    if (last.$2 < 50) return null;
    final first = _window.first;
    final dd = last.$2 - first.$2;
    if (dd < 30) return null;
    return (last.$1 - first.$1) / (dd / 1000.0);
  }

  void pause(DateTime now) {
    if (_state == RunState.running) _stopClock(now);
    _state = RunState.paused;
    _segmentLast = null;
  }

  void resume(DateTime now) {
    if (_state == RunState.running) return;
    _state = RunState.running;
    _runningSince = now;
    _slowSince = null;
    _segmentLast = null;
  }

  void _stopClock(DateTime now) {
    _movingAccumS = movingTimeS(now);
    _runningSince = null;
  }

  /// Zpracuje GPS bod. Vrací true, pokud byl přijat do trasy.
  bool addFix(GpsFix fix) {
    lastAccuracy = fix.accuracy;
    if (fix.accuracy > maxAccuracyM) return false;
    if (_state == RunState.paused) return false;

    final t = fix.time.difference(startedAt).inMilliseconds;
    final pt = TrackPt(
      t: t,
      lat: fix.lat,
      lon: fix.lon,
      alt: fix.alt,
      accuracy: fix.accuracy,
      speed: fix.speed,
    );

    final prev = _segmentLast;
    double? implied;
    double d = 0;
    double dt = 0;
    if (prev != null) {
      dt = (pt.t - prev.t) / 1000.0;
      if (dt <= 0) return false;
      d = distPts(prev, pt);
      implied = d / dt;
    }
    final raw = (fix.speed != null && fix.speed! >= 0) ? fix.speed! : implied;
    if (raw != null) {
      _smoothedSpeed = _smoothedSpeed == null ? raw : _smoothedSpeed! * 0.6 + raw * 0.4;
    }
    final speed = _smoothedSpeed ?? 0;

    if (autoPauseEnabled) _updateAutoPause(fix.time, speed);
    if (_state == RunState.autoPaused) {
      _segmentLast = null;
      return false;
    }

    points.add(pt);
    elevation.add(fix.alt);
    if (prev != null && dt <= segmentGapS && speed >= minMovingSpeedMps &&
        implied! >= minMovingSpeedMps) {
      final moving = movingTimeS(fix.time);
      _splits.advance(distanceM, moving - dt, d, dt, fix.alt);
      distanceM += d;
      _window.addLast((moving, distanceM));
      while (_window.length > 2 && distanceM - _window.elementAt(1).$2 >= rollingWindowM) {
        _window.removeFirst();
      }
    }
    _segmentLast = pt;
    return true;
  }

  void _updateAutoPause(DateTime now, double speed) {
    if (_state == RunState.running) {
      if (speed < minMovingSpeedMps) {
        _slowSince ??= now;
        if (now.difference(_slowSince!).inSeconds >= 4) {
          // Odečteme čas stání, který už hodiny započítaly.
          _stopClock(_slowSince!);
          _state = RunState.autoPaused;
          _window.clear();
        }
      } else {
        _slowSince = null;
      }
    } else if (_state == RunState.autoPaused) {
      if (speed > 1.0) {
        _fastFixes++;
        if (_fastFixes >= 2) {
          _fastFixes = 0;
          _state = RunState.running;
          _runningSince = now;
          _slowSince = null;
        }
      } else {
        _fastFixes = 0;
      }
    }
  }

  RunStats finish(DateTime now) {
    if (_state == RunState.running) _stopClock(now);
    return RunStats(
      distanceM: distanceM,
      movingTimeS: _movingAccumS,
      elapsedTimeS: elapsedTimeS(now),
      elevGainM: elevation.gain,
      elevLossM: elevation.loss,
      splits: _splits.finish(distanceM, _movingAccumS, points.isEmpty ? null : points.last.alt),
    );
  }
}
