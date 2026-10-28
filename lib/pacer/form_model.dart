import '../core/track.dart';
import '../gps/geo.dart';

/// Minulý běh tak, jak ho potřebuje model formy.
class PastRun {
  final int id;
  final DateTime startedAt;
  final double distanceM;

  /// Tempo per km (s/km), index = km.
  final List<double> kmPaces;

  const PastRun(this.id, this.startedAt, this.distanceM, this.kmPaces);
}

/// "Tvoje typické tempo na k-tém km" — medián z podobných nedávných běhů.
class FormProfile {
  final List<double> kmPaces;
  final int basedOnRuns;

  /// Násobek tempa: 1.0 = jen držet, 0.98 = o 2 % rychleji.
  final double factor;

  const FormProfile(this.kmPaces, this.basedOnRuns, {this.factor = 1.0});

  double targetPaceAt(double distanceM) {
    final k = (distanceM / 1000).floor().clamp(0, kmPaces.length - 1);
    return kmPaces[k] * factor;
  }

  FormProfile withFactor(double f) => FormProfile(kmPaces, basedOnRuns, factor: f);

  static const minRuns = 3;
  static const maxRuns = 10;
  static const window = Duration(days: 60);

  /// Vrací null, když historie nestačí — pacer pak žádné cíle nevymýšlí.
  ///
  /// Délka dnešního běhu předem není známá, proto "podobná délka" = ±30 %
  /// kolem mediánu délek posledních běhů (typický běh daného člověka).
  static FormProfile? build(List<PastRun> runs, DateTime now) {
    final recent = runs
        .where((r) => now.difference(r.startedAt) <= window && r.kmPaces.isNotEmpty)
        .toList()
      ..sort((a, b) => b.startedAt.compareTo(a.startedAt));
    if (recent.length < minRuns) return null;
    final ref = median(recent.take(maxRuns).map((r) => r.distanceM).toList());
    final similar = recent
        .where((r) => (r.distanceM - ref).abs() <= ref * 0.3)
        .take(maxRuns)
        .toList();
    if (similar.length < minRuns) return null;
    final maxKm = similar.map((r) => r.kmPaces.length).reduce((a, b) => a > b ? a : b);
    final profile = <double>[];
    for (var k = 0; k < maxKm; k++) {
      final vals = [for (final r in similar) if (r.kmPaces.length > k) r.kmPaces[k]];
      // Kilometr, který uběhla jen menšina běhů, už není "typický" — držíme předchozí.
      if (vals.length < minRuns && profile.isNotEmpty) break;
      profile.add(median(vals));
    }
    return FormProfile(profile, similar.length);
  }
}

double median(List<double> xs) {
  final s = List.of(xs)..sort();
  final n = s.length;
  if (n == 0) return double.nan;
  return n.isOdd ? s[n ~/ 2] : (s[n ~/ 2 - 1] + s[n ~/ 2]) / 2;
}

/// Běh proti jednomu konkrétnímu minulému běhu. Porovnává se v pohybovém čase,
/// aby čekání na semaforu neposlalo ducha napřed.
class Ghost {
  final int runId;
  final DateTime ghostDate;
  final List<double> _times = [0];
  final List<double> _dists = [0];

  Ghost(this.runId, this.ghostDate, List<TrackPt> pts) {
    var dist = 0.0;
    var moving = 0.0;
    for (var i = 1; i < pts.length; i++) {
      final dt = (pts[i].t - pts[i - 1].t) / 1000.0;
      if (dt <= 0 || dt > segmentGapS) continue;
      final d = distPts(pts[i - 1], pts[i]);
      if (d / dt < minMovingSpeedMps) continue;
      dist += d;
      moving += dt;
      _times.add(moving);
      _dists.add(dist);
    }
  }

  double get totalDistanceM => _dists.last;

  /// Kde byl duch v daném pohybovém čase (lineární interpolace, binární hledání).
  double distanceAt(double movingTimeS) {
    if (movingTimeS >= _times.last) return _dists.last;
    var lo = 0, hi = _times.length - 1;
    while (hi - lo > 1) {
      final mid = (lo + hi) >> 1;
      if (_times[mid] <= movingTimeS) {
        lo = mid;
      } else {
        hi = mid;
      }
    }
    final span = _times[hi] - _times[lo];
    final f = span > 0 ? (movingTimeS - _times[lo]) / span : 0.0;
    return _dists[lo] + (_dists[hi] - _dists[lo]) * f;
  }
}
