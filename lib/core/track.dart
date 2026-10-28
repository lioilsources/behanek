/// Čisté datové typy nezávislé na databázi — sdílí je GPS, pacer, export i testy.
class TrackPt {
  /// ms od startu běhu (včetně pauz).
  final int t;
  final double lat;
  final double lon;
  final double? alt;
  final double? accuracy;
  final double? speed;

  const TrackPt({
    required this.t,
    required this.lat,
    required this.lon,
    this.alt,
    this.accuracy,
    this.speed,
  });
}

class Split {
  final int index;
  final double paceSPerKm;
  final double elevDeltaM;
  const Split(this.index, this.paceSPerKm, this.elevDeltaM);
}

class RunStats {
  final double distanceM;
  final double movingTimeS;
  final double elapsedTimeS;
  final double elevGainM;
  final double elevLossM;
  final List<Split> splits;

  const RunStats({
    required this.distanceM,
    required this.movingTimeS,
    required this.elapsedTimeS,
    required this.elevGainM,
    required this.elevLossM,
    required this.splits,
  });

  double? get avgPaceSPerKm =>
      distanceM > 50 ? movingTimeS / (distanceM / 1000.0) : null;
}
