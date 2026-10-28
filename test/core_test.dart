import 'package:behanek/core/track.dart';
import 'package:behanek/core/units.dart';
import 'package:behanek/export/gpx.dart';
import 'package:behanek/gps/geo.dart';
import 'package:behanek/gps/run_tracker.dart';
import 'package:behanek/pacer/cue.dart';
import 'package:behanek/pacer/form_model.dart';
import 'package:flutter_test/flutter_test.dart';

/// Rovná trasa na sever konstantní rychlostí, 1 bod/s.
List<TrackPt> straightRun({required double speed, required int seconds, int startT = 0}) {
  const lat0 = 50.0, lon0 = 14.4;
  const mPerDegLat = 111194.9;
  return [
    for (var s = 0; s <= seconds; s++)
      TrackPt(t: startT + s * 1000, lat: lat0 + speed * s / mPerDegLat, lon: lon0, alt: 200),
  ];
}

void main() {
  group('formátování', () {
    test('čas a tempo', () {
      expect(formatDuration(605), '10:05');
      expect(formatDuration(3725), '1:02:05');
      expect(formatPace(310, DistanceUnit.km), '5:10');
      expect(formatPace(null, DistanceUnit.km), '–:––');
      expect(formatPace(300, DistanceUnit.mi), '8:03');
      expect(formatDistance(5234, DistanceUnit.km), '5,23');
    });
  });

  group('geo', () {
    test('haversine ~111 km na stupeň šířky', () {
      expect(haversineM(50, 14, 51, 14), closeTo(111195, 5));
    });

    test('statistiky rovného běhu 3,33 m/s', () {
      final pts = straightRun(speed: 1000 / 300, seconds: 1500); // 5:00/km, 5 km
      final s = computeStats(pts);
      expect(s.distanceM, closeTo(5000, 5));
      expect(s.movingTimeS, closeTo(1500, 1));
      expect(s.splits.length, 5);
      for (final sp in s.splits) {
        expect(sp.paceSPerKm, closeTo(300, 1));
      }
    });

    test('stání se nepočítá a mezera je přerušení', () {
      final a = straightRun(speed: 3, seconds: 100);
      final last = a.last;
      final standing = [
        for (var s = 1; s <= 60; s++)
          TrackPt(t: last.t + s * 1000, lat: last.lat + (s.isEven ? 1e-6 : -1e-6), lon: last.lon),
      ];
      final b = straightRun(speed: 3, seconds: 100, startT: standing.last.t + 60000);
      final s = computeStats([...a, ...standing, ...b]);
      expect(s.movingTimeS, closeTo(200, 1));
      // úsek b začíná znovu od lat0 -> skok přes mezeru se nesmí započítat
      expect(s.distanceM, closeTo(600, 2));
    });

    test('převýšení s hysterezí ignoruje šum', () {
      final e = ElevationAccumulator();
      for (final v in <double>[200, 201, 199, 202, 200, 210, 209, 220, 215]) {
        e.add(v);
      }
      expect(e.gain, closeTo(20, 0.01));
      expect(e.loss, closeTo(5, 0.01));
    });
  });

  group('RunTracker', () {
    final t0 = DateTime(2026, 10, 1, 7);
    GpsFix fix(TrackPt p, {double acc = 5, double? speed}) => GpsFix(
        time: t0.add(Duration(milliseconds: p.t)),
        lat: p.lat,
        lon: p.lon,
        alt: p.alt,
        accuracy: acc,
        speed: speed);

    test('vzdálenost, klouzavé tempo, splity', () {
      final tr = RunTracker(startedAt: t0);
      for (final p in straightRun(speed: 1000 / 330, seconds: 700)) {
        tr.addFix(fix(p, speed: 1000 / 330));
      }
      final now = t0.add(const Duration(seconds: 700));
      expect(tr.distanceM, closeTo(2121, 5));
      expect(tr.currentPace, closeTo(330, 2));
      expect(tr.splits.length, 2);
      expect(tr.splits.first.paceSPerKm, closeTo(330, 2));
      expect(tr.movingTimeS(now), closeTo(700, 0.1));
    });

    test('nepřesné body se zahodí', () {
      final tr = RunTracker(startedAt: t0);
      final pts = straightRun(speed: 3, seconds: 10);
      for (final p in pts) {
        tr.addFix(fix(p, acc: 40));
      }
      expect(tr.points, isEmpty);
      expect(tr.distanceM, 0);
    });

    test('auto-pauza při stání a návrat', () {
      final tr = RunTracker(startedAt: t0, autoPauseEnabled: true);
      final a = straightRun(speed: 3, seconds: 60);
      for (final p in a) {
        tr.addFix(fix(p, speed: 3));
      }
      for (var s = 1; s <= 30; s++) {
        tr.addFix(fix(TrackPt(t: a.last.t + s * 1000, lat: a.last.lat, lon: a.last.lon), speed: 0));
      }
      expect(tr.state, RunState.autoPaused);
      final resumeAt = t0.add(Duration(milliseconds: a.last.t + 30000));
      // stání se do pohybového času nepočítá (jen pár s, než vyhlazená rychlost klesne)
      expect(tr.movingTimeS(resumeAt), lessThanOrEqualTo(65));
      final b = straightRun(speed: 3, seconds: 30, startT: a.last.t + 31000);
      for (final p in b) {
        tr.addFix(fix(TrackPt(t: p.t, lat: p.lat + 0.01, lon: p.lon), speed: 3));
      }
      expect(tr.state, RunState.running);
    });

    test('ruční pauza nepočítá čas', () {
      final tr = RunTracker(startedAt: t0);
      tr.pause(t0.add(const Duration(seconds: 100)));
      tr.resume(t0.add(const Duration(seconds: 160)));
      expect(tr.movingTimeS(t0.add(const Duration(seconds: 200))), closeTo(140, 0.01));
    });
  });

  group('pacer', () {
    final now = DateTime(2026, 10, 28);
    PastRun run(int id, int daysAgo, double km, double pace) => PastRun(
        id, now.subtract(Duration(days: daysAgo)), km * 1000, List.filled(km.floor(), pace));

    test('bez historie žádný profil', () {
      expect(FormProfile.build([run(1, 1, 5, 300), run(2, 2, 5, 300)], now), isNull);
    });

    test('medián podobných běhů, staré a jiné délky ignoruje', () {
      final p = FormProfile.build([
        run(1, 1, 5, 300),
        run(2, 3, 5, 310),
        run(3, 5, 5.5, 320),
        run(4, 6, 21, 200), // jiná délka
        run(5, 90, 5, 100), // moc staré
      ], now)!;
      expect(p.basedOnRuns, 3);
      expect(p.targetPaceAt(2500), 310);
      expect(p.withFactor(0.98).targetPaceAt(0), closeTo(303.8, 0.01));
    });

    test('ghost v pohybovém čase', () {
      final g = Ghost(1, now, straightRun(speed: 3, seconds: 100));
      expect(g.distanceAt(50), closeTo(150, 1));
      expect(g.distanceAt(500), closeTo(300, 1));
    });

    test('cue česky a anglicky', () {
      const cs = CueBuilder(CueLang.cs, DistanceUnit.km);
      final c = cs.build(distanceM: 3210, movingTimeS: 1000, currentPace: 310, targetPace: 315);
      expect(c.text, '3,2 kilometru, tempo 5 10, o 5 sekund rychleji');
      expect(c.tone, ToneSignal.slowDown);
      expect(cs.build(distanceM: 2000, movingTimeS: 600).text, '2 kilometry, čas 10 00');
      expect(
          cs.build(distanceM: 1000, movingTimeS: 300, currentPace: 300, ghostDeltaM: -42).text,
          '1 kilometr, tempo 5 00, 40 metrů pozadu');
      const en = CueBuilder(CueLang.en, DistanceUnit.km);
      final e = en.build(distanceM: 5000, movingTimeS: 1500, currentPace: 320, targetPace: 300);
      expect(e.text, '5 kilometers, pace 5 20, 20 seconds slower');
      expect(e.tone, ToneSignal.speedUp);
    });
  });

  group('GPX', () {
    test('zápis a čtení zachová trasu i přerušení', () {
      final start = DateTime.utc(2026, 10, 1, 6).toLocal();
      final pts = [
        ...straightRun(speed: 3, seconds: 100),
        ...straightRun(speed: 3, seconds: 100, startT: 200000).map((p) =>
            TrackPt(t: p.t, lat: p.lat + 0.001, lon: p.lon + 0.001, alt: p.alt)),
      ];
      final xml = writeGpx(startedAt: start, points: pts, name: 'Test');
      expect('<trkseg>'.allMatches(xml).length, 2);
      final back = parseGpx(xml);
      expect(back.startedAt, start);
      expect(back.points.length, pts.length);
      expect(back.points[150].lat, closeTo(pts[150].lat, 1e-6));
      expect(computeStats(back.points).distanceM, closeTo(600, 2));
    });

    test('Strava-like GPX s namespace a bez výšky', () {
      const src = '''<?xml version="1.0"?>
<gpx creator="StravaGPX" xmlns="http://www.topografix.com/GPX/1/1">
 <trk><name>Ranní běh</name><trkseg>
  <trkpt lat="50.0" lon="14.4"><time>2026-09-01T05:00:00Z</time></trkpt>
  <trkpt lat="50.001" lon="14.4"><time>2026-09-01T05:00:30Z</time></trkpt>
  <trkpt lat="50.002" lon="14.4"><time>2026-09-01T05:00:40Z</time></trkpt>
 </trkseg></trk></gpx>''';
      final g = parseGpx(src);
      expect(g.name, 'Ranní běh');
      expect(g.points.length, 3);
      expect(g.points.last.t, 40000);
    });

    test('neplatný soubor', () {
      expect(() => parseGpx('<gpx></gpx>'), throwsA(isA<GpxFormatException>()));
    });
  });

}
