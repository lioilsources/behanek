// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $RunsTable extends Runs with TableInfo<$RunsTable, RunRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RunsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _startedAtMeta = const VerificationMeta(
    'startedAt',
  );
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
    'started_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endedAtMeta = const VerificationMeta(
    'endedAt',
  );
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
    'ended_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _distanceMMeta = const VerificationMeta(
    'distanceM',
  );
  @override
  late final GeneratedColumn<double> distanceM = GeneratedColumn<double>(
    'distance_m',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _movingTimeSMeta = const VerificationMeta(
    'movingTimeS',
  );
  @override
  late final GeneratedColumn<double> movingTimeS = GeneratedColumn<double>(
    'moving_time_s',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _elapsedTimeSMeta = const VerificationMeta(
    'elapsedTimeS',
  );
  @override
  late final GeneratedColumn<double> elapsedTimeS = GeneratedColumn<double>(
    'elapsed_time_s',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _avgPaceSPerKmMeta = const VerificationMeta(
    'avgPaceSPerKm',
  );
  @override
  late final GeneratedColumn<double> avgPaceSPerKm = GeneratedColumn<double>(
    'avg_pace_s_per_km',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _elevGainMMeta = const VerificationMeta(
    'elevGainM',
  );
  @override
  late final GeneratedColumn<double> elevGainM = GeneratedColumn<double>(
    'elev_gain_m',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _elevLossMMeta = const VerificationMeta(
    'elevLossM',
  );
  @override
  late final GeneratedColumn<double> elevLossM = GeneratedColumn<double>(
    'elev_loss_m',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('gps'),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    startedAt,
    endedAt,
    distanceM,
    movingTimeS,
    elapsedTimeS,
    avgPaceSPerKm,
    elevGainM,
    elevLossM,
    notes,
    source,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'runs';
  @override
  VerificationContext validateIntegrity(
    Insertable<RunRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('started_at')) {
      context.handle(
        _startedAtMeta,
        startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startedAtMeta);
    }
    if (data.containsKey('ended_at')) {
      context.handle(
        _endedAtMeta,
        endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta),
      );
    }
    if (data.containsKey('distance_m')) {
      context.handle(
        _distanceMMeta,
        distanceM.isAcceptableOrUnknown(data['distance_m']!, _distanceMMeta),
      );
    }
    if (data.containsKey('moving_time_s')) {
      context.handle(
        _movingTimeSMeta,
        movingTimeS.isAcceptableOrUnknown(
          data['moving_time_s']!,
          _movingTimeSMeta,
        ),
      );
    }
    if (data.containsKey('elapsed_time_s')) {
      context.handle(
        _elapsedTimeSMeta,
        elapsedTimeS.isAcceptableOrUnknown(
          data['elapsed_time_s']!,
          _elapsedTimeSMeta,
        ),
      );
    }
    if (data.containsKey('avg_pace_s_per_km')) {
      context.handle(
        _avgPaceSPerKmMeta,
        avgPaceSPerKm.isAcceptableOrUnknown(
          data['avg_pace_s_per_km']!,
          _avgPaceSPerKmMeta,
        ),
      );
    }
    if (data.containsKey('elev_gain_m')) {
      context.handle(
        _elevGainMMeta,
        elevGainM.isAcceptableOrUnknown(data['elev_gain_m']!, _elevGainMMeta),
      );
    }
    if (data.containsKey('elev_loss_m')) {
      context.handle(
        _elevLossMMeta,
        elevLossM.isAcceptableOrUnknown(data['elev_loss_m']!, _elevLossMMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RunRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RunRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      startedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}started_at'],
      )!,
      endedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ended_at'],
      ),
      distanceM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}distance_m'],
      )!,
      movingTimeS: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}moving_time_s'],
      )!,
      elapsedTimeS: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}elapsed_time_s'],
      )!,
      avgPaceSPerKm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_pace_s_per_km'],
      ),
      elevGainM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}elev_gain_m'],
      )!,
      elevLossM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}elev_loss_m'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $RunsTable createAlias(String alias) {
    return $RunsTable(attachedDatabase, alias);
  }
}

class RunRow extends DataClass implements Insertable<RunRow> {
  final int id;
  final DateTime startedAt;

  /// null = běh probíhá (nebo appka spadla uprostřed — obnoví se při startu).
  final DateTime? endedAt;
  final double distanceM;
  final double movingTimeS;
  final double elapsedTimeS;
  final double? avgPaceSPerKm;
  final double elevGainM;
  final double elevLossM;
  final String? notes;

  /// 'gps' | 'gpx_import'
  final String source;
  final DateTime? deletedAt;
  const RunRow({
    required this.id,
    required this.startedAt,
    this.endedAt,
    required this.distanceM,
    required this.movingTimeS,
    required this.elapsedTimeS,
    this.avgPaceSPerKm,
    required this.elevGainM,
    required this.elevLossM,
    this.notes,
    required this.source,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['started_at'] = Variable<DateTime>(startedAt);
    if (!nullToAbsent || endedAt != null) {
      map['ended_at'] = Variable<DateTime>(endedAt);
    }
    map['distance_m'] = Variable<double>(distanceM);
    map['moving_time_s'] = Variable<double>(movingTimeS);
    map['elapsed_time_s'] = Variable<double>(elapsedTimeS);
    if (!nullToAbsent || avgPaceSPerKm != null) {
      map['avg_pace_s_per_km'] = Variable<double>(avgPaceSPerKm);
    }
    map['elev_gain_m'] = Variable<double>(elevGainM);
    map['elev_loss_m'] = Variable<double>(elevLossM);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['source'] = Variable<String>(source);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  RunsCompanion toCompanion(bool nullToAbsent) {
    return RunsCompanion(
      id: Value(id),
      startedAt: Value(startedAt),
      endedAt: endedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endedAt),
      distanceM: Value(distanceM),
      movingTimeS: Value(movingTimeS),
      elapsedTimeS: Value(elapsedTimeS),
      avgPaceSPerKm: avgPaceSPerKm == null && nullToAbsent
          ? const Value.absent()
          : Value(avgPaceSPerKm),
      elevGainM: Value(elevGainM),
      elevLossM: Value(elevLossM),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      source: Value(source),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory RunRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RunRow(
      id: serializer.fromJson<int>(json['id']),
      startedAt: serializer.fromJson<DateTime>(json['startedAt']),
      endedAt: serializer.fromJson<DateTime?>(json['endedAt']),
      distanceM: serializer.fromJson<double>(json['distanceM']),
      movingTimeS: serializer.fromJson<double>(json['movingTimeS']),
      elapsedTimeS: serializer.fromJson<double>(json['elapsedTimeS']),
      avgPaceSPerKm: serializer.fromJson<double?>(json['avgPaceSPerKm']),
      elevGainM: serializer.fromJson<double>(json['elevGainM']),
      elevLossM: serializer.fromJson<double>(json['elevLossM']),
      notes: serializer.fromJson<String?>(json['notes']),
      source: serializer.fromJson<String>(json['source']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'startedAt': serializer.toJson<DateTime>(startedAt),
      'endedAt': serializer.toJson<DateTime?>(endedAt),
      'distanceM': serializer.toJson<double>(distanceM),
      'movingTimeS': serializer.toJson<double>(movingTimeS),
      'elapsedTimeS': serializer.toJson<double>(elapsedTimeS),
      'avgPaceSPerKm': serializer.toJson<double?>(avgPaceSPerKm),
      'elevGainM': serializer.toJson<double>(elevGainM),
      'elevLossM': serializer.toJson<double>(elevLossM),
      'notes': serializer.toJson<String?>(notes),
      'source': serializer.toJson<String>(source),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  RunRow copyWith({
    int? id,
    DateTime? startedAt,
    Value<DateTime?> endedAt = const Value.absent(),
    double? distanceM,
    double? movingTimeS,
    double? elapsedTimeS,
    Value<double?> avgPaceSPerKm = const Value.absent(),
    double? elevGainM,
    double? elevLossM,
    Value<String?> notes = const Value.absent(),
    String? source,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => RunRow(
    id: id ?? this.id,
    startedAt: startedAt ?? this.startedAt,
    endedAt: endedAt.present ? endedAt.value : this.endedAt,
    distanceM: distanceM ?? this.distanceM,
    movingTimeS: movingTimeS ?? this.movingTimeS,
    elapsedTimeS: elapsedTimeS ?? this.elapsedTimeS,
    avgPaceSPerKm: avgPaceSPerKm.present
        ? avgPaceSPerKm.value
        : this.avgPaceSPerKm,
    elevGainM: elevGainM ?? this.elevGainM,
    elevLossM: elevLossM ?? this.elevLossM,
    notes: notes.present ? notes.value : this.notes,
    source: source ?? this.source,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  RunRow copyWithCompanion(RunsCompanion data) {
    return RunRow(
      id: data.id.present ? data.id.value : this.id,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      distanceM: data.distanceM.present ? data.distanceM.value : this.distanceM,
      movingTimeS: data.movingTimeS.present
          ? data.movingTimeS.value
          : this.movingTimeS,
      elapsedTimeS: data.elapsedTimeS.present
          ? data.elapsedTimeS.value
          : this.elapsedTimeS,
      avgPaceSPerKm: data.avgPaceSPerKm.present
          ? data.avgPaceSPerKm.value
          : this.avgPaceSPerKm,
      elevGainM: data.elevGainM.present ? data.elevGainM.value : this.elevGainM,
      elevLossM: data.elevLossM.present ? data.elevLossM.value : this.elevLossM,
      notes: data.notes.present ? data.notes.value : this.notes,
      source: data.source.present ? data.source.value : this.source,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RunRow(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('distanceM: $distanceM, ')
          ..write('movingTimeS: $movingTimeS, ')
          ..write('elapsedTimeS: $elapsedTimeS, ')
          ..write('avgPaceSPerKm: $avgPaceSPerKm, ')
          ..write('elevGainM: $elevGainM, ')
          ..write('elevLossM: $elevLossM, ')
          ..write('notes: $notes, ')
          ..write('source: $source, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    startedAt,
    endedAt,
    distanceM,
    movingTimeS,
    elapsedTimeS,
    avgPaceSPerKm,
    elevGainM,
    elevLossM,
    notes,
    source,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RunRow &&
          other.id == this.id &&
          other.startedAt == this.startedAt &&
          other.endedAt == this.endedAt &&
          other.distanceM == this.distanceM &&
          other.movingTimeS == this.movingTimeS &&
          other.elapsedTimeS == this.elapsedTimeS &&
          other.avgPaceSPerKm == this.avgPaceSPerKm &&
          other.elevGainM == this.elevGainM &&
          other.elevLossM == this.elevLossM &&
          other.notes == this.notes &&
          other.source == this.source &&
          other.deletedAt == this.deletedAt);
}

class RunsCompanion extends UpdateCompanion<RunRow> {
  final Value<int> id;
  final Value<DateTime> startedAt;
  final Value<DateTime?> endedAt;
  final Value<double> distanceM;
  final Value<double> movingTimeS;
  final Value<double> elapsedTimeS;
  final Value<double?> avgPaceSPerKm;
  final Value<double> elevGainM;
  final Value<double> elevLossM;
  final Value<String?> notes;
  final Value<String> source;
  final Value<DateTime?> deletedAt;
  const RunsCompanion({
    this.id = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.distanceM = const Value.absent(),
    this.movingTimeS = const Value.absent(),
    this.elapsedTimeS = const Value.absent(),
    this.avgPaceSPerKm = const Value.absent(),
    this.elevGainM = const Value.absent(),
    this.elevLossM = const Value.absent(),
    this.notes = const Value.absent(),
    this.source = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  RunsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startedAt,
    this.endedAt = const Value.absent(),
    this.distanceM = const Value.absent(),
    this.movingTimeS = const Value.absent(),
    this.elapsedTimeS = const Value.absent(),
    this.avgPaceSPerKm = const Value.absent(),
    this.elevGainM = const Value.absent(),
    this.elevLossM = const Value.absent(),
    this.notes = const Value.absent(),
    this.source = const Value.absent(),
    this.deletedAt = const Value.absent(),
  }) : startedAt = Value(startedAt);
  static Insertable<RunRow> custom({
    Expression<int>? id,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? endedAt,
    Expression<double>? distanceM,
    Expression<double>? movingTimeS,
    Expression<double>? elapsedTimeS,
    Expression<double>? avgPaceSPerKm,
    Expression<double>? elevGainM,
    Expression<double>? elevLossM,
    Expression<String>? notes,
    Expression<String>? source,
    Expression<DateTime>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startedAt != null) 'started_at': startedAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (distanceM != null) 'distance_m': distanceM,
      if (movingTimeS != null) 'moving_time_s': movingTimeS,
      if (elapsedTimeS != null) 'elapsed_time_s': elapsedTimeS,
      if (avgPaceSPerKm != null) 'avg_pace_s_per_km': avgPaceSPerKm,
      if (elevGainM != null) 'elev_gain_m': elevGainM,
      if (elevLossM != null) 'elev_loss_m': elevLossM,
      if (notes != null) 'notes': notes,
      if (source != null) 'source': source,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  RunsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? startedAt,
    Value<DateTime?>? endedAt,
    Value<double>? distanceM,
    Value<double>? movingTimeS,
    Value<double>? elapsedTimeS,
    Value<double?>? avgPaceSPerKm,
    Value<double>? elevGainM,
    Value<double>? elevLossM,
    Value<String?>? notes,
    Value<String>? source,
    Value<DateTime?>? deletedAt,
  }) {
    return RunsCompanion(
      id: id ?? this.id,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      distanceM: distanceM ?? this.distanceM,
      movingTimeS: movingTimeS ?? this.movingTimeS,
      elapsedTimeS: elapsedTimeS ?? this.elapsedTimeS,
      avgPaceSPerKm: avgPaceSPerKm ?? this.avgPaceSPerKm,
      elevGainM: elevGainM ?? this.elevGainM,
      elevLossM: elevLossM ?? this.elevLossM,
      notes: notes ?? this.notes,
      source: source ?? this.source,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (distanceM.present) {
      map['distance_m'] = Variable<double>(distanceM.value);
    }
    if (movingTimeS.present) {
      map['moving_time_s'] = Variable<double>(movingTimeS.value);
    }
    if (elapsedTimeS.present) {
      map['elapsed_time_s'] = Variable<double>(elapsedTimeS.value);
    }
    if (avgPaceSPerKm.present) {
      map['avg_pace_s_per_km'] = Variable<double>(avgPaceSPerKm.value);
    }
    if (elevGainM.present) {
      map['elev_gain_m'] = Variable<double>(elevGainM.value);
    }
    if (elevLossM.present) {
      map['elev_loss_m'] = Variable<double>(elevLossM.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RunsCompanion(')
          ..write('id: $id, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('distanceM: $distanceM, ')
          ..write('movingTimeS: $movingTimeS, ')
          ..write('elapsedTimeS: $elapsedTimeS, ')
          ..write('avgPaceSPerKm: $avgPaceSPerKm, ')
          ..write('elevGainM: $elevGainM, ')
          ..write('elevLossM: $elevLossM, ')
          ..write('notes: $notes, ')
          ..write('source: $source, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $TrackPointsTable extends TrackPoints
    with TableInfo<$TrackPointsTable, TrackPointRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrackPointsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _runIdMeta = const VerificationMeta('runId');
  @override
  late final GeneratedColumn<int> runId = GeneratedColumn<int>(
    'run_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES runs (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tMeta = const VerificationMeta('t');
  @override
  late final GeneratedColumn<int> t = GeneratedColumn<int>(
    't',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<double> lat = GeneratedColumn<double>(
    'lat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lonMeta = const VerificationMeta('lon');
  @override
  late final GeneratedColumn<double> lon = GeneratedColumn<double>(
    'lon',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _altMeta = const VerificationMeta('alt');
  @override
  late final GeneratedColumn<double> alt = GeneratedColumn<double>(
    'alt',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accuracyMMeta = const VerificationMeta(
    'accuracyM',
  );
  @override
  late final GeneratedColumn<double> accuracyM = GeneratedColumn<double>(
    'accuracy_m',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speedMpsMeta = const VerificationMeta(
    'speedMps',
  );
  @override
  late final GeneratedColumn<double> speedMps = GeneratedColumn<double>(
    'speed_mps',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hrMeta = const VerificationMeta('hr');
  @override
  late final GeneratedColumn<int> hr = GeneratedColumn<int>(
    'hr',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cadenceSpmMeta = const VerificationMeta(
    'cadenceSpm',
  );
  @override
  late final GeneratedColumn<int> cadenceSpm = GeneratedColumn<int>(
    'cadence_spm',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    runId,
    t,
    lat,
    lon,
    alt,
    accuracyM,
    speedMps,
    hr,
    cadenceSpm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'track_points';
  @override
  VerificationContext validateIntegrity(
    Insertable<TrackPointRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('run_id')) {
      context.handle(
        _runIdMeta,
        runId.isAcceptableOrUnknown(data['run_id']!, _runIdMeta),
      );
    } else if (isInserting) {
      context.missing(_runIdMeta);
    }
    if (data.containsKey('t')) {
      context.handle(_tMeta, t.isAcceptableOrUnknown(data['t']!, _tMeta));
    } else if (isInserting) {
      context.missing(_tMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
        _latMeta,
        lat.isAcceptableOrUnknown(data['lat']!, _latMeta),
      );
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lon')) {
      context.handle(
        _lonMeta,
        lon.isAcceptableOrUnknown(data['lon']!, _lonMeta),
      );
    } else if (isInserting) {
      context.missing(_lonMeta);
    }
    if (data.containsKey('alt')) {
      context.handle(
        _altMeta,
        alt.isAcceptableOrUnknown(data['alt']!, _altMeta),
      );
    }
    if (data.containsKey('accuracy_m')) {
      context.handle(
        _accuracyMMeta,
        accuracyM.isAcceptableOrUnknown(data['accuracy_m']!, _accuracyMMeta),
      );
    }
    if (data.containsKey('speed_mps')) {
      context.handle(
        _speedMpsMeta,
        speedMps.isAcceptableOrUnknown(data['speed_mps']!, _speedMpsMeta),
      );
    }
    if (data.containsKey('hr')) {
      context.handle(_hrMeta, hr.isAcceptableOrUnknown(data['hr']!, _hrMeta));
    }
    if (data.containsKey('cadence_spm')) {
      context.handle(
        _cadenceSpmMeta,
        cadenceSpm.isAcceptableOrUnknown(data['cadence_spm']!, _cadenceSpmMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {runId, t};
  @override
  TrackPointRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrackPointRow(
      runId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}run_id'],
      )!,
      t: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}t'],
      )!,
      lat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lat'],
      )!,
      lon: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lon'],
      )!,
      alt: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}alt'],
      ),
      accuracyM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}accuracy_m'],
      ),
      speedMps: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}speed_mps'],
      ),
      hr: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hr'],
      ),
      cadenceSpm: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cadence_spm'],
      ),
    );
  }

  @override
  $TrackPointsTable createAlias(String alias) {
    return $TrackPointsTable(attachedDatabase, alias);
  }
}

class TrackPointRow extends DataClass implements Insertable<TrackPointRow> {
  final int runId;
  final int t;
  final double lat;
  final double lon;
  final double? alt;
  final double? accuracyM;
  final double? speedMps;

  /// Rezervováno pro senzory — v1 se nikdy neplní.
  final int? hr;
  final int? cadenceSpm;
  const TrackPointRow({
    required this.runId,
    required this.t,
    required this.lat,
    required this.lon,
    this.alt,
    this.accuracyM,
    this.speedMps,
    this.hr,
    this.cadenceSpm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['run_id'] = Variable<int>(runId);
    map['t'] = Variable<int>(t);
    map['lat'] = Variable<double>(lat);
    map['lon'] = Variable<double>(lon);
    if (!nullToAbsent || alt != null) {
      map['alt'] = Variable<double>(alt);
    }
    if (!nullToAbsent || accuracyM != null) {
      map['accuracy_m'] = Variable<double>(accuracyM);
    }
    if (!nullToAbsent || speedMps != null) {
      map['speed_mps'] = Variable<double>(speedMps);
    }
    if (!nullToAbsent || hr != null) {
      map['hr'] = Variable<int>(hr);
    }
    if (!nullToAbsent || cadenceSpm != null) {
      map['cadence_spm'] = Variable<int>(cadenceSpm);
    }
    return map;
  }

  TrackPointsCompanion toCompanion(bool nullToAbsent) {
    return TrackPointsCompanion(
      runId: Value(runId),
      t: Value(t),
      lat: Value(lat),
      lon: Value(lon),
      alt: alt == null && nullToAbsent ? const Value.absent() : Value(alt),
      accuracyM: accuracyM == null && nullToAbsent
          ? const Value.absent()
          : Value(accuracyM),
      speedMps: speedMps == null && nullToAbsent
          ? const Value.absent()
          : Value(speedMps),
      hr: hr == null && nullToAbsent ? const Value.absent() : Value(hr),
      cadenceSpm: cadenceSpm == null && nullToAbsent
          ? const Value.absent()
          : Value(cadenceSpm),
    );
  }

  factory TrackPointRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrackPointRow(
      runId: serializer.fromJson<int>(json['runId']),
      t: serializer.fromJson<int>(json['t']),
      lat: serializer.fromJson<double>(json['lat']),
      lon: serializer.fromJson<double>(json['lon']),
      alt: serializer.fromJson<double?>(json['alt']),
      accuracyM: serializer.fromJson<double?>(json['accuracyM']),
      speedMps: serializer.fromJson<double?>(json['speedMps']),
      hr: serializer.fromJson<int?>(json['hr']),
      cadenceSpm: serializer.fromJson<int?>(json['cadenceSpm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'runId': serializer.toJson<int>(runId),
      't': serializer.toJson<int>(t),
      'lat': serializer.toJson<double>(lat),
      'lon': serializer.toJson<double>(lon),
      'alt': serializer.toJson<double?>(alt),
      'accuracyM': serializer.toJson<double?>(accuracyM),
      'speedMps': serializer.toJson<double?>(speedMps),
      'hr': serializer.toJson<int?>(hr),
      'cadenceSpm': serializer.toJson<int?>(cadenceSpm),
    };
  }

  TrackPointRow copyWith({
    int? runId,
    int? t,
    double? lat,
    double? lon,
    Value<double?> alt = const Value.absent(),
    Value<double?> accuracyM = const Value.absent(),
    Value<double?> speedMps = const Value.absent(),
    Value<int?> hr = const Value.absent(),
    Value<int?> cadenceSpm = const Value.absent(),
  }) => TrackPointRow(
    runId: runId ?? this.runId,
    t: t ?? this.t,
    lat: lat ?? this.lat,
    lon: lon ?? this.lon,
    alt: alt.present ? alt.value : this.alt,
    accuracyM: accuracyM.present ? accuracyM.value : this.accuracyM,
    speedMps: speedMps.present ? speedMps.value : this.speedMps,
    hr: hr.present ? hr.value : this.hr,
    cadenceSpm: cadenceSpm.present ? cadenceSpm.value : this.cadenceSpm,
  );
  TrackPointRow copyWithCompanion(TrackPointsCompanion data) {
    return TrackPointRow(
      runId: data.runId.present ? data.runId.value : this.runId,
      t: data.t.present ? data.t.value : this.t,
      lat: data.lat.present ? data.lat.value : this.lat,
      lon: data.lon.present ? data.lon.value : this.lon,
      alt: data.alt.present ? data.alt.value : this.alt,
      accuracyM: data.accuracyM.present ? data.accuracyM.value : this.accuracyM,
      speedMps: data.speedMps.present ? data.speedMps.value : this.speedMps,
      hr: data.hr.present ? data.hr.value : this.hr,
      cadenceSpm: data.cadenceSpm.present
          ? data.cadenceSpm.value
          : this.cadenceSpm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrackPointRow(')
          ..write('runId: $runId, ')
          ..write('t: $t, ')
          ..write('lat: $lat, ')
          ..write('lon: $lon, ')
          ..write('alt: $alt, ')
          ..write('accuracyM: $accuracyM, ')
          ..write('speedMps: $speedMps, ')
          ..write('hr: $hr, ')
          ..write('cadenceSpm: $cadenceSpm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(runId, t, lat, lon, alt, accuracyM, speedMps, hr, cadenceSpm);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrackPointRow &&
          other.runId == this.runId &&
          other.t == this.t &&
          other.lat == this.lat &&
          other.lon == this.lon &&
          other.alt == this.alt &&
          other.accuracyM == this.accuracyM &&
          other.speedMps == this.speedMps &&
          other.hr == this.hr &&
          other.cadenceSpm == this.cadenceSpm);
}

class TrackPointsCompanion extends UpdateCompanion<TrackPointRow> {
  final Value<int> runId;
  final Value<int> t;
  final Value<double> lat;
  final Value<double> lon;
  final Value<double?> alt;
  final Value<double?> accuracyM;
  final Value<double?> speedMps;
  final Value<int?> hr;
  final Value<int?> cadenceSpm;
  final Value<int> rowid;
  const TrackPointsCompanion({
    this.runId = const Value.absent(),
    this.t = const Value.absent(),
    this.lat = const Value.absent(),
    this.lon = const Value.absent(),
    this.alt = const Value.absent(),
    this.accuracyM = const Value.absent(),
    this.speedMps = const Value.absent(),
    this.hr = const Value.absent(),
    this.cadenceSpm = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TrackPointsCompanion.insert({
    required int runId,
    required int t,
    required double lat,
    required double lon,
    this.alt = const Value.absent(),
    this.accuracyM = const Value.absent(),
    this.speedMps = const Value.absent(),
    this.hr = const Value.absent(),
    this.cadenceSpm = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : runId = Value(runId),
       t = Value(t),
       lat = Value(lat),
       lon = Value(lon);
  static Insertable<TrackPointRow> custom({
    Expression<int>? runId,
    Expression<int>? t,
    Expression<double>? lat,
    Expression<double>? lon,
    Expression<double>? alt,
    Expression<double>? accuracyM,
    Expression<double>? speedMps,
    Expression<int>? hr,
    Expression<int>? cadenceSpm,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (runId != null) 'run_id': runId,
      if (t != null) 't': t,
      if (lat != null) 'lat': lat,
      if (lon != null) 'lon': lon,
      if (alt != null) 'alt': alt,
      if (accuracyM != null) 'accuracy_m': accuracyM,
      if (speedMps != null) 'speed_mps': speedMps,
      if (hr != null) 'hr': hr,
      if (cadenceSpm != null) 'cadence_spm': cadenceSpm,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TrackPointsCompanion copyWith({
    Value<int>? runId,
    Value<int>? t,
    Value<double>? lat,
    Value<double>? lon,
    Value<double?>? alt,
    Value<double?>? accuracyM,
    Value<double?>? speedMps,
    Value<int?>? hr,
    Value<int?>? cadenceSpm,
    Value<int>? rowid,
  }) {
    return TrackPointsCompanion(
      runId: runId ?? this.runId,
      t: t ?? this.t,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      alt: alt ?? this.alt,
      accuracyM: accuracyM ?? this.accuracyM,
      speedMps: speedMps ?? this.speedMps,
      hr: hr ?? this.hr,
      cadenceSpm: cadenceSpm ?? this.cadenceSpm,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (runId.present) {
      map['run_id'] = Variable<int>(runId.value);
    }
    if (t.present) {
      map['t'] = Variable<int>(t.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (lon.present) {
      map['lon'] = Variable<double>(lon.value);
    }
    if (alt.present) {
      map['alt'] = Variable<double>(alt.value);
    }
    if (accuracyM.present) {
      map['accuracy_m'] = Variable<double>(accuracyM.value);
    }
    if (speedMps.present) {
      map['speed_mps'] = Variable<double>(speedMps.value);
    }
    if (hr.present) {
      map['hr'] = Variable<int>(hr.value);
    }
    if (cadenceSpm.present) {
      map['cadence_spm'] = Variable<int>(cadenceSpm.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrackPointsCompanion(')
          ..write('runId: $runId, ')
          ..write('t: $t, ')
          ..write('lat: $lat, ')
          ..write('lon: $lon, ')
          ..write('alt: $alt, ')
          ..write('accuracyM: $accuracyM, ')
          ..write('speedMps: $speedMps, ')
          ..write('hr: $hr, ')
          ..write('cadenceSpm: $cadenceSpm, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SplitsTable extends Splits with TableInfo<$SplitsTable, SplitRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SplitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _runIdMeta = const VerificationMeta('runId');
  @override
  late final GeneratedColumn<int> runId = GeneratedColumn<int>(
    'run_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES runs (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _kmIndexMeta = const VerificationMeta(
    'kmIndex',
  );
  @override
  late final GeneratedColumn<int> kmIndex = GeneratedColumn<int>(
    'km_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paceSPerKmMeta = const VerificationMeta(
    'paceSPerKm',
  );
  @override
  late final GeneratedColumn<double> paceSPerKm = GeneratedColumn<double>(
    'pace_s_per_km',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _elevDeltaMMeta = const VerificationMeta(
    'elevDeltaM',
  );
  @override
  late final GeneratedColumn<double> elevDeltaM = GeneratedColumn<double>(
    'elev_delta_m',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    runId,
    kmIndex,
    paceSPerKm,
    elevDeltaM,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'splits';
  @override
  VerificationContext validateIntegrity(
    Insertable<SplitRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('run_id')) {
      context.handle(
        _runIdMeta,
        runId.isAcceptableOrUnknown(data['run_id']!, _runIdMeta),
      );
    } else if (isInserting) {
      context.missing(_runIdMeta);
    }
    if (data.containsKey('km_index')) {
      context.handle(
        _kmIndexMeta,
        kmIndex.isAcceptableOrUnknown(data['km_index']!, _kmIndexMeta),
      );
    } else if (isInserting) {
      context.missing(_kmIndexMeta);
    }
    if (data.containsKey('pace_s_per_km')) {
      context.handle(
        _paceSPerKmMeta,
        paceSPerKm.isAcceptableOrUnknown(
          data['pace_s_per_km']!,
          _paceSPerKmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paceSPerKmMeta);
    }
    if (data.containsKey('elev_delta_m')) {
      context.handle(
        _elevDeltaMMeta,
        elevDeltaM.isAcceptableOrUnknown(
          data['elev_delta_m']!,
          _elevDeltaMMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_elevDeltaMMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {runId, kmIndex};
  @override
  SplitRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SplitRow(
      runId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}run_id'],
      )!,
      kmIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}km_index'],
      )!,
      paceSPerKm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pace_s_per_km'],
      )!,
      elevDeltaM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}elev_delta_m'],
      )!,
    );
  }

  @override
  $SplitsTable createAlias(String alias) {
    return $SplitsTable(attachedDatabase, alias);
  }
}

class SplitRow extends DataClass implements Insertable<SplitRow> {
  final int runId;
  final int kmIndex;
  final double paceSPerKm;
  final double elevDeltaM;
  const SplitRow({
    required this.runId,
    required this.kmIndex,
    required this.paceSPerKm,
    required this.elevDeltaM,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['run_id'] = Variable<int>(runId);
    map['km_index'] = Variable<int>(kmIndex);
    map['pace_s_per_km'] = Variable<double>(paceSPerKm);
    map['elev_delta_m'] = Variable<double>(elevDeltaM);
    return map;
  }

  SplitsCompanion toCompanion(bool nullToAbsent) {
    return SplitsCompanion(
      runId: Value(runId),
      kmIndex: Value(kmIndex),
      paceSPerKm: Value(paceSPerKm),
      elevDeltaM: Value(elevDeltaM),
    );
  }

  factory SplitRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SplitRow(
      runId: serializer.fromJson<int>(json['runId']),
      kmIndex: serializer.fromJson<int>(json['kmIndex']),
      paceSPerKm: serializer.fromJson<double>(json['paceSPerKm']),
      elevDeltaM: serializer.fromJson<double>(json['elevDeltaM']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'runId': serializer.toJson<int>(runId),
      'kmIndex': serializer.toJson<int>(kmIndex),
      'paceSPerKm': serializer.toJson<double>(paceSPerKm),
      'elevDeltaM': serializer.toJson<double>(elevDeltaM),
    };
  }

  SplitRow copyWith({
    int? runId,
    int? kmIndex,
    double? paceSPerKm,
    double? elevDeltaM,
  }) => SplitRow(
    runId: runId ?? this.runId,
    kmIndex: kmIndex ?? this.kmIndex,
    paceSPerKm: paceSPerKm ?? this.paceSPerKm,
    elevDeltaM: elevDeltaM ?? this.elevDeltaM,
  );
  SplitRow copyWithCompanion(SplitsCompanion data) {
    return SplitRow(
      runId: data.runId.present ? data.runId.value : this.runId,
      kmIndex: data.kmIndex.present ? data.kmIndex.value : this.kmIndex,
      paceSPerKm: data.paceSPerKm.present
          ? data.paceSPerKm.value
          : this.paceSPerKm,
      elevDeltaM: data.elevDeltaM.present
          ? data.elevDeltaM.value
          : this.elevDeltaM,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SplitRow(')
          ..write('runId: $runId, ')
          ..write('kmIndex: $kmIndex, ')
          ..write('paceSPerKm: $paceSPerKm, ')
          ..write('elevDeltaM: $elevDeltaM')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(runId, kmIndex, paceSPerKm, elevDeltaM);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SplitRow &&
          other.runId == this.runId &&
          other.kmIndex == this.kmIndex &&
          other.paceSPerKm == this.paceSPerKm &&
          other.elevDeltaM == this.elevDeltaM);
}

class SplitsCompanion extends UpdateCompanion<SplitRow> {
  final Value<int> runId;
  final Value<int> kmIndex;
  final Value<double> paceSPerKm;
  final Value<double> elevDeltaM;
  final Value<int> rowid;
  const SplitsCompanion({
    this.runId = const Value.absent(),
    this.kmIndex = const Value.absent(),
    this.paceSPerKm = const Value.absent(),
    this.elevDeltaM = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SplitsCompanion.insert({
    required int runId,
    required int kmIndex,
    required double paceSPerKm,
    required double elevDeltaM,
    this.rowid = const Value.absent(),
  }) : runId = Value(runId),
       kmIndex = Value(kmIndex),
       paceSPerKm = Value(paceSPerKm),
       elevDeltaM = Value(elevDeltaM);
  static Insertable<SplitRow> custom({
    Expression<int>? runId,
    Expression<int>? kmIndex,
    Expression<double>? paceSPerKm,
    Expression<double>? elevDeltaM,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (runId != null) 'run_id': runId,
      if (kmIndex != null) 'km_index': kmIndex,
      if (paceSPerKm != null) 'pace_s_per_km': paceSPerKm,
      if (elevDeltaM != null) 'elev_delta_m': elevDeltaM,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SplitsCompanion copyWith({
    Value<int>? runId,
    Value<int>? kmIndex,
    Value<double>? paceSPerKm,
    Value<double>? elevDeltaM,
    Value<int>? rowid,
  }) {
    return SplitsCompanion(
      runId: runId ?? this.runId,
      kmIndex: kmIndex ?? this.kmIndex,
      paceSPerKm: paceSPerKm ?? this.paceSPerKm,
      elevDeltaM: elevDeltaM ?? this.elevDeltaM,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (runId.present) {
      map['run_id'] = Variable<int>(runId.value);
    }
    if (kmIndex.present) {
      map['km_index'] = Variable<int>(kmIndex.value);
    }
    if (paceSPerKm.present) {
      map['pace_s_per_km'] = Variable<double>(paceSPerKm.value);
    }
    if (elevDeltaM.present) {
      map['elev_delta_m'] = Variable<double>(elevDeltaM.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SplitsCompanion(')
          ..write('runId: $runId, ')
          ..write('kmIndex: $kmIndex, ')
          ..write('paceSPerKm: $paceSPerKm, ')
          ..write('elevDeltaM: $elevDeltaM, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class SettingRow extends DataClass implements Insertable<SettingRow> {
  final String key;
  final String value;
  const SettingRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(key: Value(key), value: Value(value));
  }

  factory SettingRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingRow copyWith({String? key, String? value}) =>
      SettingRow(key: key ?? this.key, value: value ?? this.value);
  SettingRow copyWithCompanion(SettingsCompanion data) {
    return SettingRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingRow &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingsCompanion extends UpdateCompanion<SettingRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SettingRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $RunsTable runs = $RunsTable(this);
  late final $TrackPointsTable trackPoints = $TrackPointsTable(this);
  late final $SplitsTable splits = $SplitsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    runs,
    trackPoints,
    splits,
    settings,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'runs',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('track_points', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'runs',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('splits', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$RunsTableCreateCompanionBuilder =
    RunsCompanion Function({
      Value<int> id,
      required DateTime startedAt,
      Value<DateTime?> endedAt,
      Value<double> distanceM,
      Value<double> movingTimeS,
      Value<double> elapsedTimeS,
      Value<double?> avgPaceSPerKm,
      Value<double> elevGainM,
      Value<double> elevLossM,
      Value<String?> notes,
      Value<String> source,
      Value<DateTime?> deletedAt,
    });
typedef $$RunsTableUpdateCompanionBuilder =
    RunsCompanion Function({
      Value<int> id,
      Value<DateTime> startedAt,
      Value<DateTime?> endedAt,
      Value<double> distanceM,
      Value<double> movingTimeS,
      Value<double> elapsedTimeS,
      Value<double?> avgPaceSPerKm,
      Value<double> elevGainM,
      Value<double> elevLossM,
      Value<String?> notes,
      Value<String> source,
      Value<DateTime?> deletedAt,
    });

final class $$RunsTableReferences
    extends BaseReferences<_$AppDb, $RunsTable, RunRow> {
  $$RunsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TrackPointsTable, List<TrackPointRow>>
  _trackPointsRefsTable(_$AppDb db) => MultiTypedResultKey.fromTable(
    db.trackPoints,
    aliasName: 'runs__id__track_points__run_id',
  );

  $$TrackPointsTableProcessedTableManager get trackPointsRefs {
    final manager = $$TrackPointsTableTableManager(
      $_db,
      $_db.trackPoints,
    ).filter((f) => f.runId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_trackPointsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SplitsTable, List<SplitRow>> _splitsRefsTable(
    _$AppDb db,
  ) => MultiTypedResultKey.fromTable(
    db.splits,
    aliasName: 'runs__id__splits__run_id',
  );

  $$SplitsTableProcessedTableManager get splitsRefs {
    final manager = $$SplitsTableTableManager(
      $_db,
      $_db.splits,
    ).filter((f) => f.runId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_splitsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RunsTableFilterComposer extends Composer<_$AppDb, $RunsTable> {
  $$RunsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get distanceM => $composableBuilder(
    column: $table.distanceM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get movingTimeS => $composableBuilder(
    column: $table.movingTimeS,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get elapsedTimeS => $composableBuilder(
    column: $table.elapsedTimeS,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgPaceSPerKm => $composableBuilder(
    column: $table.avgPaceSPerKm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get elevGainM => $composableBuilder(
    column: $table.elevGainM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get elevLossM => $composableBuilder(
    column: $table.elevLossM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> trackPointsRefs(
    Expression<bool> Function($$TrackPointsTableFilterComposer f) f,
  ) {
    final $$TrackPointsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.trackPoints,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrackPointsTableFilterComposer(
            $db: $db,
            $table: $db.trackPoints,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> splitsRefs(
    Expression<bool> Function($$SplitsTableFilterComposer f) f,
  ) {
    final $$SplitsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.splits,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SplitsTableFilterComposer(
            $db: $db,
            $table: $db.splits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RunsTableOrderingComposer extends Composer<_$AppDb, $RunsTable> {
  $$RunsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
    column: $table.endedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get distanceM => $composableBuilder(
    column: $table.distanceM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get movingTimeS => $composableBuilder(
    column: $table.movingTimeS,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get elapsedTimeS => $composableBuilder(
    column: $table.elapsedTimeS,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgPaceSPerKm => $composableBuilder(
    column: $table.avgPaceSPerKm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get elevGainM => $composableBuilder(
    column: $table.elevGainM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get elevLossM => $composableBuilder(
    column: $table.elevLossM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RunsTableAnnotationComposer extends Composer<_$AppDb, $RunsTable> {
  $$RunsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<double> get distanceM =>
      $composableBuilder(column: $table.distanceM, builder: (column) => column);

  GeneratedColumn<double> get movingTimeS => $composableBuilder(
    column: $table.movingTimeS,
    builder: (column) => column,
  );

  GeneratedColumn<double> get elapsedTimeS => $composableBuilder(
    column: $table.elapsedTimeS,
    builder: (column) => column,
  );

  GeneratedColumn<double> get avgPaceSPerKm => $composableBuilder(
    column: $table.avgPaceSPerKm,
    builder: (column) => column,
  );

  GeneratedColumn<double> get elevGainM =>
      $composableBuilder(column: $table.elevGainM, builder: (column) => column);

  GeneratedColumn<double> get elevLossM =>
      $composableBuilder(column: $table.elevLossM, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> trackPointsRefs<T extends Object>(
    Expression<T> Function($$TrackPointsTableAnnotationComposer a) f,
  ) {
    final $$TrackPointsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.trackPoints,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrackPointsTableAnnotationComposer(
            $db: $db,
            $table: $db.trackPoints,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> splitsRefs<T extends Object>(
    Expression<T> Function($$SplitsTableAnnotationComposer a) f,
  ) {
    final $$SplitsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.splits,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SplitsTableAnnotationComposer(
            $db: $db,
            $table: $db.splits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RunsTableTableManager
    extends
        RootTableManager<
          _$AppDb,
          $RunsTable,
          RunRow,
          $$RunsTableFilterComposer,
          $$RunsTableOrderingComposer,
          $$RunsTableAnnotationComposer,
          $$RunsTableCreateCompanionBuilder,
          $$RunsTableUpdateCompanionBuilder,
          (RunRow, $$RunsTableReferences),
          RunRow,
          PrefetchHooks Function({bool trackPointsRefs, bool splitsRefs})
        > {
  $$RunsTableTableManager(_$AppDb db, $RunsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RunsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RunsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RunsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> startedAt = const Value.absent(),
                Value<DateTime?> endedAt = const Value.absent(),
                Value<double> distanceM = const Value.absent(),
                Value<double> movingTimeS = const Value.absent(),
                Value<double> elapsedTimeS = const Value.absent(),
                Value<double?> avgPaceSPerKm = const Value.absent(),
                Value<double> elevGainM = const Value.absent(),
                Value<double> elevLossM = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
              }) => RunsCompanion(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                distanceM: distanceM,
                movingTimeS: movingTimeS,
                elapsedTimeS: elapsedTimeS,
                avgPaceSPerKm: avgPaceSPerKm,
                elevGainM: elevGainM,
                elevLossM: elevLossM,
                notes: notes,
                source: source,
                deletedAt: deletedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime startedAt,
                Value<DateTime?> endedAt = const Value.absent(),
                Value<double> distanceM = const Value.absent(),
                Value<double> movingTimeS = const Value.absent(),
                Value<double> elapsedTimeS = const Value.absent(),
                Value<double?> avgPaceSPerKm = const Value.absent(),
                Value<double> elevGainM = const Value.absent(),
                Value<double> elevLossM = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
              }) => RunsCompanion.insert(
                id: id,
                startedAt: startedAt,
                endedAt: endedAt,
                distanceM: distanceM,
                movingTimeS: movingTimeS,
                elapsedTimeS: elapsedTimeS,
                avgPaceSPerKm: avgPaceSPerKm,
                elevGainM: elevGainM,
                elevLossM: elevLossM,
                notes: notes,
                source: source,
                deletedAt: deletedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RunsTable, RunRow>(table),
                  $$RunsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({trackPointsRefs = false, splitsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (trackPointsRefs) db.trackPoints,
                    if (splitsRefs) db.splits,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (trackPointsRefs)
                        await $_getPrefetchedDataByColumns<
                          RunRow,
                          $RunsTable,
                          TrackPointRow,
                          $TrackPointsTable
                        >(
                          currentTable: table,
                          referencedTable: $$RunsTableReferences
                              ._trackPointsRefsTable(db),
                          managerFromTypedResult: (p0) => $$RunsTableReferences(
                            db,
                            table,
                            p0,
                          ).trackPointsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'run_id',
                          typedResults: items,
                        ),
                      if (splitsRefs)
                        await $_getPrefetchedDataByColumns<
                          RunRow,
                          $RunsTable,
                          SplitRow,
                          $SplitsTable
                        >(
                          currentTable: table,
                          referencedTable: $$RunsTableReferences
                              ._splitsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RunsTableReferences(db, table, p0).splitsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'run_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RunsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDb,
      $RunsTable,
      RunRow,
      $$RunsTableFilterComposer,
      $$RunsTableOrderingComposer,
      $$RunsTableAnnotationComposer,
      $$RunsTableCreateCompanionBuilder,
      $$RunsTableUpdateCompanionBuilder,
      (RunRow, $$RunsTableReferences),
      RunRow,
      PrefetchHooks Function({bool trackPointsRefs, bool splitsRefs})
    >;
typedef $$TrackPointsTableCreateCompanionBuilder =
    TrackPointsCompanion Function({
      required int runId,
      required int t,
      required double lat,
      required double lon,
      Value<double?> alt,
      Value<double?> accuracyM,
      Value<double?> speedMps,
      Value<int?> hr,
      Value<int?> cadenceSpm,
      Value<int> rowid,
    });
typedef $$TrackPointsTableUpdateCompanionBuilder =
    TrackPointsCompanion Function({
      Value<int> runId,
      Value<int> t,
      Value<double> lat,
      Value<double> lon,
      Value<double?> alt,
      Value<double?> accuracyM,
      Value<double?> speedMps,
      Value<int?> hr,
      Value<int?> cadenceSpm,
      Value<int> rowid,
    });

final class $$TrackPointsTableReferences
    extends BaseReferences<_$AppDb, $TrackPointsTable, TrackPointRow> {
  $$TrackPointsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RunsTable _runIdTable(_$AppDb db) =>
      db.runs.createAlias('track_points__run_id__runs__id');

  $$RunsTableProcessedTableManager get runId {
    final $_column = $_itemColumn<int>('run_id')!;

    final manager = $$RunsTableTableManager(
      $_db,
      $_db.runs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_runIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TrackPointsTableFilterComposer
    extends Composer<_$AppDb, $TrackPointsTable> {
  $$TrackPointsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get t => $composableBuilder(
    column: $table.t,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lon => $composableBuilder(
    column: $table.lon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get alt => $composableBuilder(
    column: $table.alt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get accuracyM => $composableBuilder(
    column: $table.accuracyM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get speedMps => $composableBuilder(
    column: $table.speedMps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hr => $composableBuilder(
    column: $table.hr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cadenceSpm => $composableBuilder(
    column: $table.cadenceSpm,
    builder: (column) => ColumnFilters(column),
  );

  $$RunsTableFilterComposer get runId {
    final $$RunsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableFilterComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrackPointsTableOrderingComposer
    extends Composer<_$AppDb, $TrackPointsTable> {
  $$TrackPointsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get t => $composableBuilder(
    column: $table.t,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lon => $composableBuilder(
    column: $table.lon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get alt => $composableBuilder(
    column: $table.alt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get accuracyM => $composableBuilder(
    column: $table.accuracyM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get speedMps => $composableBuilder(
    column: $table.speedMps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hr => $composableBuilder(
    column: $table.hr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cadenceSpm => $composableBuilder(
    column: $table.cadenceSpm,
    builder: (column) => ColumnOrderings(column),
  );

  $$RunsTableOrderingComposer get runId {
    final $$RunsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableOrderingComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrackPointsTableAnnotationComposer
    extends Composer<_$AppDb, $TrackPointsTable> {
  $$TrackPointsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get t =>
      $composableBuilder(column: $table.t, builder: (column) => column);

  GeneratedColumn<double> get lat =>
      $composableBuilder(column: $table.lat, builder: (column) => column);

  GeneratedColumn<double> get lon =>
      $composableBuilder(column: $table.lon, builder: (column) => column);

  GeneratedColumn<double> get alt =>
      $composableBuilder(column: $table.alt, builder: (column) => column);

  GeneratedColumn<double> get accuracyM =>
      $composableBuilder(column: $table.accuracyM, builder: (column) => column);

  GeneratedColumn<double> get speedMps =>
      $composableBuilder(column: $table.speedMps, builder: (column) => column);

  GeneratedColumn<int> get hr =>
      $composableBuilder(column: $table.hr, builder: (column) => column);

  GeneratedColumn<int> get cadenceSpm => $composableBuilder(
    column: $table.cadenceSpm,
    builder: (column) => column,
  );

  $$RunsTableAnnotationComposer get runId {
    final $$RunsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableAnnotationComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrackPointsTableTableManager
    extends
        RootTableManager<
          _$AppDb,
          $TrackPointsTable,
          TrackPointRow,
          $$TrackPointsTableFilterComposer,
          $$TrackPointsTableOrderingComposer,
          $$TrackPointsTableAnnotationComposer,
          $$TrackPointsTableCreateCompanionBuilder,
          $$TrackPointsTableUpdateCompanionBuilder,
          (TrackPointRow, $$TrackPointsTableReferences),
          TrackPointRow,
          PrefetchHooks Function({bool runId})
        > {
  $$TrackPointsTableTableManager(_$AppDb db, $TrackPointsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TrackPointsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TrackPointsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TrackPointsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> runId = const Value.absent(),
                Value<int> t = const Value.absent(),
                Value<double> lat = const Value.absent(),
                Value<double> lon = const Value.absent(),
                Value<double?> alt = const Value.absent(),
                Value<double?> accuracyM = const Value.absent(),
                Value<double?> speedMps = const Value.absent(),
                Value<int?> hr = const Value.absent(),
                Value<int?> cadenceSpm = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TrackPointsCompanion(
                runId: runId,
                t: t,
                lat: lat,
                lon: lon,
                alt: alt,
                accuracyM: accuracyM,
                speedMps: speedMps,
                hr: hr,
                cadenceSpm: cadenceSpm,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int runId,
                required int t,
                required double lat,
                required double lon,
                Value<double?> alt = const Value.absent(),
                Value<double?> accuracyM = const Value.absent(),
                Value<double?> speedMps = const Value.absent(),
                Value<int?> hr = const Value.absent(),
                Value<int?> cadenceSpm = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TrackPointsCompanion.insert(
                runId: runId,
                t: t,
                lat: lat,
                lon: lon,
                alt: alt,
                accuracyM: accuracyM,
                speedMps: speedMps,
                hr: hr,
                cadenceSpm: cadenceSpm,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TrackPointsTable, TrackPointRow>(table),
                  $$TrackPointsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({runId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (runId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.runId,
                                referencedTable: $$TrackPointsTableReferences
                                    ._runIdTable(db),
                                referencedColumn: $$TrackPointsTableReferences
                                    ._runIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TrackPointsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDb,
      $TrackPointsTable,
      TrackPointRow,
      $$TrackPointsTableFilterComposer,
      $$TrackPointsTableOrderingComposer,
      $$TrackPointsTableAnnotationComposer,
      $$TrackPointsTableCreateCompanionBuilder,
      $$TrackPointsTableUpdateCompanionBuilder,
      (TrackPointRow, $$TrackPointsTableReferences),
      TrackPointRow,
      PrefetchHooks Function({bool runId})
    >;
typedef $$SplitsTableCreateCompanionBuilder =
    SplitsCompanion Function({
      required int runId,
      required int kmIndex,
      required double paceSPerKm,
      required double elevDeltaM,
      Value<int> rowid,
    });
typedef $$SplitsTableUpdateCompanionBuilder =
    SplitsCompanion Function({
      Value<int> runId,
      Value<int> kmIndex,
      Value<double> paceSPerKm,
      Value<double> elevDeltaM,
      Value<int> rowid,
    });

final class $$SplitsTableReferences
    extends BaseReferences<_$AppDb, $SplitsTable, SplitRow> {
  $$SplitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RunsTable _runIdTable(_$AppDb db) =>
      db.runs.createAlias('splits__run_id__runs__id');

  $$RunsTableProcessedTableManager get runId {
    final $_column = $_itemColumn<int>('run_id')!;

    final manager = $$RunsTableTableManager(
      $_db,
      $_db.runs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_runIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SplitsTableFilterComposer extends Composer<_$AppDb, $SplitsTable> {
  $$SplitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get kmIndex => $composableBuilder(
    column: $table.kmIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get paceSPerKm => $composableBuilder(
    column: $table.paceSPerKm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get elevDeltaM => $composableBuilder(
    column: $table.elevDeltaM,
    builder: (column) => ColumnFilters(column),
  );

  $$RunsTableFilterComposer get runId {
    final $$RunsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableFilterComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SplitsTableOrderingComposer extends Composer<_$AppDb, $SplitsTable> {
  $$SplitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get kmIndex => $composableBuilder(
    column: $table.kmIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get paceSPerKm => $composableBuilder(
    column: $table.paceSPerKm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get elevDeltaM => $composableBuilder(
    column: $table.elevDeltaM,
    builder: (column) => ColumnOrderings(column),
  );

  $$RunsTableOrderingComposer get runId {
    final $$RunsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableOrderingComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SplitsTableAnnotationComposer extends Composer<_$AppDb, $SplitsTable> {
  $$SplitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get kmIndex =>
      $composableBuilder(column: $table.kmIndex, builder: (column) => column);

  GeneratedColumn<double> get paceSPerKm => $composableBuilder(
    column: $table.paceSPerKm,
    builder: (column) => column,
  );

  GeneratedColumn<double> get elevDeltaM => $composableBuilder(
    column: $table.elevDeltaM,
    builder: (column) => column,
  );

  $$RunsTableAnnotationComposer get runId {
    final $$RunsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableAnnotationComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SplitsTableTableManager
    extends
        RootTableManager<
          _$AppDb,
          $SplitsTable,
          SplitRow,
          $$SplitsTableFilterComposer,
          $$SplitsTableOrderingComposer,
          $$SplitsTableAnnotationComposer,
          $$SplitsTableCreateCompanionBuilder,
          $$SplitsTableUpdateCompanionBuilder,
          (SplitRow, $$SplitsTableReferences),
          SplitRow,
          PrefetchHooks Function({bool runId})
        > {
  $$SplitsTableTableManager(_$AppDb db, $SplitsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SplitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SplitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SplitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> runId = const Value.absent(),
                Value<int> kmIndex = const Value.absent(),
                Value<double> paceSPerKm = const Value.absent(),
                Value<double> elevDeltaM = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SplitsCompanion(
                runId: runId,
                kmIndex: kmIndex,
                paceSPerKm: paceSPerKm,
                elevDeltaM: elevDeltaM,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int runId,
                required int kmIndex,
                required double paceSPerKm,
                required double elevDeltaM,
                Value<int> rowid = const Value.absent(),
              }) => SplitsCompanion.insert(
                runId: runId,
                kmIndex: kmIndex,
                paceSPerKm: paceSPerKm,
                elevDeltaM: elevDeltaM,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SplitsTable, SplitRow>(table),
                  $$SplitsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({runId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (runId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.runId,
                                referencedTable: $$SplitsTableReferences
                                    ._runIdTable(db),
                                referencedColumn: $$SplitsTableReferences
                                    ._runIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SplitsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDb,
      $SplitsTable,
      SplitRow,
      $$SplitsTableFilterComposer,
      $$SplitsTableOrderingComposer,
      $$SplitsTableAnnotationComposer,
      $$SplitsTableCreateCompanionBuilder,
      $$SplitsTableUpdateCompanionBuilder,
      (SplitRow, $$SplitsTableReferences),
      SplitRow,
      PrefetchHooks Function({bool runId})
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$SettingsTableFilterComposer extends Composer<_$AppDb, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDb, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDb, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDb,
          $SettingsTable,
          SettingRow,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (SettingRow, BaseReferences<_$AppDb, $SettingsTable, SettingRow>),
          SettingRow,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDb db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SettingsTable, SettingRow>(table),
                  BaseReferences<_$AppDb, $SettingsTable, SettingRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDb,
      $SettingsTable,
      SettingRow,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (SettingRow, BaseReferences<_$AppDb, $SettingsTable, SettingRow>),
      SettingRow,
      PrefetchHooks Function()
    >;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$RunsTableTableManager get runs => $$RunsTableTableManager(_db, _db.runs);
  $$TrackPointsTableTableManager get trackPoints =>
      $$TrackPointsTableTableManager(_db, _db.trackPoints);
  $$SplitsTableTableManager get splits =>
      $$SplitsTableTableManager(_db, _db.splits);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
