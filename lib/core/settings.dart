import 'package:flutter/foundation.dart';

import '../pacer/cue.dart';
import 'db.dart';
import 'units.dart';

enum CueMode { voice, tones, both, off }

enum MapLayer { satellite, topo }

/// Cíl pro dnešní běh podle formy: jen držet, nebo malé zlepšení.
enum PacerTarget { hold, improve }

/// Jedna krátká obrazovka nastavení, uložená v tabulce `settings`.
class AppSettings extends ChangeNotifier {
  final AppDb _db;
  AppSettings(this._db);

  DistanceUnit unit = DistanceUnit.km;
  CueLang cueLang = CueLang.cs;
  int cueIntervalS = 60;
  CueMode cueMode = CueMode.both;
  bool autoPause = false;
  bool metronome = false;
  int metronomeBpm = 170;
  MapLayer mapLayer = MapLayer.topo;
  PacerTarget pacerTarget = PacerTarget.hold;

  /// Odemčený import (jednorázový nákup). Ověřuje se proti storu při obnovení.
  bool importUnlocked = false;

  static const cueIntervals = [30, 60, 120, 300];

  Future<void> load() async {
    final m = await _db.loadSettings();
    T pick<T extends Enum>(List<T> values, String key, T def) =>
        values.firstWhere((v) => v.name == m[key], orElse: () => def);
    unit = pick(DistanceUnit.values, 'unit', unit);
    cueLang = pick(CueLang.values, 'cueLang', cueLang);
    cueMode = pick(CueMode.values, 'cueMode', cueMode);
    mapLayer = pick(MapLayer.values, 'mapLayer', mapLayer);
    pacerTarget = pick(PacerTarget.values, 'pacerTarget', pacerTarget);
    cueIntervalS = int.tryParse(m['cueIntervalS'] ?? '') ?? cueIntervalS;
    metronomeBpm = int.tryParse(m['metronomeBpm'] ?? '') ?? metronomeBpm;
    autoPause = m['autoPause'] == 'true';
    metronome = m['metronome'] == 'true';
    importUnlocked = m['importUnlocked'] == 'true';
    notifyListeners();
  }

  Future<void> set(String key, Object value, void Function() apply) async {
    apply();
    notifyListeners();
    await _db.putSetting(key, value is Enum ? value.name : value.toString());
  }
}
