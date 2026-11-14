import 'package:ol1n_telemetry/ol1n_telemetry.dart';

import '../l10n/l10n.dart';

/// Verze appky, kterou build hlásí; `test/telemetry_test.dart` ji drží shodnou
/// s `version:` v `pubspec.yaml`. Release workflow navíc hlídá shodu s tagem.
const kAppVersion = '1.0.0';

/// Id appky ve StoreMetrics (`apps.yaml`).
const kTelemetryApp = 'behanek';

/// Testerský build (`--dart-define=TESTER=true`); výchozí false.
const kTesterBuild = bool.fromEnvironment('TESTER');

/// Název trasy → obrazovka. Trasy se pojmenovávají při `Navigator.push`
/// (`RouteSettings(name: ...)`); nepojmenovaná trasa je `other`.
const kScreenRoutes = {
  '/': 'history',
  '/run': 'run',
  '/detail': 'detail',
  '/trim': 'trim',
  '/import': 'import',
  '/settings': 'settings',
};

/// Délka běhu (čas v pohybu) v pásmech; vzdálenost ani poloha se neposílají.
const kRunDurationBands = {'0-9', '10-29', '30-59', '60+'};

String runDurationBand(num movingSecs) {
  final m = movingSecs / 60;
  return m < 10
      ? '0-9'
      : m < 30
          ? '10-29'
          : m < 60
              ? '30-59'
              : '60+';
}

/// Jediný slovník událostí appky, zrcadlený v `docs/telemetry.md`.
final behanekDictionary = TelemetryDictionary(
  appVersion: kAppVersion,
  languages: {
    for (final l in AppLocalizations.supportedLocales) telemetryLocaleId(l)
  },
  screens: kScreenRoutes.values.toSet(),
  features: {
    'ghost',
    'live_map',
    'manual_pause',
    'trim',
    'gpx_export',
    'backup',
    'month_report',
    'import',
  },
  errorKinds: {
    'location_denied',
    'location_off',
    'store_unavailable',
    'purchase_failed',
    'import_file',
  },
  lockedTargets: {'import_all'},
  common: {
    'unit': const EnumProp({'km', 'mi'}),
  },
  sessionPause: {
    'running': const BoolProp(),
  },
  events: {
    ...TelemetryDictionary.flow(
      'run',
      results: {'discard', 'too_short'},
      start: {
        'pacer': const EnumProp({'form', 'ghost', 'none'}),
        'pacer_goal': const EnumProp({'hold', 'improve'}),
        'cues': const EnumProp({'voice', 'tones', 'both', 'off'}),
        'cue_interval': const EnumProp({'30', '60', '120', '300'}),
        'auto_pause': const BoolProp(),
        'metronome': const BoolProp(),
      },
      end: {
        'duration_band': const EnumProp(kRunDurationBands),
        'resumed': const BoolProp(),
      },
    ),
    ...TelemetryDictionary.flow(
      'import',
      results: {'empty', 'preview'},
      end: {
        'runs': const IntProp(100000),
        'failed': const IntProp(100000),
      },
    ),
    ...TelemetryDictionary.flow(
      'purchase',
      results: {'pending', 'none'},
      start: {
        'kind': const EnumProp({'buy', 'restore'}),
      },
    ),
  },
);
