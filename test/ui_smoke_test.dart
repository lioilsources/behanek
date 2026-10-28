import 'package:behanek/audio/audio_cues.dart';
import 'package:behanek/core/db.dart';
import 'package:behanek/core/settings.dart';
import 'package:behanek/core/track.dart';
import 'package:behanek/export/purchases.dart';
import 'package:behanek/gps/run_controller.dart';
import 'package:behanek/ui/app.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Historie, Nastavení a Import se vykreslí', (tester) async {
    final db = AppDb(NativeDatabase.memory());
    final settings = AppSettings(db);
    final audio = AudioCues(); // bez init — v testu se nic nepřehrává
    final services = Services(db, settings, audio, RunController(db, settings, audio), Purchases(settings));

    await tester.runAsync(() async {
      await settings.load();
      await db.importRun(DateTime(2026, 10, 20, 7), [
        for (var s = 0; s <= 1500; s++)
          TrackPt(t: s * 1000, lat: 50 + 3.33 * s / 111194.9, lon: 14.4, alt: 200),
      ]);
    });

    await tester.pumpWidget(BehanekApp(services));
    await tester.runAsync(() => Future.delayed(const Duration(milliseconds: 200)));
    await tester.pump();
    expect(find.text('Běžet'), findsOneWidget);
    expect(find.textContaining('říjen 2026'), findsOneWidget);
    expect(find.text('5,00 km'), findsOneWidget);

    await tester.tap(find.text('Nastavení'));
    await tester.pumpAndSettle();
    expect(find.text('Interval hlášení'), findsOneWidget);
    await tester.tap(find.text('mi'));
    await tester.pumpAndSettle();
    expect(settings.unit.name, 'mi');
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Import'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Odemknout import'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    await tester.runAsync(db.close);
  });
}
