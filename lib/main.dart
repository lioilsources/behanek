import 'package:flutter/material.dart';

import 'audio/audio_cues.dart';
import 'core/db.dart';
import 'core/settings.dart';
import 'export/purchases.dart';
import 'gps/run_controller.dart';
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
  runApp(BehanekApp(Services(db, settings, audio, run, purchases)));
}
