import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../core/db.dart';
import '../core/units.dart';

/// Měsíční report jako PNG: km/týden, trend tempa, nejdelší běh.
/// Vzniká jen na vyžádání v Historii, uživatel ho sám sdílí.
Future<Uint8List> renderMonthReport(
    DateTime month, List<RunRow> runs, DistanceUnit unit) async {
  const w = 1080.0, h = 1350.0;
  const bg = Color(0xFF0B0B0B), fg = Colors.white, dim = Color(0xFF9E9E9E), accent = Color(0xFFC6FF00);
  final rec = ui.PictureRecorder();
  final c = Canvas(rec, const Rect.fromLTWH(0, 0, w, h));
  c.drawRect(const Rect.fromLTWH(0, 0, w, h), Paint()..color = bg);

  void text(String s, double x, double y, double size,
      {Color color = fg, FontWeight weight = FontWeight.w600, double maxW = w - 120}) {
    final tp = TextPainter(
      text: TextSpan(text: s, style: TextStyle(color: color, fontSize: size, fontWeight: weight)),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxW);
    tp.paint(c, Offset(x, y));
  }

  final sorted = [...runs]..sort((a, b) => a.startedAt.compareTo(b.startedAt));
  final totalM = sorted.fold<double>(0, (s, r) => s + r.distanceM);
  final totalT = sorted.fold<double>(0, (s, r) => s + r.movingTimeS);
  final longest = sorted.isEmpty ? null : sorted.reduce((a, b) => a.distanceM >= b.distanceM ? a : b);

  text('Běhánek', 60, 56, 34, color: accent, weight: FontWeight.w800);
  text('${czechMonths[month.month - 1]} ${month.year}', 60, 100, 64, weight: FontWeight.w800);

  final stats = [
    ('${formatDistance(totalM, unit, decimals: 1)} ${unit.label}', 'celkem'),
    ('${sorted.length}', 'běhů'),
    (totalM > 0 ? formatPace(totalT / (totalM / 1000), unit) : '–', 'tempo ${unit.paceLabel}'),
    (longest == null ? '–' : '${formatDistance(longest.distanceM, unit, decimals: 1)} ${unit.label}',
        'nejdelší'),
  ];
  for (var i = 0; i < stats.length; i++) {
    final x = 60 + (i % 2) * 490.0, y = 220 + (i ~/ 2) * 150.0;
    text(stats[i].$1, x, y, 64, weight: FontWeight.w800);
    text(stats[i].$2, x, y + 80, 28, color: dim, weight: FontWeight.w500);
  }

  // km/týden (týdny od pondělí, které zasahují do měsíce)
  text('${unit.label} za týden', 60, 540, 30, color: dim);
  final weeks = <DateTime, double>{};
  var wk = DateTime(month.year, month.month, 1);
  wk = wk.subtract(Duration(days: wk.weekday - 1));
  final monthEnd = DateTime(month.year, month.month + 1, 1);
  while (wk.isBefore(monthEnd)) {
    weeks[wk] = 0;
    wk = DateTime(wk.year, wk.month, wk.day + 7);
  }
  for (final r in sorted) {
    final d = DateTime(r.startedAt.year, r.startedAt.month, r.startedAt.day);
    final key = d.subtract(Duration(days: d.weekday - 1));
    weeks.update(key, (v) => v + r.distanceM / unit.meters, ifAbsent: () => r.distanceM / unit.meters);
  }
  final maxWeek = weeks.values.fold<double>(1, (m, v) => v > m ? v : m);
  const chartTop = 600.0, chartH = 280.0;
  final bw = (w - 120) / weeks.length;
  var i = 0;
  for (final e in weeks.entries) {
    final bh = chartH * e.value / maxWeek;
    final x = 60 + i * bw;
    c.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(x + 12, chartTop + chartH - bh, bw - 24, bh), const Radius.circular(8)),
        Paint()..color = accent);
    text(e.value.toStringAsFixed(1).replaceAll('.', ','), x + 12, chartTop + chartH - bh - 40, 26);
    text('${e.key.day}. ${e.key.month}.', x + 12, chartTop + chartH + 10, 22, color: dim);
    i++;
  }

  // trend tempa: průměrné tempo každého běhu, níž = rychleji
  text('Trend tempa', 60, 960, 30, color: dim);
  final paces = [for (final r in sorted) if (r.avgPaceSPerKm != null) r.avgPaceSPerKm!];
  if (paces.length >= 2) {
    final lo = paces.reduce((a, b) => a < b ? a : b), hi = paces.reduce((a, b) => a > b ? a : b);
    final span = (hi - lo).clamp(10, double.infinity);
    const top = 1020.0, ph = 230.0;
    final path = Path();
    for (var j = 0; j < paces.length; j++) {
      final x = 60 + (w - 120) * j / (paces.length - 1);
      final y = top + ph * (paces[j] - lo) / span;
      j == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
      c.drawCircle(Offset(x, y), 7, Paint()..color = accent);
    }
    c.drawPath(
        path,
        Paint()
          ..color = accent
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5);
    text(formatPace(lo, unit), w - 200, top - 40, 24, color: dim);
    text(formatPace(hi, unit), w - 200, top + ph + 12, 24, color: dim);
  } else {
    text('Málo běhů na trend.', 60, 1020, 28, color: dim);
  }

  final img = await rec.endRecording().toImage(w.toInt(), h.toInt());
  final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
  return bytes!.buffer.asUint8List();
}
