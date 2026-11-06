// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get back => 'Zurück';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Einstellungen';

  @override
  String get history_empty =>
      'Noch keine Läufe.\nSchuhe an und tipp auf Laufen.';

  @override
  String get history_run => 'Laufen';

  @override
  String get history_report => 'Bericht';

  @override
  String get history_paceSame => 'gleiches Tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s schneller';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s langsamer';
  }

  @override
  String get settings_title => 'Einstellungen';

  @override
  String get settings_units => 'Einheiten';

  @override
  String get settings_voiceLanguage => 'Sprache der Stimme';

  @override
  String get settings_cues => 'Ansagen';

  @override
  String get settings_cueVoice => 'Stimme';

  @override
  String get settings_cueTones => 'Töne';

  @override
  String get settings_cueBoth => 'Beides';

  @override
  String get settings_cueOff => 'Aus';

  @override
  String get settings_tonesHelp =>
      'Töne: zwei kurze = schneller, ein langer = langsamer, Stille = im Plan.';

  @override
  String get settings_cueInterval => 'Ansage-Intervall';

  @override
  String get settings_pacerGoal => 'Ziel nach deiner Form';

  @override
  String get settings_pacerHold => 'Nur halten';

  @override
  String get settings_pacerImprove => '2 % schneller';

  @override
  String get settings_autoPause => 'Auto-Pause, wenn du stehst';

  @override
  String get settings_metronome => 'Kadenz-Metronom';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps Schritte/min';
  }

  @override
  String get settings_mapLayer => 'Karte';

  @override
  String get settings_backup => 'Alle Läufe sichern (ZIP mit GPX)';

  @override
  String get settings_privacy =>
      'Keine Daten verlassen dein Handy. Běhánek hat kein Konto, keinen Server, keine Analyse und keine Werbung.';

  @override
  String get map_satellite => 'Satellit';

  @override
  String get map_topo => 'Wanderkarte';

  @override
  String get run_title => 'Lauf';

  @override
  String get run_locationOff =>
      'Der Standort ist auf deinem Handy aus. Ohne ihn kann ich den Lauf nicht aufzeichnen.';

  @override
  String get run_locationNeeded =>
      'Běhánek braucht den Standort „beim Verwenden der App“, um deine Strecke aufzuzeichnen. Er wird nirgendwohin geschickt und bleibt auf deinem Handy.';

  @override
  String get run_allowLocation => 'Standort erlauben';

  @override
  String get run_gpsSearching => 'Suche GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS sehr gut (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS gut (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS schwach (±$meters m) — warte kurz';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Geist: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: noch zu wenige Läufe — ich sage nur Zeit und Distanz an';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: deine Form aus $count Läufen';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: deine Form aus $count Läufen, 2 % schneller';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Geist';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Von hier bist du noch nicht gelaufen — der Geist braucht einen Lauf, der höchstens 300 m entfernt gestartet ist.';

  @override
  String get run_cancel => 'Abbrechen';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m vor dem Geist';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m hinter dem Geist';
  }

  @override
  String run_onTarget(String pace) {
    return 'im Plan ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s schneller als $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s langsamer als $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUSE';

  @override
  String get run_paused => 'PAUSE';

  @override
  String get run_weakGps => 'Schwaches GPS-Signal';

  @override
  String get run_resume => 'Weiter';

  @override
  String get run_pause => 'Pause';

  @override
  String get run_numbers => 'Zahlen';

  @override
  String get run_map => 'Karte';

  @override
  String get run_waitingForLocation => 'Warte auf Standort…';

  @override
  String get run_stopped => 'Lauf gestoppt';

  @override
  String get run_save => 'Speichern';

  @override
  String get run_continue => 'Weiterlaufen';

  @override
  String get run_discardTitle => 'Lauf verwerfen?';

  @override
  String get run_discard => 'Verwerfen';

  @override
  String get run_discardBody => 'Der Lauf wird nicht gespeichert.';

  @override
  String get run_slideToStop => 'Zum Stoppen wischen';

  @override
  String get run_stop => 'STOPP';

  @override
  String get stat_time => 'Zeit';

  @override
  String get stat_pace => 'Tempo';

  @override
  String get stat_average => 'Schnitt';

  @override
  String get stat_distance => 'Distanz';

  @override
  String get stat_elevation => 'Anstieg m';

  @override
  String get detail_imported => 'Aus GPX importiert';

  @override
  String get detail_splits => 'Splits';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Höhe';

  @override
  String get detail_exportGpx => 'GPX exportieren';

  @override
  String get detail_trim => 'Anfang / Ende kürzen';

  @override
  String get detail_deleteTitle => 'Lauf löschen?';

  @override
  String get detail_delete => 'Löschen';

  @override
  String get detail_deleteBody =>
      'Der Lauf und seine Strecke verschwinden von deinem Handy. Das lässt sich nicht rückgängig machen.';

  @override
  String get detail_deleteRun => 'Lauf löschen';

  @override
  String get detail_tooShort => 'Kürzer als ein Split.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'Z';

  @override
  String get trim_title => 'Lauf kürzen';

  @override
  String trim_keep(String from, String to) {
    return 'Behalten: $from – $to';
  }

  @override
  String get trim_save => 'Kürzung speichern';

  @override
  String get import_title => 'GPX-Import';

  @override
  String get import_intro =>
      'Hol dir deine Historie aus Strava, Garmin oder einer anderen App — wähl einzelne GPX-Dateien oder ein ganzes Export-ZIP. Der Pacer lernt daraus sofort deine Form.';

  @override
  String get import_pick => 'Dateien wählen';

  @override
  String get import_pickOther => 'Andere wählen';

  @override
  String import_done(int count) {
    return '$count Läufe importiert.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count Läufe importiert, $skipped waren schon in deiner Historie.';
  }

  @override
  String import_toImport(int count) {
    return '$count Läufe zum Importieren';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count Läufe zum Importieren ($skipped übersprungen)';
  }

  @override
  String get import_duplicate => 'Schon in deiner Historie';

  @override
  String import_andMore(int count) {
    return '… und $count weitere Dateien';
  }

  @override
  String import_importN(int count) {
    return '$count Läufe importieren';
  }

  @override
  String import_paid(String price) {
    return 'Der Import ist das Einzige, was in Běhánek etwas kostet: einmalig $price. Deine Läufe zu exportieren ist immer kostenlos.';
  }

  @override
  String import_unlock(String price) {
    return 'Import freischalten — $price';
  }

  @override
  String get import_restore => 'Kauf wiederherstellen';

  @override
  String get import_storeUnavailable =>
      'Der Store ist gerade nicht erreichbar.';

  @override
  String get import_purchaseFailed => 'Der Kauf hat nicht geklappt.';

  @override
  String get import_errZip => 'Das ZIP lässt sich nicht öffnen.';

  @override
  String get import_errInvalid => 'Die Datei ist kein gültiges GPX.';

  @override
  String get import_errNoPoints => 'Das GPX enthält keine Trackpunkte.';

  @override
  String get import_errNoTimes =>
      'Das GPX hat keine Zeitstempel — das Tempo lässt sich nicht berechnen.';

  @override
  String get report_total => 'gesamt';

  @override
  String get report_runs => 'Läufe';

  @override
  String get report_longest => 'längster';

  @override
  String report_perWeek(String unit) {
    return '$unit pro Woche';
  }

  @override
  String get report_paceTrend => 'Tempo-Trend';

  @override
  String get report_fewRuns => 'Zu wenige Läufe für einen Trend.';

  @override
  String get notif_recording => 'Dein Lauf wird aufgezeichnet';

  @override
  String get notif_channel => 'Laufaufzeichnung';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Kilometer',
      one: '1 Kilometer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value Kilometer';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Meilen',
      one: '1 Meile',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value Meilen';
  }

  @override
  String cue_pace(String clock) {
    return 'Tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'Zeit $clock';
  }

  @override
  String get cue_onTarget => 'im Plan';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Sekunden schneller',
      one: '1 Sekunde schneller',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Sekunden langsamer',
      one: '1 Sekunde langsamer',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count Meter voraus';
  }

  @override
  String cue_behind(int count) {
    return '$count Meter zurück';
  }
}
