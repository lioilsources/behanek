import 'package:flutter/material.dart';

import '../audio/audio_cues.dart';
import '../core/db.dart';
import '../core/settings.dart';
import '../export/purchases.dart';
import '../gps/run_controller.dart';
import 'history_screen.dart';

/// Všechny služby appky na jednom místě; obrazovky si je berou přes [App.of].
class Services {
  final AppDb db;
  final AppSettings settings;
  final AudioCues audio;
  final RunController run;
  final Purchases purchases;
  Services(this.db, this.settings, this.audio, this.run, this.purchases);
}

class App extends InheritedWidget {
  final Services services;
  const App({super.key, required this.services, required super.child});

  static Services of(BuildContext context) =>
      context.getInheritedWidgetOfExactType<App>()!.services;

  @override
  bool updateShouldNotify(App old) => old.services != services;
}

const accent = Color(0xFFC6FF00);

/// Tmavé, vysoký kontrast, velká typografie — čitelné na slunci a v pohybu.
ThemeData buildTheme() {
  final scheme = ColorScheme.fromSeed(
    seedColor: accent,
    brightness: Brightness.dark,
    primary: accent,
    onPrimary: Colors.black,
    surface: const Color(0xFF0B0B0B),
    onSurface: Colors.white,
  );
  return ThemeData(
    colorScheme: scheme,
    scaffoldBackgroundColor: const Color(0xFF0B0B0B),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0B0B0B),
        titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(64, 64),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(64, 64),
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white54, width: 2),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: accent,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
    dividerColor: Colors.white12,
  );
}

class BehanekApp extends StatelessWidget {
  final Services services;
  const BehanekApp(this.services, {super.key});

  @override
  Widget build(BuildContext context) => App(
        services: services,
        child: MaterialApp(
          title: 'Běhánek',
          debugShowCheckedModeBanner: false,
          theme: buildTheme(),
          home: const HistoryScreen(),
        ),
      );
}

/// Velké číslo s popiskem — základní stavební kámen obrazovky Běh i Detailu.
class BigStat extends StatelessWidget {
  final String value;
  final String label;
  final double size;
  final Color? color;
  const BigStat(this.value, this.label, {super.key, this.size = 56, this.color});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(value,
                style: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  color: color ?? Colors.white,
                  fontFeatures: const [FontFeature.tabularFigures()],
                )),
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 16, color: Colors.white70)),
        ],
      );
}

Future<bool> confirm(BuildContext context, String title, String action, {String? body}) async {
  final r = await showDialog<bool>(
    context: context,
    builder: (c) => AlertDialog(
      title: Text(title),
      content: body == null ? null : Text(body),
      actions: [
        TextButton(onPressed: () => Navigator.pop(c, false), child: const Text('Zpět')),
        TextButton(onPressed: () => Navigator.pop(c, true), child: Text(action)),
      ],
    ),
  );
  return r ?? false;
}
