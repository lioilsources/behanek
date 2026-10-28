import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import '../core/db.dart';
import '../core/track.dart';
import '../core/units.dart';
import '../gps/geo.dart';
import '../map/tiles.dart';
import 'app.dart';

/// Ořez GPS šumu na startu nebo zapomenutého vypnutí na konci.
class TrimScreen extends StatefulWidget {
  final RunRow run;
  final List<TrackPt> points;
  const TrimScreen({super.key, required this.run, required this.points});

  @override
  State<TrimScreen> createState() => _TrimScreenState();
}

class _TrimScreenState extends State<TrimScreen> {
  late RangeValues _range = RangeValues(0, widget.points.last.t.toDouble());
  bool _saving = false;

  List<TrackPt> get _kept =>
      widget.points.where((p) => p.t >= _range.start && p.t <= _range.end).toList();

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final unit = s.settings.unit;
    final kept = _kept;
    final stats = computeStats(kept);
    final all = toLatLng(widget.points);
    return Scaffold(
      appBar: AppBar(title: const Text('Oříznout běh')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  initialCameraFit:
                      CameraFit.coordinates(coordinates: all, padding: const EdgeInsets.all(32)),
                ),
                children: [
                  tileLayer(s.settings.mapLayer),
                  PolylineLayer(polylines: [
                    Polyline(points: all, color: Colors.white54, strokeWidth: 4),
                    if (kept.length >= 2)
                      Polyline(points: toLatLng(kept), color: routeColor, strokeWidth: 5),
                  ]),
                  attribution(s.settings.mapLayer),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Ponechat ${formatDuration(_range.start / 1000)} – ${formatDuration(_range.end / 1000)}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  RangeSlider(
                    values: _range,
                    min: 0,
                    max: widget.points.last.t.toDouble(),
                    onChanged: (v) => setState(() => _range = v),
                  ),
                  Text(
                    '${formatDistance(stats.distanceM, unit)} ${unit.label} · '
                    '${formatDuration(stats.movingTimeS)} · '
                    '${formatPace(stats.avgPaceSPerKm, unit)}${unit.paceLabel}',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _saving || kept.length < 2
                        ? null
                        : () async {
                            setState(() => _saving = true);
                            final nav = Navigator.of(context);
                            await s.db.trimRun(widget.run.id, _range.start.floor(), _range.end.ceil());
                            nav.pop(true);
                          },
                    child: const Text('Uložit ořez'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
