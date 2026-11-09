// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get back => 'Înapoi';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Setări';

  @override
  String get history_empty =>
      'Încă nu ai alergări.\nÎncalță-te și apasă pe Aleargă.';

  @override
  String get history_run => 'Aleargă';

  @override
  String get history_report => 'Raport';

  @override
  String get history_paceSame => 'același ritm';

  @override
  String history_paceFaster(int seconds) {
    return 'cu $seconds s mai rapid';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'cu $seconds s mai lent';
  }

  @override
  String get settings_title => 'Setări';

  @override
  String get settings_units => 'Unități';

  @override
  String get settings_voiceLanguage => 'Limba vocii';

  @override
  String get settings_cues => 'Anunțuri';

  @override
  String get settings_cueVoice => 'Voce';

  @override
  String get settings_cueTones => 'Tonuri';

  @override
  String get settings_cueBoth => 'Ambele';

  @override
  String get settings_cueOff => 'Niciunul';

  @override
  String get settings_tonesHelp =>
      'Tonuri: două scurte = accelerează, unul lung = încetinește, liniște = în ritm.';

  @override
  String get settings_cueInterval => 'Intervalul anunțurilor';

  @override
  String get settings_pacerGoal => 'Obiectiv după forma ta';

  @override
  String get settings_pacerHold => 'Doar menține-o';

  @override
  String get settings_pacerImprove => 'Cu 2 % mai rapid';

  @override
  String get settings_autoPause => 'Pauză automată când te oprești';

  @override
  String get settings_metronome => 'Metronom de cadență';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps pași/min';
  }

  @override
  String get settings_mapLayer => 'Hartă';

  @override
  String get settings_backup =>
      'Copie de rezervă a tuturor alergărilor (ZIP cu GPX)';

  @override
  String get settings_privacy =>
      'Nicio dată nu părăsește vreodată telefonul. Běhánek nu are cont, server, analiză sau reclame.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Turistică';

  @override
  String get run_title => 'Alergare';

  @override
  String get run_locationOff =>
      'Localizarea este dezactivată pe telefon. Fără ea nu pot înregistra alergarea.';

  @override
  String get run_locationNeeded =>
      'Běhánek are nevoie de localizare „în timpul utilizării aplicației” ca să-ți înregistreze traseul. Nu o trimite nicăieri; rămâne în telefonul tău.';

  @override
  String get run_allowLocation => 'Permite localizarea';

  @override
  String get run_gpsSearching => 'Se caută GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excelent (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bun (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS slab (±$meters m) — așteaptă puțin';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantoma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: încă nu sunt destule alergări — anunț doar timpul și distanța';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: forma ta din $count alergări';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: forma ta din $count alergări, cu 2 % mai rapid';
  }

  @override
  String get run_form => 'Formă';

  @override
  String get run_ghost => 'Fantomă';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Încă n-ai alergat de aici — fantoma are nevoie de o alergare care a început la mai puțin de 300 m.';

  @override
  String get run_cancel => 'Anulează';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m înaintea fantomei';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m în urma fantomei';
  }

  @override
  String run_onTarget(String pace) {
    return 'în ritm ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'cu $seconds s mai rapid decât $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'cu $seconds s mai lent decât $pace';
  }

  @override
  String get run_autoPaused => 'PAUZĂ AUTOMATĂ';

  @override
  String get run_paused => 'PAUZĂ';

  @override
  String get run_weakGps => 'Semnal GPS slab';

  @override
  String get run_resume => 'Continuă';

  @override
  String get run_pause => 'Pauză';

  @override
  String get run_numbers => 'Cifre';

  @override
  String get run_map => 'Hartă';

  @override
  String get run_waitingForLocation => 'Se așteaptă localizarea…';

  @override
  String get run_stopped => 'Alergare oprită';

  @override
  String get run_save => 'Salvează';

  @override
  String get run_continue => 'Aleargă mai departe';

  @override
  String get run_discardTitle => 'Renunți la alergare?';

  @override
  String get run_discard => 'Renunță';

  @override
  String get run_discardBody => 'Alergarea nu va fi salvată.';

  @override
  String get run_slideToStop => 'Glisează pentru oprire';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'timp';

  @override
  String get stat_pace => 'ritm';

  @override
  String get stat_average => 'medie';

  @override
  String get stat_distance => 'distanță';

  @override
  String get stat_elevation => 'urcare m';

  @override
  String get detail_imported => 'Importată din GPX';

  @override
  String get detail_splits => 'Segmente';

  @override
  String get detail_pace => 'Ritm';

  @override
  String get detail_elevation => 'Altitudine';

  @override
  String get detail_exportGpx => 'Exportă GPX';

  @override
  String get detail_trim => 'Taie începutul / sfârșitul';

  @override
  String get detail_deleteTitle => 'Ștergi alergarea?';

  @override
  String get detail_delete => 'Șterge';

  @override
  String get detail_deleteBody =>
      'Alergarea și traseul ei vor dispărea din telefon. Acțiunea nu poate fi anulată.';

  @override
  String get detail_deleteRun => 'Șterge alergarea';

  @override
  String get detail_tooShort => 'Mai scurtă decât un segment.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Taie alergarea';

  @override
  String trim_keep(String from, String to) {
    return 'Păstrează $from – $to';
  }

  @override
  String get trim_save => 'Salvează tăierea';

  @override
  String get import_title => 'Importă GPX';

  @override
  String get import_intro =>
      'Adu-ți istoricul din Strava, Garmin sau altă aplicație — alege fișiere GPX separate sau o arhivă ZIP de export întreagă. Pacerul îți învață forma imediat.';

  @override
  String get import_pick => 'Alege fișiere';

  @override
  String get import_pickOther => 'Alege alte fișiere';

  @override
  String import_done(int count) {
    return 'Au fost importate $count alergări.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Au fost importate $count alergări, $skipped erau deja în istoric.';
  }

  @override
  String import_toImport(int count) {
    return '$count alergări de importat';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count alergări de importat ($skipped omise)';
  }

  @override
  String get import_duplicate => 'Deja în istoric';

  @override
  String import_andMore(int count) {
    return '… și încă $count fișiere';
  }

  @override
  String import_importN(int count) {
    return 'Importă $count alergări';
  }

  @override
  String import_paid(String price) {
    return 'Importul este singurul lucru plătit din Běhánek: o singură dată $price. Exportul alergărilor este mereu gratuit.';
  }

  @override
  String import_unlock(String price) {
    return 'Deblochează importul — $price';
  }

  @override
  String get import_restore => 'Restaurează achiziția';

  @override
  String get import_storeUnavailable => 'Magazinul nu este disponibil acum.';

  @override
  String get import_purchaseFailed => 'Achiziția nu a reușit.';

  @override
  String get import_errZip => 'Arhiva ZIP nu poate fi deschisă.';

  @override
  String get import_errInvalid => 'Fișierul nu este un GPX valid.';

  @override
  String get import_errNoPoints => 'GPX-ul nu are puncte de traseu.';

  @override
  String get import_errNoTimes =>
      'GPX-ul nu are marcaje de timp — ritmul nu poate fi calculat.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'alergări';

  @override
  String get report_longest => 'cea mai lungă';

  @override
  String report_perWeek(String unit) {
    return '$unit pe săptămână';
  }

  @override
  String get report_paceTrend => 'Evoluția ritmului';

  @override
  String get report_fewRuns => 'Prea puține alergări pentru o evoluție.';

  @override
  String get notif_recording => 'Se înregistrează alergarea';

  @override
  String get notif_channel => 'Înregistrarea alergării';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de kilometri',
      few: '$count kilometri',
      one: '1 kilometru',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometri';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de mile',
      few: '$count mile',
      one: '1 milă',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mile';
  }

  @override
  String cue_pace(String clock) {
    return 'ritm $clock';
  }

  @override
  String cue_time(String clock) {
    return 'timp $clock';
  }

  @override
  String get cue_onTarget => 'în ritm';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'cu $count de secunde mai rapid',
      few: 'cu $count secunde mai rapid',
      one: 'cu o secundă mai rapid',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'cu $count de secunde mai lent',
      few: 'cu $count secunde mai lent',
      one: 'cu o secundă mai lent',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de metri în față',
      few: '$count metri în față',
      one: '1 metru în față',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de metri în urmă',
      few: '$count metri în urmă',
      one: '1 metru în urmă',
    );
    return '$_temp0';
  }
}
