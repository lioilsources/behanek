/// Jednotky a formátování čísel pro obrazovku i hlasové cue.
enum DistanceUnit { km, mi }

extension DistanceUnitX on DistanceUnit {
  double get meters => this == DistanceUnit.km ? 1000.0 : 1609.344;
  String get label => this == DistanceUnit.km ? 'km' : 'mi';
  String get paceLabel => this == DistanceUnit.km ? '/km' : '/mi';
}

/// 3725 s -> "1:02:05", 605 s -> "10:05".
String formatDuration(num seconds) {
  final s = seconds.round().clamp(0, 1 << 31);
  final h = s ~/ 3600;
  final m = (s % 3600) ~/ 60;
  final sec = s % 60;
  final ss = sec.toString().padLeft(2, '0');
  if (h > 0) return '$h:${m.toString().padLeft(2, '0')}:$ss';
  return '$m:$ss';
}

/// Tempo v s/km převedené na zvolenou jednotku, "5:10". Neplatné -> "–:––".
String formatPace(double? secondsPerKm, DistanceUnit unit) {
  if (secondsPerKm == null || !secondsPerKm.isFinite || secondsPerKm <= 0) {
    return '–:––';
  }
  final perUnit = secondsPerKm * unit.meters / 1000.0;
  if (perUnit >= 60 * 60) return '–:––';
  return formatDuration(perUnit);
}

/// 5234 m -> "5,23" (km) s desetinnou čárkou.
String formatDistance(double meters, DistanceUnit unit, {int decimals = 2}) {
  return (meters / unit.meters).toStringAsFixed(decimals).replaceAll('.', ',');
}

String formatDate(DateTime d) => '${d.day}. ${d.month}. ${d.year}';

String formatDateTime(DateTime d) =>
    '${formatDate(d)} ${d.hour}:${d.minute.toString().padLeft(2, '0')}';

const czechMonths = [
  'leden', 'únor', 'březen', 'duben', 'květen', 'červen',
  'červenec', 'srpen', 'září', 'říjen', 'listopad', 'prosinec',
];
