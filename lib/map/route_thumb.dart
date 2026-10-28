import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../core/track.dart';
import 'tiles.dart';

/// Miniatura trasy bez mapových dlaždic — jen tvar, rychlá i v dlouhém seznamu.
class RouteThumb extends StatelessWidget {
  final List<TrackPt> points;
  final double size;
  const RouteThumb(this.points, {super.key, this.size = 56});

  @override
  Widget build(BuildContext context) =>
      CustomPaint(size: Size.square(size), painter: _ThumbPainter(points));
}

class _ThumbPainter extends CustomPainter {
  final List<TrackPt> pts;
  _ThumbPainter(this.pts);

  @override
  void paint(Canvas canvas, Size size) {
    if (pts.length < 2) return;
    var minLat = pts.first.lat, maxLat = minLat, minLon = pts.first.lon, maxLon = minLon;
    for (final p in pts) {
      if (p.lat < minLat) minLat = p.lat;
      if (p.lat > maxLat) maxLat = p.lat;
      if (p.lon < minLon) minLon = p.lon;
      if (p.lon > maxLon) maxLon = p.lon;
    }
    // Délka stupně zeměpisné délky se zmenšuje k pólům — hrubá korekce tvaru.
    final lonScale = math.cos((minLat + maxLat) / 2 * math.pi / 180);
    final w = (maxLon - minLon) * lonScale, h = maxLat - minLat;
    final span = (w > h ? w : h);
    if (span == 0) return;
    const pad = 4.0;
    final s = (size.shortestSide - 2 * pad) / span;
    final ox = (size.width - w * s) / 2, oy = (size.height - h * s) / 2;
    final path = Path();
    final step = (pts.length / 150).ceil().clamp(1, 1 << 20);
    for (var i = 0; i < pts.length; i += step) {
      final x = ox + (pts[i].lon - minLon) * lonScale * s;
      final y = oy + (maxLat - pts[i].lat) * s;
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    canvas.drawPath(
        path,
        Paint()
          ..color = routeColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..strokeJoin = StrokeJoin.round);
  }

  @override
  bool shouldRepaint(_ThumbPainter old) => old.pts != pts;
}
