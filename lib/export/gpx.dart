import 'package:xml/xml.dart';

import '../core/track.dart';
import '../gps/geo.dart';

class ParsedGpx {
  final DateTime startedAt;
  final String? name;
  final List<TrackPt> points;
  const ParsedGpx(this.startedAt, this.name, this.points);
}

class GpxFormatException implements Exception {
  final String message;
  const GpxFormatException(this.message);
  @override
  String toString() => message;
}

String writeGpx({
  required DateTime startedAt,
  required List<TrackPt> points,
  String? name,
}) {
  final b = XmlBuilder();
  b.processing('xml', 'version="1.0" encoding="UTF-8"');
  b.element('gpx', attributes: {
    'version': '1.1',
    'creator': 'Běhánek',
    'xmlns': 'http://www.topografix.com/GPX/1/1',
  }, nest: () {
    b.element('metadata', nest: () {
      b.element('time', nest: startedAt.toUtc().toIso8601String());
    });
    b.element('trk', nest: () {
      b.element('name', nest: name ?? 'Běh ${startedAt.toIso8601String()}');
      b.element('type', nest: 'running');
      var i = 0;
      while (i < points.length) {
        b.element('trkseg', nest: () {
          do {
            final p = points[i];
            b.element('trkpt', attributes: {
              'lat': p.lat.toStringAsFixed(7),
              'lon': p.lon.toStringAsFixed(7),
            }, nest: () {
              if (p.alt != null) b.element('ele', nest: p.alt!.toStringAsFixed(1));
              b.element('time',
                  nest: startedAt.add(Duration(milliseconds: p.t)).toUtc().toIso8601String());
            });
            i++;
          } while (i < points.length && (points[i].t - points[i - 1].t) / 1000.0 <= segmentGapS);
        });
      }
    });
  });
  return b.buildDocument().toXmlString(pretty: true);
}

/// Čte GPX ze Stravy, Garminu i dalších; potřebuje časy bodů (bez nich není tempo).
ParsedGpx parseGpx(String source) {
  final XmlDocument doc;
  try {
    doc = XmlDocument.parse(source);
  } on XmlException catch (e) {
    throw GpxFormatException('Soubor není platné GPX (${e.message}).');
  }
  var pts = doc.findAllElements('trkpt', namespaceUri: '*').toList();
  if (pts.isEmpty) pts = doc.findAllElements('rtept', namespaceUri: '*').toList();
  if (pts.isEmpty) throw const GpxFormatException('GPX neobsahuje žádné body trasy.');

  final raw = <(DateTime, double, double, double?)>[];
  for (final e in pts) {
    final lat = double.tryParse(e.getAttribute('lat') ?? '');
    final lon = double.tryParse(e.getAttribute('lon') ?? '');
    final timeText = e.findElements('time', namespaceUri: '*').firstOrNull?.innerText;
    final time = timeText == null ? null : DateTime.tryParse(timeText.trim());
    if (lat == null || lon == null || time == null) continue;
    final ele = double.tryParse(
        e.findElements('ele', namespaceUri: '*').firstOrNull?.innerText.trim() ?? '');
    raw.add((time, lat, lon, ele));
  }
  if (raw.length < 2) {
    throw const GpxFormatException('GPX nemá body s časem — nelze spočítat tempo.');
  }
  raw.sort((a, b) => a.$1.compareTo(b.$1));
  final start = raw.first.$1.toLocal();
  final name = doc.findAllElements('name', namespaceUri: '*').firstOrNull?.innerText.trim();
  return ParsedGpx(
    start,
    (name == null || name.isEmpty) ? null : name,
    [
      for (final r in raw)
        TrackPt(
          t: r.$1.toLocal().difference(start).inMilliseconds,
          lat: r.$2,
          lon: r.$3,
          alt: r.$4,
        ),
    ],
  );
}
