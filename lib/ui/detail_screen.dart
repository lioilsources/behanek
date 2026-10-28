import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import '../core/db.dart';
import '../core/settings.dart';
import '../core/track.dart';
import '../core/units.dart';
import '../export/share.dart';
import '../gps/geo.dart';
import '../map/tiles.dart';
import 'app.dart';
import 'history_screen.dart' show thumbCache;
import 'trim_screen.dart';

class DetailScreen extends StatefulWidget {
  final int runId;
  const DetailScreen({super.key, required this.runId});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<TrackPt>? _pts;
  MapLayer? _layer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pts ?? _load();
  }

  Future<void> _load() async {
    final pts = await App.of(context).db.pointsOf(widget.runId);
    if (mounted) setState(() => _pts = pts);
  }

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    return StreamBuilder<RunRow?>(
      stream: s.db.watchRun(widget.runId),
      builder: (context, snap) {
        final r = snap.data;
        if (r == null) return const Scaffold();
        final pts = _pts;
        return Scaffold(
          appBar: AppBar(title: Text(formatDateTime(r.startedAt))),
          body: pts == null
              ? const SizedBox.shrink()
              : ListView(
                  padding: const EdgeInsets.only(bottom: 32),
                  children: [
                    if (pts.length >= 2) _map(pts, _layer ?? s.settings.mapLayer, unit),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Wrap(
                        spacing: 32,
                        runSpacing: 16,
                        children: [
                          BigStat(formatDistance(r.distanceM, unit), unit.label, size: 44),
                          BigStat(formatDuration(r.movingTimeS), 'čas', size: 44),
                          BigStat(formatPace(r.avgPaceSPerKm, unit), 'tempo ${unit.paceLabel}', size: 44),
                          BigStat('+${r.elevGainM.round()} / −${r.elevLossM.round()}', 'převýšení m',
                              size: 44),
                        ],
                      ),
                    ),
                    if (r.source == 'gpx_import')
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Importováno z GPX', style: TextStyle(color: Colors.white54)),
                      ),
                    _section('Splity'),
                    _splits(pts, unit),
                    _section('Tempo'),
                    _paceChart(pts, unit),
                    if (pts.any((p) => p.alt != null)) ...[
                      _section('Výška'),
                      _elevChart(pts, unit),
                    ],
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          OutlinedButton(
                              onPressed: () => shareRunGpx(s.db, r), child: const Text('Exportovat GPX')),
                          const SizedBox(height: 12),
                          OutlinedButton(
                            onPressed: pts.length < 2
                                ? null
                                : () async {
                                    final changed = await Navigator.push<bool>(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => TrimScreen(run: r, points: pts)));
                                    if (changed == true) {
                                      thumbCache.remove(r.id);
                                      await _load();
                                    }
                                  },
                            child: const Text('Oříznout začátek / konec'),
                          ),
                          const SizedBox(height: 12),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFFFF5252)),
                            onPressed: () async {
                              final nav = Navigator.of(context);
                              if (await confirm(context, 'Smazat běh?', 'Smazat',
                                  body: 'Běh a jeho trasa zmizí z telefonu. Nejde to vrátit.')) {
                                await s.db.deleteRun(r.id);
                                thumbCache.remove(r.id);
                                nav.pop();
                              }
                            },
                            child: const Text('Smazat běh'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _section(String t) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: Text(t, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
      );

  Widget _map(List<TrackPt> pts, MapLayer layer, DistanceUnit unit) {
    final line = toLatLng(pts);
    final markers = unitMarkers(pts, unitM: unit.meters);
    Marker dot(TrackPt p, Color color, String label) => Marker(
          point: toLatLng([p]).first,
          width: 30,
          height: 30,
          child: Container(
            decoration: BoxDecoration(
                color: color, shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
            alignment: Alignment.center,
            child: Text(label,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900, color: Colors.black)),
          ),
        );
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: FlutterMap(
            key: ValueKey(layer),
            options: MapOptions(
              initialCameraFit:
                  CameraFit.coordinates(coordinates: line, padding: const EdgeInsets.all(32)),
            ),
            children: [
              tileLayer(layer),
              PolylineLayer(polylines: [
                Polyline(points: line, color: Colors.black, strokeWidth: 7),
                Polyline(points: line, color: routeColor, strokeWidth: 4),
              ]),
              MarkerLayer(markers: [
                for (var i = 0; i < markers.length; i++) dot(markers[i], Colors.white, '${i + 1}'),
                dot(pts.first, accent, 'S'),
                dot(pts.last, const Color(0xFFFF5252), 'C'),
              ]),
              attribution(layer),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final l in MapLayer.values)
              TextButton(
                onPressed: () => setState(() => _layer = l),
                child: Text(l == MapLayer.satellite ? 'Satelit' : 'Turistická',
                    style: TextStyle(
                        decoration: l == layer ? TextDecoration.underline : null, fontSize: 16)),
              ),
          ],
        ),
      ],
    );
  }

  Widget _splits(List<TrackPt> pts, DistanceUnit unit) {
    final splits = computeStats(pts, splitLengthM: unit.meters).splits;
    if (splits.isEmpty) {
      return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Kratší než jeden úsek.'));
    }
    final best = splits.map((s) => s.paceSPerKm).reduce((a, b) => a < b ? a : b);
    final worst = splits.map((s) => s.paceSPerKm).reduce((a, b) => a > b ? a : b);
    return Column(
      children: [
        for (final sp in splits)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                SizedBox(
                    width: 48,
                    child: Text('${sp.index + 1}',
                        style: const TextStyle(fontSize: 18, color: Colors.white70))),
                SizedBox(
                  width: 80,
                  child: Text(formatPace(sp.paceSPerKm, unit),
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (_, c) {
                      // Delší pruh = rychlejší úsek.
                      final span = (worst - best).clamp(1, double.infinity);
                      final f = 0.35 + 0.65 * (worst - sp.paceSPerKm) / span;
                      return Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: c.maxWidth * f,
                          height: 14,
                          decoration: BoxDecoration(
                              color: sp.paceSPerKm == best ? accent : Colors.white38,
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 64,
                  child: Text('${sp.elevDeltaM >= 0 ? '+' : '−'}${sp.elevDeltaM.abs().round()} m',
                      textAlign: TextAlign.right, style: const TextStyle(color: Colors.white70)),
                ),
              ],
            ),
          ),
      ],
    );
  }

  /// Tempo po ~250m úsecích, ať graf není GPS šum.
  Widget _paceChart(List<TrackPt> pts, DistanceUnit unit) {
    final c = cumulative(pts);
    final spots = <FlSpot>[];
    var j = 0;
    for (var i = 0; i < c.length; i++) {
      while (j < i && c[i].$2 - c[j].$2 > 250) {
        j++;
      }
      final dd = c[i].$2 - c[j].$2;
      if (dd >= 150) {
        final pace = (c[i].$1 - c[j].$1) / (dd / 1000) * unit.meters / 1000;
        spots.add(FlSpot(c[i].$1 / 60, pace / 60));
      }
    }
    if (spots.length < 2) return const SizedBox(height: 40);
    final step = (spots.length / 300).ceil();
    final thin = [for (var i = 0; i < spots.length; i += step) spots[i]];
    final ys = thin.map((s) => s.y).toList()..sort();
    // Ořízneme extrémy (stání, GPS skoky), jinak by graf byl plochý.
    final lo = ys[(ys.length * 0.03).floor()] - 0.25;
    final hi = ys[(ys.length * 0.97).floor().clamp(0, ys.length - 1)] + 0.25;
    return _chart(
      thin.map((s) => FlSpot(s.x, s.y.clamp(lo, hi))).toList(),
      minY: lo,
      maxY: hi,
      inverted: true,
      leftLabel: (v) => formatDuration(v * 60),
      bottomLabel: (v) => '${v.round()} min',
    );
  }

  Widget _elevChart(List<TrackPt> pts, DistanceUnit unit) {
    final c = cumulative(pts).where((e) => e.$3 != null).toList();
    if (c.length < 2) return const SizedBox(height: 40);
    final step = (c.length / 300).ceil();
    final spots = [for (var i = 0; i < c.length; i += step) FlSpot(c[i].$2 / unit.meters, c[i].$3!)];
    final ys = spots.map((s) => s.y);
    final lo = ys.reduce((a, b) => a < b ? a : b) - 5, hi = ys.reduce((a, b) => a > b ? a : b) + 5;
    return _chart(spots,
        minY: lo,
        maxY: hi,
        leftLabel: (v) => '${v.round()}',
        bottomLabel: (v) => '${v.toStringAsFixed(1).replaceAll('.', ',')} ${unit.label}',
        fill: true);
  }

  Widget _chart(List<FlSpot> spots,
      {required double minY,
      required double maxY,
      bool inverted = false,
      bool fill = false,
      required String Function(double) leftLabel,
      required String Function(double) bottomLabel}) {
    // Graf tempa obracíme (rychlejší = výš) přes záporné hodnoty.
    final data = inverted ? [for (final s in spots) FlSpot(s.x, -s.y)] : spots;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 24, 0),
      child: SizedBox(
        height: 180,
        child: LineChart(LineChartData(
          minY: inverted ? -maxY : minY,
          maxY: inverted ? -minY : maxY,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineTouchData: const LineTouchData(enabled: false),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 48,
                getTitlesWidget: (v, meta) => (v == meta.min || v == meta.max)
                    ? Text(leftLabel(inverted ? -v : v),
                        style: const TextStyle(fontSize: 12, color: Colors.white70))
                    : const SizedBox.shrink(),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                getTitlesWidget: (v, meta) => (v == meta.min || v == meta.max)
                    ? Text(bottomLabel(v), style: const TextStyle(fontSize: 12, color: Colors.white70))
                    : const SizedBox.shrink(),
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: data,
              isCurved: false,
              color: accent,
              barWidth: 2.5,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: fill, color: accent.withValues(alpha: 0.15)),
            ),
          ],
        )),
      ),
    );
  }
}
