import 'dart:math' as math;

import '../core/track.dart';

const _earthRadiusM = 6371008.8;

double haversineM(double lat1, double lon1, double lat2, double lon2) {
  double rad(double d) => d * math.pi / 180.0;
  final dLat = rad(lat2 - lat1);
  final dLon = rad(lon2 - lon1);
  final a = math.pow(math.sin(dLat / 2), 2) +
      math.cos(rad(lat1)) * math.cos(rad(lat2)) * math.pow(math.sin(dLon / 2), 2);
  return 2 * _earthRadiusM * math.asin(math.min(1.0, math.sqrt(a)));
}

double distPts(TrackPt a, TrackPt b) => haversineM(a.lat, a.lon, b.lat, b.lon);

/// Body s horší přesností zahazujeme (plán: > ~25 m).
const maxAccuracyM = 25.0;

/// Pod touto rychlostí je pohyb považován za GPS drift při stání.
const minMovingSpeedMps = 0.5;

/// Mezera mezi body delší než tohle = přerušení (pauza) — nepočítá se vzdálenost ani čas.
const segmentGapS = 20.0;

/// Hystereze pro převýšení, aby GPS šum výšky nenafukoval stoupání.
const elevHysteresisM = 3.0;

class ElevationAccumulator {
  double? _ref;
  double gain = 0;
  double loss = 0;

  void add(double? alt) {
    if (alt == null) return;
    final ref = _ref;
    if (ref == null) {
      _ref = alt;
      return;
    }
    final d = alt - ref;
    if (d >= elevHysteresisM) {
      gain += d;
      _ref = alt;
    } else if (d <= -elevHysteresisM) {
      loss -= d;
      _ref = alt;
    }
  }
}

/// Spočítá statistiky z uložených bodů (import, ořez, obnova po pádu).
/// [splitLengthM] umožňuje splity po mílích pro zobrazení.
RunStats computeStats(List<TrackPt> pts, {double splitLengthM = 1000}) {
  if (pts.length < 2) {
    return const RunStats(
        distanceM: 0, movingTimeS: 0, elapsedTimeS: 0, elevGainM: 0, elevLossM: 0, splits: []);
  }
  final elev = ElevationAccumulator()..add(pts.first.alt);
  final splits = SplitAccumulator(splitLengthM);
  var dist = 0.0;
  var moving = 0.0;
  splits.start(pts.first.alt);
  for (var i = 1; i < pts.length; i++) {
    final a = pts[i - 1];
    final b = pts[i];
    elev.add(b.alt);
    final dt = (b.t - a.t) / 1000.0;
    if (dt <= 0 || dt > segmentGapS) continue;
    final d = distPts(a, b);
    if (d / dt < minMovingSpeedMps) continue;
    splits.advance(dist, moving, d, dt, b.alt);
    dist += d;
    moving += dt;
  }
  return RunStats(
    distanceM: dist,
    movingTimeS: moving,
    elapsedTimeS: (pts.last.t - pts.first.t) / 1000.0,
    elevGainM: elev.gain,
    elevLossM: elev.loss,
    splits: splits.finish(dist, moving, pts.last.alt),
  );
}

/// Skládá splity z přírůstků vzdálenosti/času s interpolací v bodě překročení hranice.
class SplitAccumulator {
  final double length;
  final List<Split> splits = [];
  double _lastBoundaryTime = 0;
  double? _lastBoundaryAlt;

  SplitAccumulator(this.length);

  void start(double? alt) => _lastBoundaryAlt = alt;

  /// [dist]/[time] jsou hodnoty před přírůstkem [d]/[dt].
  void advance(double dist, double time, double d, double dt, double? alt) {
    var next = (splits.length + 1) * length;
    while (dist + d >= next) {
      final frac = d > 0 ? (next - dist) / d : 1.0;
      final tCross = time + dt * frac;
      final pace = (tCross - _lastBoundaryTime) / (length / 1000.0);
      final elevDelta =
          (alt != null && _lastBoundaryAlt != null) ? alt - _lastBoundaryAlt! : 0.0;
      splits.add(Split(splits.length, pace, elevDelta));
      _lastBoundaryTime = tCross;
      _lastBoundaryAlt = alt ?? _lastBoundaryAlt;
      next += length;
    }
  }

  /// Přidá neúplný poslední úsek (≥ 200 m), tempo přepočtené na km.
  List<Split> finish(double dist, double time, double? alt) {
    final rest = dist - splits.length * length;
    if (rest >= 200) {
      final pace = (time - _lastBoundaryTime) / (rest / 1000.0);
      final elevDelta =
          (alt != null && _lastBoundaryAlt != null) ? alt - _lastBoundaryAlt! : 0.0;
      return [...splits, Split(splits.length, pace, elevDelta)];
    }
    return List.of(splits);
  }
}

/// Body trasy, kde padla každá celá jednotka vzdálenosti (km značky na mapě).
List<TrackPt> unitMarkers(List<TrackPt> pts, {double unitM = 1000}) {
  final out = <TrackPt>[];
  var dist = 0.0;
  var next = unitM;
  for (var i = 1; i < pts.length; i++) {
    final a = pts[i - 1], b = pts[i];
    final dt = (b.t - a.t) / 1000.0;
    if (dt <= 0 || dt > segmentGapS) continue;
    final d = distPts(a, b);
    if (d / dt < minMovingSpeedMps) continue;
    while (dist + d >= next) {
      final f = (next - dist) / d;
      out.add(TrackPt(
          t: (a.t + (b.t - a.t) * f).round(),
          lat: a.lat + (b.lat - a.lat) * f,
          lon: a.lon + (b.lon - a.lon) * f));
      next += unitM;
    }
    dist += d;
  }
  return out;
}

/// Řada (pohybový čas s, vzdálenost m, výška) pro grafy tempa a převýšení.
List<(double, double, double?)> cumulative(List<TrackPt> pts) {
  final out = <(double, double, double?)>[];
  if (pts.isEmpty) return out;
  var dist = 0.0, moving = 0.0;
  out.add((0, 0, pts.first.alt));
  for (var i = 1; i < pts.length; i++) {
    final a = pts[i - 1], b = pts[i];
    final dt = (b.t - a.t) / 1000.0;
    if (dt <= 0 || dt > segmentGapS) continue;
    final d = distPts(a, b);
    if (d / dt < minMovingSpeedMps) continue;
    dist += d;
    moving += dt;
    out.add((moving, dist, b.alt));
  }
  return out;
}
