import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../gps/geo.dart';
import '../pacer/form_model.dart';
import 'track.dart';

part 'db.g.dart';

@DataClassName('RunRow')
class Runs extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get startedAt => dateTime()();

  /// null = běh probíhá (nebo appka spadla uprostřed — obnoví se při startu).
  DateTimeColumn get endedAt => dateTime().nullable()();
  RealColumn get distanceM => real().withDefault(const Constant(0))();
  RealColumn get movingTimeS => real().withDefault(const Constant(0))();
  RealColumn get elapsedTimeS => real().withDefault(const Constant(0))();
  RealColumn get avgPaceSPerKm => real().nullable()();
  RealColumn get elevGainM => real().withDefault(const Constant(0))();
  RealColumn get elevLossM => real().withDefault(const Constant(0))();
  TextColumn get notes => text().nullable()();

  /// 'gps' | 'gpx_import'
  TextColumn get source => text().withDefault(const Constant('gps'))();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TrackPointRow')
class TrackPoints extends Table {
  IntColumn get runId => integer().references(Runs, #id, onDelete: KeyAction.cascade)();
  IntColumn get t => integer()();
  RealColumn get lat => real()();
  RealColumn get lon => real()();
  RealColumn get alt => real().nullable()();
  RealColumn get accuracyM => real().nullable()();
  RealColumn get speedMps => real().nullable()();

  /// Rezervováno pro senzory — v1 se nikdy neplní.
  IntColumn get hr => integer().nullable()();
  IntColumn get cadenceSpm => integer().nullable()();

  @override
  Set<Column> get primaryKey => {runId, t};
}

@DataClassName('SplitRow')
class Splits extends Table {
  IntColumn get runId => integer().references(Runs, #id, onDelete: KeyAction.cascade)();
  IntColumn get kmIndex => integer()();
  RealColumn get paceSPerKm => real()();
  RealColumn get elevDeltaM => real()();

  @override
  Set<Column> get primaryKey => {runId, kmIndex};
}

@DataClassName('SettingRow')
class Settings extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(tables: [Runs, TrackPoints, Splits, Settings])
class AppDb extends _$AppDb {
  AppDb([QueryExecutor? e]) : super(e ?? driftDatabase(name: 'behanek'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (_) async => customStatement('PRAGMA foreign_keys = ON'),
      );

  // ---- běhy ----

  Stream<List<RunRow>> watchRuns() => (select(runs)
        ..where((r) => r.deletedAt.isNull() & r.endedAt.isNotNull())
        ..orderBy([(r) => OrderingTerm.desc(r.startedAt)]))
      .watch();

  Stream<RunRow?> watchRun(int id) =>
      (select(runs)..where((r) => r.id.equals(id))).watchSingleOrNull();

  Future<int> startRun(DateTime startedAt) =>
      into(runs).insert(RunsCompanion.insert(startedAt: startedAt));

  Future<void> appendPoints(int runId, List<TrackPt> pts) async {
    if (pts.isEmpty) return;
    await batch((b) => b.insertAll(
          trackPoints,
          [for (final p in pts) _pointCompanion(runId, p)],
          mode: InsertMode.insertOrIgnore,
        ));
  }

  TrackPointsCompanion _pointCompanion(int runId, TrackPt p) => TrackPointsCompanion.insert(
        runId: runId,
        t: p.t,
        lat: p.lat,
        lon: p.lon,
        alt: Value(p.alt),
        accuracyM: Value(p.accuracy),
        speedMps: Value(p.speed),
      );

  Future<List<TrackPt>> pointsOf(int runId) async {
    final rows = await (select(trackPoints)
          ..where((p) => p.runId.equals(runId))
          ..orderBy([(p) => OrderingTerm.asc(p.t)]))
        .get();
    return [
      for (final r in rows)
        TrackPt(t: r.t, lat: r.lat, lon: r.lon, alt: r.alt, accuracy: r.accuracyM, speed: r.speedMps),
    ];
  }

  /// Startovní bod běhu — pro výběr ducha na stejné trase.
  Future<TrackPointRow?> firstPointOf(int runId) => (select(trackPoints)
        ..where((p) => p.runId.equals(runId))
        ..orderBy([(p) => OrderingTerm.asc(p.t)])
        ..limit(1))
      .getSingleOrNull();

  Future<List<SplitRow>> splitsOf(int runId) => (select(splits)
        ..where((s) => s.runId.equals(runId))
        ..orderBy([(s) => OrderingTerm.asc(s.kmIndex)]))
      .get();

  /// Uloží výsledné statistiky a splity, běh tím přestává být "rozběhnutý".
  Future<void> finishRun(int runId, RunStats s, {DateTime? endedAt, DateTime? startedAt}) =>
      transaction(() async {
        await (update(runs)..where((r) => r.id.equals(runId))).write(RunsCompanion(
          startedAt: startedAt == null ? const Value.absent() : Value(startedAt),
          endedAt: endedAt == null ? const Value.absent() : Value(endedAt),
          distanceM: Value(s.distanceM),
          movingTimeS: Value(s.movingTimeS),
          elapsedTimeS: Value(s.elapsedTimeS),
          avgPaceSPerKm: Value(s.avgPaceSPerKm),
          elevGainM: Value(s.elevGainM),
          elevLossM: Value(s.elevLossM),
        ));
        await (delete(splits)..where((x) => x.runId.equals(runId))).go();
        await batch((b) => b.insertAll(splits, [
              for (final sp in s.splits)
                SplitsCompanion.insert(
                    runId: runId,
                    kmIndex: sp.index,
                    paceSPerKm: sp.paceSPerKm,
                    elevDeltaM: sp.elevDeltaM),
            ]));
      });

  /// Zahození běhu = skutečné smazání (nic se neuložilo).
  Future<void> discardRun(int runId) => (delete(runs)..where((r) => r.id.equals(runId))).go();

  /// Smazání z historie: běh zmizí hned, body uvolníme taky — žádný koš v UI není.
  Future<void> deleteRun(int runId) => transaction(() async {
        await (update(runs)..where((r) => r.id.equals(runId)))
            .write(RunsCompanion(deletedAt: Value(DateTime.now())));
        await (delete(trackPoints)..where((p) => p.runId.equals(runId))).go();
      });

  /// Ořez: zahodí body před [fromT] a po [toT] a přepočítá běh.
  Future<void> trimRun(int runId, int fromT, int toT) => transaction(() async {
        final pts = (await pointsOf(runId)).where((p) => p.t >= fromT && p.t <= toT).toList();
        if (pts.length < 2) return;
        final run = await (select(runs)..where((r) => r.id.equals(runId))).getSingle();
        final shift = pts.first.t;
        final shifted = [
          for (final p in pts)
            TrackPt(
                t: p.t - shift, lat: p.lat, lon: p.lon, alt: p.alt, accuracy: p.accuracy, speed: p.speed),
        ];
        await (delete(trackPoints)..where((p) => p.runId.equals(runId))).go();
        await appendPoints(runId, shifted);
        final start = run.startedAt.add(Duration(milliseconds: shift));
        await finishRun(runId, computeStats(shifted),
            startedAt: start, endedAt: start.add(Duration(milliseconds: shifted.last.t)));
      });

  /// Běhy, které zůstaly rozběhnuté (pád, zabití appky) — uloží se z bodů, nic se neztratí.
  Future<void> recoverUnfinished() async {
    final open = await (select(runs)..where((r) => r.endedAt.isNull())).get();
    for (final r in open) {
      final pts = await pointsOf(r.id);
      if (pts.length < 2) {
        await discardRun(r.id);
        continue;
      }
      await finishRun(r.id, computeStats(pts),
          endedAt: r.startedAt.add(Duration(milliseconds: pts.last.t)));
    }
  }

  /// Import hotového běhu (GPX). Vrací null, pokud už stejný běh existuje.
  Future<int?> importRun(DateTime startedAt, List<TrackPt> pts, {String? notes}) async {
    final dup = await (select(runs)
          ..where((r) =>
              r.deletedAt.isNull() &
              r.startedAt.isBetweenValues(startedAt.subtract(const Duration(minutes: 1)),
                  startedAt.add(const Duration(minutes: 1)))))
        .get();
    if (dup.isNotEmpty) return null;
    return transaction(() async {
      final id = await into(runs).insert(RunsCompanion.insert(
        startedAt: startedAt,
        source: const Value('gpx_import'),
        notes: Value(notes),
      ));
      await appendPoints(id, pts);
      await finishRun(id, computeStats(pts),
          endedAt: startedAt.add(Duration(milliseconds: pts.last.t)));
      return id;
    });
  }

  /// Podklad pro model formy: běhy s jejich km tempy.
  Future<List<PastRun>> pastRuns({Duration window = FormProfile.window}) async {
    final since = DateTime.now().subtract(window);
    final rs = await (select(runs)
          ..where((r) =>
              r.deletedAt.isNull() & r.endedAt.isNotNull() & r.startedAt.isBiggerOrEqualValue(since)))
        .get();
    final all = await (select(splits)
          ..where((s) => s.runId.isIn(rs.map((r) => r.id)))
          ..orderBy([(s) => OrderingTerm.asc(s.kmIndex)]))
        .get();
    final byRun = <int, List<double>>{};
    for (final s in all) {
      // Neúplný poslední úsek do profilu nepatří.
      byRun.putIfAbsent(s.runId, () => []).add(s.paceSPerKm);
    }
    return [
      for (final r in rs)
        PastRun(r.id, r.startedAt, r.distanceM,
            (byRun[r.id] ?? []).take((r.distanceM / 1000).floor()).toList()),
    ];
  }

  // ---- nastavení ----

  Future<Map<String, String>> loadSettings() async =>
      {for (final r in await select(settings).get()) r.key: r.value};

  Future<void> putSetting(String key, String value) =>
      into(settings).insertOnConflictUpdate(SettingsCompanion.insert(key: key, value: value));
}
