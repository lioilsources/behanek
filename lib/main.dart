import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ol1n_telemetry/ol1n_telemetry.dart';
import 'package:path_provider/path_provider.dart';

import 'audio/audio_cues.dart';
import 'core/db.dart';
import 'core/settings.dart';
import 'export/purchases.dart';
import 'gps/run_controller.dart';
import 'l10n/l10n.dart';
import 'telemetry/telemetry_dictionary.dart';
import 'ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = AppDb();
  // Běh přerušený pádem nebo zabitím appky se uloží z průběžně zapsaných bodů.
  await db.recoverUnfinished();
  final settings = AppSettings(db);
  await settings.load();
  final audio = AudioCues();
  await audio.init();
  final purchases = Purchases(settings);
  // Store nemusí odpovídat (offline) — appka se kvůli tomu nesmí zdržet.
  purchases.init().ignore();
  final run = RunController(db, settings, audio);
  // Jazyk už pro první událost; MaterialApp ho pak drží aktuální.
  appLocale = basicLocaleListResolution(
      WidgetsBinding.instance.platformDispatcher.locales, AppLocalizations.supportedLocales);
  unawaited(_initTelemetry(db, settings, run));
  runApp(BehanekApp(Services(db, settings, audio, run, purchases)));
}

/// Anonymní statistiky (docs/telemetry.md). Bez klíče v buildu tiché.
Future<void> _initTelemetry(AppDb db, AppSettings settings, RunController run) async {
  try {
    final dir = await getApplicationSupportDirectory();
    await Telemetry.init(
      app: kTelemetryApp,
      appVersion: kAppVersion,
      dictionary: behanekDictionary,
      store: FileTelemetryStore('${dir.path}/telemetry'),
      lang: () => telemetryLocaleId(appLocale),
      tester: kTesterBuild,
      // Kdo už má běhy nebo nastavení, appku používal před měřením.
      hadDataBefore: () async =>
          (await db.loadSettings()).isNotEmpty || (await db.watchRuns().first).isNotEmpty,
      common: () => {'unit': settings.unit.name},
      pauseProps: () => {'running': run.phase != Phase.idle},
    );
  } catch (_) {
    // Měření nesmí appku nikdy zastavit.
  }
}
