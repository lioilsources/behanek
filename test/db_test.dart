import 'package:behanek/core/db.dart';
import 'package:behanek/core/track.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

List<TrackPt> line(int seconds, {double speed = 1000 / 300}) => [
      for (var s = 0; s <= seconds; s++)
        TrackPt(t: s * 1000, lat: 50 + speed * s / 111194.9, lon: 14.4, alt: 200),
    ];

void main() {
  late AppDb db;
  setUp(() => db = AppDb(NativeDatabase.memory()));
  tearDown(() => db.close());

  test('import, duplicita a podklad pro pacer', () async {
    final start = DateTime.now().subtract(const Duration(days: 1));
    final id = await db.importRun(start, line(1500));
    expect(id, isNotNull);
    expect(await db.importRun(start.add(const Duration(seconds: 20)), line(100)), isNull);
    final run = (await db.watchRuns().first).single;
    expect(run.source, 'gpx_import');
    expect(run.distanceM, closeTo(5000, 5));
    final past = await db.pastRuns();
    expect(past.single.kmPaces.length, 5);
    expect(past.single.kmPaces.first, closeTo(300, 1));
  });

  test('ořez přepočítá běh a posune start', () async {
    final start = DateTime(2026, 10, 1, 7);
    final id = (await db.importRun(start, line(1500)))!;
    await db.trimRun(id, 300000, 900000);
    final r = (await db.watchRun(id).first)!;
    expect(r.distanceM, closeTo(2000, 5));
    expect(r.startedAt, start.add(const Duration(minutes: 5)));
    final pts = await db.pointsOf(id);
    expect(pts.first.t, 0);
    expect((await db.splitsOf(id)).length, 2);
  });

  test('rozběhnutý běh po pádu se uloží z bodů', () async {
    final id = await db.startRun(DateTime(2026, 10, 2, 7));
    await db.appendPoints(id, line(600));
    expect(await db.watchRuns().first, isEmpty);
    await db.recoverUnfinished();
    final r = (await db.watchRuns().first).single;
    expect(r.distanceM, closeTo(2000, 5));
  });

  test('smazání a zahození', () async {
    final a = (await db.importRun(DateTime(2026, 10, 3), line(100)))!;
    await db.deleteRun(a);
    expect(await db.watchRuns().first, isEmpty);
    expect(await db.pointsOf(a), isEmpty);
    final b = await db.startRun(DateTime(2026, 10, 4));
    await db.discardRun(b);
    await db.recoverUnfinished();
    expect(await db.watchRuns().first, isEmpty);
  });

  test('nastavení', () async {
    await db.putSetting('unit', 'mi');
    await db.putSetting('unit', 'km');
    expect((await db.loadSettings())['unit'], 'km');
  });
}
