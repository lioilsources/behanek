import 'package:behanek/core/units.dart';
import 'package:behanek/gps/live_status.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final calls = <MethodCall>[];

  setUp(() {
    calls.clear();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('behanek/live'),
      (c) async {
        calls.add(c);
        return null;
      },
    );
  });

  Future<void> upd(LiveRunStatus s, {bool paused = false, bool force = false}) => s.update(
        distanceM: 4210,
        movingTimeS: 1425.4,
        paceSPerKm: 332,
        paused: paused,
        unit: DistanceUnit.km,
        force: force,
      );

  test('posílá hotové texty a čistý čas', () async {
    final s = LiveRunStatus(enabled: true);
    await upd(s);
    expect(calls.single.method, 'update');
    final a = calls.single.arguments as Map;
    expect(a['elapsedS'], 1425);
    expect(a['pace'], '5:32');
    expect(a['distanceUnit'], 'km');
    expect(a['paused'], false);
  });

  test('aktualizace se omezí, pauza a force projdou hned', () async {
    final s = LiveRunStatus(enabled: true);
    await upd(s);
    await upd(s); // do 5 s bez změny -> nic
    expect(calls, hasLength(1));
    await upd(s, paused: true); // změna pauzy -> hned
    expect(calls, hasLength(2));
    await upd(s, paused: true, force: true);
    expect(calls, hasLength(3));
  });

  test('end jen když něco běží', () async {
    final s = LiveRunStatus(enabled: true);
    await s.end();
    expect(calls, isEmpty);
    await upd(s);
    await s.end();
    expect(calls.map((c) => c.method), ['update', 'end']);
  });

  test('vypnuté nic neposílá', () async {
    final s = LiveRunStatus(enabled: false);
    await upd(s);
    await s.prepare();
    expect(calls, isEmpty);
  });
}
