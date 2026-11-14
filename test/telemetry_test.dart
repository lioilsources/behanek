// Kontroly ze sady ol1n_telemetry (README „Testovací sada“): slovník ↔
// docs/telemetry.md, žádný volný text, verze ↔ pubspec, bez klíče žádná síť,
// vypnuto = nic, doslovné názvy událostí.

import 'dart:io';

import 'package:behanek/telemetry/telemetry_dictionary.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ol1n_telemetry/testing.dart';

const _common = {'unit': 'km'};
const _pause = {'running': false};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('docs/telemetry.md lists exactly the dictionary', () {
    expect(telemetryDocProblems(behanekDictionary, File('docs/telemetry.md').readAsStringSync()),
        isEmpty);
  });

  test('no property is free text', () {
    expect(telemetryDictionaryProblems(behanekDictionary), isEmpty);
  });

  test('app version matches pubspec.yaml', () {
    expect(telemetryVersionProblems(kAppVersion, File('pubspec.yaml').readAsStringSync()), isEmpty);
  });

  test('the code sends only dictionary events, and every one of them', () {
    expect(telemetryTrackCallProblems(behanekDictionary), isEmpty);
  });

  test('no key, no network', () async {
    expect(
        await telemetryNoKeyProblems(behanekDictionary,
            common: () => _common, pauseProps: () => _pause),
        isEmpty);
  }, skip: const bool.fromEnvironment('TELEMETRY_DEBUG'));

  test('off means nothing', () async {
    expect(
        await telemetryOffProblems(behanekDictionary,
            common: () => _common, pauseProps: () => _pause),
        isEmpty);
  });

  test('run duration bands', () {
    expect(runDurationBand(0), '0-9');
    expect(runDurationBand(599), '0-9');
    expect(runDurationBand(600), '10-29');
    expect(runDurationBand(1799), '10-29');
    expect(runDurationBand(1800), '30-59');
    expect(runDurationBand(3600), '60+');
    expect(kRunDurationBands, containsAll(['0-9', '10-29', '30-59', '60+']));
  });
}
