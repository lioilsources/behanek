import 'package:intl/intl.dart';

import '../l10n/l10n.dart';

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

/// Číslo s pevným počtem desetinných míst v jazyce appky: 5,23 / 5.23.
String formatDecimal(double v, int decimals, [String? locale]) =>
    NumberFormat.decimalPatternDigits(locale: locale ?? localeTag, decimalDigits: decimals).format(v);

/// 5234 m -> "5,23" (km).
String formatDistance(double meters, DistanceUnit unit, {int decimals = 2}) =>
    formatDecimal(meters / unit.meters, decimals);

String formatDate(DateTime d) => DateFormat.yMd(localeTag).format(d);

String formatDateTime(DateTime d) => DateFormat.yMd(localeTag).add_Hm().format(d);

/// "říjen 2026"
String formatMonth(DateTime d) => DateFormat.yMMMM(localeTag).format(d);

/// "26. 10." — popisek týdne v reportu.
String formatDayMonth(DateTime d) => DateFormat.Md(localeTag).format(d);
