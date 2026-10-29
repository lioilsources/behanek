@Tags(['screenshots'])
library;

import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:behanek/audio/audio_cues.dart';
import 'package:behanek/core/db.dart';
import 'package:behanek/core/settings.dart';
import 'package:behanek/core/track.dart';
import 'package:behanek/export/purchases.dart';
import 'package:behanek/gps/geo.dart';
import 'package:behanek/gps/location_source.dart';
import 'package:behanek/gps/run_controller.dart';
import 'package:behanek/gps/run_tracker.dart';
import 'package:behanek/pacer/form_model.dart';
import 'package:behanek/ui/app.dart';
import 'package:behanek/ui/detail_screen.dart';
import 'package:behanek/ui/history_screen.dart';
import 'package:behanek/ui/run_screen.dart';
import 'package:behanek/ui/settings_screen.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// Vykreslí hlavní obrazovky do PNG pro stránku v obchodě (olin.now/behanek):
///
///     SCREENSHOT_DIR=/tmp/shots flutter test test/screenshots_test.dart
///
/// Bez SCREENSHOT_DIR se všechno přeskočí, takže běžné `flutter test` na pixelech
/// ani na síti nezávisí. Obrazovky jsou widgety appky nad pamětovou DB; běhy
/// vznikají z tras v `test/fixtures/routes` (OSRM foot, výšky Open-Meteo),
/// mapové dlaždice se stahují naživo (bez MAPY_API_KEY = OpenTopoMap).
final _dir = Platform.environment['SCREENSHOT_DIR'];

const _phone = Size(390, 844); // iPhone 14/15, @3x
const _ratio = 3.0;

final _shotKey = GlobalKey();

Future<void> _loadFonts() async {
  // Text appky je systémový font (Roboto na Androidu); testovací prostředí
  // by jinak kreslilo místo písmen obdélníčky.
  final dir = '${Platform.environment['FLUTTER_ROOT']!}/bin/cache/artifacts/material_fonts';
  Future<ByteData> read(String f) async => ByteData.sublistView(File('$dir/$f').readAsBytesSync());
  final roboto = FontLoader('Roboto');
  for (final w in ['Regular', 'Medium', 'Bold', 'Black']) {
    roboto.addFont(read('Roboto-$w.ttf'));
  }
  await roboto.load();
  await (FontLoader('MaterialIcons')..addFont(read('MaterialIcons-Regular.otf'))).load();
}

/// Styly tlačítek a titulku v motivu nemají rodinu písma — telefon dosadí systémový
/// font, test obdélníčky. Pojmenujeme ten, který by to byl.
ThemeData _theme() {
  final t = buildTheme();
  ButtonStyle roboto(ButtonStyle? s) => s!.copyWith(
      textStyle: WidgetStatePropertyAll(s.textStyle!.resolve({})!.copyWith(fontFamily: 'Roboto')));
  return t.copyWith(
    appBarTheme: t.appBarTheme.copyWith(
        titleTextStyle: t.appBarTheme.titleTextStyle!.copyWith(fontFamily: 'Roboto')),
    filledButtonTheme: FilledButtonThemeData(style: roboto(t.filledButtonTheme.style)),
    outlinedButtonTheme: OutlinedButtonThemeData(style: roboto(t.outlinedButtonTheme.style)),
    textButtonTheme: TextButtonThemeData(style: roboto(t.textButtonTheme.style)),
  );
}

/// Body trasy z GPX fixture: (lat, lon, výška) zhruba po 25 m.
List<(double, double, double)> _route(String name) {
  final xml = File('test/fixtures/routes/$name.gpx').readAsStringSync();
  return [
    for (final m in RegExp(r'lat="([\d.]+)" lon="([\d.]+)"><ele>([\d.]+)').allMatches(xml))
      (double.parse(m[1]!), double.parse(m[2]!), double.parse(m[3]!)),
  ];
}

/// Běh po trase v 1 Hz: tempo kolem [pace] (s/km), do kopce pomaleji, s šumem GPS.
List<TrackPt> _runAlong(String route, double pace, {int laps = 1, int seed = 1, double? stopAtM}) {
  final r = _route(route);
  final path = [for (var l = 0; l < laps; l++) ...(l == 0 ? r : r.skip(1))];
  final rnd = math.Random(seed);
  final out = <TrackPt>[];
  var seg = 0, along = 0.0, total = 0.0, t = 0;
  while (seg < path.length - 1) {
    final a = path[seg], b = path[seg + 1];
    final len = haversineM(a.$1, a.$2, b.$1, b.$2);
    if (len < 0.5 || along >= len) {
      along -= len < 0.5 ? 0 : len;
      seg++;
      continue;
    }
    final f = along / len;
    // DEM má krok 1 m — na krátkém úseku by vyšel nesmyslný sklon.
    final grade = ((b.$3 - a.$3) / math.max(len, 20)).clamp(-0.12, 0.12);
    out.add(TrackPt(
      t: t * 1000,
      lat: a.$1 + (b.$1 - a.$1) * f + (rnd.nextDouble() - 0.5) * 0.00002,
      lon: a.$2 + (b.$2 - a.$2) * f + (rnd.nextDouble() - 0.5) * 0.00003,
      alt: a.$3 + (b.$3 - a.$3) * f,
      accuracy: 3 + rnd.nextDouble() * 3,
    ));
    // Únava, vlny tempa po kilometrech a sklon terénu.
    final p = pace * (1 + 0.035 * math.sin(total / 1300 + seed) + 0.0000045 * total) * (1 + grade * 3.5);
    final step = 1000 / p;
    along += step;
    total += step;
    t++;
    if (stopAtM != null && total >= stopAtM) break;
  }
  return out;
}

/// Simulátor nemá GPS — poloha a forma jsou nastavené ručně, nic se nespouští.
class _StillRun extends RunController {
  _StillRun(super.db, super.settings, super.audio);

  @override
  Future<LocationAccess> warmUp() async {
    profile = FormProfile.build(await db.pastRuns(), now);
    notifyListeners();
    return LocationAccess.granted;
  }

  @override
  Future<void> coolDown() async {}

  void showLive(RunTracker tr) {
    tracker = tr;
    phase = Phase.active;
    notifyListeners();
  }
}

void main() {
  setUpAll(() async {
    await _loadFonts();
    // Dlaždice mapy jdou ze sítě; test binding jinak každý HTTP požadavek odmítne.
    HttpOverrides.global = null;
    // Cache dlaždic flutter_map chce složku od path_provider.
    final cache = Directory.systemTemp.createTempSync('behanek-tiles').path;
    TestWidgetsFlutterBinding.ensureInitialized().defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('plugins.flutter.io/path_provider'), (_) async => cache);
  });

  final skip = _dir == null;
  late AppDb db;
  late Services services;
  late _StillRun run;
  final ids = <String, int>{};

  final today = DateTime.now();
  DateTime day(int monthsBack, int d, int h, int min) => DateTime(today.year, today.month - monthsBack, d, h, min);

  // Tři měsíce běhání po Praze, tempo se pomalu zlepšuje.
  final history = <(String, DateTime, String, double, int)>[
    ('last', day(0, 26, 7, 12), 'stromovka', 309, 1),
    ('troja', day(0, 23, 18, 4), 'troja', 322, 1),
    ('', day(0, 20, 7, 5), 'letna', 314, 1),
    ('ghost', day(0, 16, 6, 58), 'stromovka', 316, 1),
    ('', day(0, 12, 17, 41), 'troja', 328, 1),
    ('', day(0, 9, 7, 20), 'letna', 318, 1),
    ('', day(0, 5, 9, 2), 'stromovka', 336, 2),
    ('', day(0, 2, 7, 15), 'stromovka', 320, 1),
    ('', day(1, 28, 8, 40), 'troja', 334, 1),
    ('', day(1, 24, 7, 9), 'stromovka', 327, 1),
    ('', day(1, 19, 18, 22), 'letna', 330, 1),
    ('', day(1, 14, 9, 30), 'stromovka', 344, 2),
    ('', day(1, 9, 7, 3), 'letna', 331, 1),
    ('', day(1, 4, 7, 11), 'stromovka', 333, 1),
    ('', day(2, 30, 8, 15), 'troja', 345, 1),
    ('', day(2, 25, 19, 2), 'stromovka', 340, 1),
    ('', day(2, 20, 7, 30), 'letna', 342, 1),
    ('', day(2, 14, 7, 14), 'stromovka', 346, 1),
    ('', day(2, 8, 18, 50), 'letna', 349, 1),
  ];

  setUp(() async {
    db = AppDb(NativeDatabase.memory());
    final settings = AppSettings(db);
    final audio = AudioCues(); // bez init — v testu se nic nepřehrává
    run = _StillRun(db, settings, audio);
    services = Services(db, settings, audio, run, Purchases(settings));
  });

  Future<void> seed(WidgetTester tester) => tester.runAsync(() async {
        await services.settings.load();
        for (final (i, (key, at, route, pace, laps)) in history.indexed) {
          final pts = _runAlong(route, pace, laps: laps, seed: i + 1);
          final id = await db.startRun(at);
          await db.appendPoints(id, pts);
          await db.finishRun(id, computeStats(pts), endedAt: at.add(Duration(milliseconds: pts.last.t)));
          if (key.isNotEmpty) ids[key] = id;
        }
      });

  /// Dlaždice a obrázky se načítají ve skutečném čase — chvíli pumpovat.
  Future<void> settle(WidgetTester tester, {int rounds = 12}) async {
    for (var i = 0; i < rounds; i++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 400)));
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  Future<void> save(WidgetTester tester, String name) async {
    final boundary = tester.renderObject<RenderRepaintBoundary>(find.byKey(_shotKey));
    await tester.runAsync(() async {
      final image = await boundary.toImage(pixelRatio: _ratio);
      final png = await image.toByteData(format: ui.ImageByteFormat.png);
      File('$_dir/$name.png')
        ..createSync(recursive: true)
        ..writeAsBytesSync(png!.buffer.asUint8List());
    });
  }

  Future<void> shoot(WidgetTester tester, String name, Widget Function() home,
      {Future<void> Function()? then}) async {
    tester.view.physicalSize = _phone * _ratio;
    tester.view.devicePixelRatio = _ratio;
    addTearDown(tester.view.reset);
    await seed(tester);

    await tester.pumpWidget(RepaintBoundary(
      key: _shotKey,
      child: App(
        services: services,
        child: MaterialApp(debugShowCheckedModeBanner: false, theme: _theme(), home: home()),
      ),
    ));
    await settle(tester, rounds: 4);
    if (then != null) await then();
    await settle(tester, rounds: 30);
    await save(tester, name);

    // Drift ruší streamy a HTTP klient zavírá spojení (keep-alive 15 s) přes časovače
    // ve falešném čase testu — nechat je doběhnout.
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds: 20));
    await tester.runAsync(db.close);
  }

  /// Dnešní běh v Stromovce: 4,6 km za sebou, duch z minulého týdne těsně za zády.
  RunTracker liveRun() {
    final pts = _runAlong('stromovka', 304, seed: 42, stopAtM: 4630);
    final start = DateTime.now().subtract(Duration(milliseconds: pts.last.t));
    final tr = RunTracker(startedAt: start);
    for (final p in pts) {
      tr.addFix(GpsFix(
          time: start.add(Duration(milliseconds: p.t)),
          lat: p.lat,
          lon: p.lon,
          alt: p.alt,
          accuracy: p.accuracy!));
    }
    return tr;
  }

  GpsFix fixAtStart() {
    final s = _route('stromovka').first;
    return GpsFix(time: DateTime.now(), lat: s.$1, lon: s.$2, alt: s.$3, accuracy: 4);
  }

  testWidgets('01 historie', skip: skip, (tester) async {
    await shoot(tester, '01-historie', () => const HistoryScreen());
  });

  testWidgets('02 start s formou', skip: skip, (tester) async {
    await shoot(tester, '02-start', () => const RunScreen(), then: () async {
      run.lastFix = fixAtStart();
      run.notifyListeners();
    });
  });

  testWidgets('03 výběr ducha', skip: skip, (tester) async {
    await shoot(tester, '03-duch', () => const RunScreen(), then: () async {
      run.lastFix = fixAtStart();
      run.notifyListeners();
      await tester.tap(find.text('Duch'));
      await settle(tester, rounds: 4);
    });
  });

  testWidgets('04 běh: čísla a duch', skip: skip, (tester) async {
    await shoot(tester, '04-beh', () => const RunScreen(), then: () async {
      await tester.runAsync(() async {
        run.lastFix = fixAtStart();
        await run.choosePacer(GhostPacer((await db.watchRuns().first).firstWhere((r) => r.id == ids['ghost'])));
      });
      run.showLive(liveRun());
    });
  });

  testWidgets('05 běh: mapa', skip: skip, (tester) async {
    await shoot(tester, '05-beh-mapa', () => const RunScreen(), then: () async {
      final tr = liveRun();
      final last = tr.points.last;
      run.lastFix = GpsFix(time: DateTime.now(), lat: last.lat, lon: last.lon, accuracy: 4);
      run.showLive(tr);
      await tester.pump();
      await tester.tap(find.text('Mapa'));
      await settle(tester);
    });
  });

  testWidgets('06 detail: mapa a souhrn', skip: skip, (tester) async {
    await shoot(tester, '06-detail', () => DetailScreen(runId: ids['troja']!));
  });

  testWidgets('07 detail: splity a grafy', skip: skip, (tester) async {
    await shoot(tester, '07-detail-splity', () => DetailScreen(runId: ids['troja']!), then: () async {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -560));
      await tester.pumpAndSettle();
    });
  });

  testWidgets('08 nastavení', skip: skip, (tester) async {
    await shoot(tester, '08-nastaveni', () => const SettingsScreen());
  });
}
