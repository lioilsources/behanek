// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get back => 'Zpět';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Nastavení';

  @override
  String get history_empty => 'Zatím žádný běh.\nObuj boty a zmáčkni Běžet.';

  @override
  String get history_run => 'Běžet';

  @override
  String get history_report => 'Report';

  @override
  String get history_paceSame => 'tempo stejné';

  @override
  String history_paceFaster(int seconds) {
    return 'o $seconds s rychleji';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'o $seconds s pomaleji';
  }

  @override
  String get settings_title => 'Nastavení';

  @override
  String get settings_units => 'Jednotky';

  @override
  String get settings_voiceLanguage => 'Jazyk hlasu';

  @override
  String get settings_cues => 'Hlášení';

  @override
  String get settings_cueVoice => 'Hlas';

  @override
  String get settings_cueTones => 'Tóny';

  @override
  String get settings_cueBoth => 'Obojí';

  @override
  String get settings_cueOff => 'Nic';

  @override
  String get settings_tonesHelp =>
      'Tóny: dva krátké = zrychli, jeden dlouhý = zpomal, ticho = v plánu.';

  @override
  String get settings_cueInterval => 'Interval hlášení';

  @override
  String get settings_pacerGoal => 'Cíl podle formy';

  @override
  String get settings_pacerHold => 'Jen držet';

  @override
  String get settings_pacerImprove => 'O 2 % rychleji';

  @override
  String get settings_autoPause => 'Auto-pauza při zastavení';

  @override
  String get settings_metronome => 'Metronom kadence';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps kroků/min';
  }

  @override
  String get settings_mapLayer => 'Mapový podklad';

  @override
  String get settings_backup => 'Zálohovat všechny běhy (ZIP s GPX)';

  @override
  String get settings_privacy =>
      'Žádná data neopouští telefon. Běhánek nemá účet, server, analytiku ani reklamy.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Turistická';

  @override
  String get run_title => 'Běh';

  @override
  String get run_locationOff =>
      'Poloha v telefonu je vypnutá. Bez ní běh nezaznamenám.';

  @override
  String get run_locationNeeded =>
      'Běhánek potřebuje polohu „při používání“, aby zaznamenal trasu. Nikam ji neposílá, zůstává v telefonu.';

  @override
  String get run_allowLocation => 'Povolit polohu';

  @override
  String get run_gpsSearching => 'Hledám GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS výborné (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS dobré (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS slabé (±$meters m) — počkej chvíli';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Duch: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: zatím málo běhů — budu hlásit jen čas a vzdálenost';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: tvoje forma z $count běhů';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: tvoje forma z $count běhů, o 2 % rychleji';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Duch';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Odtud jsi ještě neběžel(a) — duch potřebuje běh se startem do 300 m.';

  @override
  String get run_cancel => 'Zrušit';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m před duchem';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m za duchem';
  }

  @override
  String run_onTarget(String pace) {
    return 'v plánu ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s rychleji než $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s pomaleji než $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUZA';

  @override
  String get run_paused => 'PAUZA';

  @override
  String get run_weakGps => 'Slabý GPS signál';

  @override
  String get run_resume => 'Pokračovat';

  @override
  String get run_pause => 'Pauza';

  @override
  String get run_numbers => 'Čísla';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Čekám na polohu…';

  @override
  String get run_stopped => 'Běh zastaven';

  @override
  String get run_save => 'Uložit';

  @override
  String get run_continue => 'Pokračovat v běhu';

  @override
  String get run_discardTitle => 'Zahodit běh?';

  @override
  String get run_discard => 'Zahodit';

  @override
  String get run_discardBody => 'Běh se neuloží.';

  @override
  String get run_slideToStop => 'Posuň pro stop';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'čas';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'průměr';

  @override
  String get stat_distance => 'vzdálenost';

  @override
  String get stat_elevation => 'převýšení m';

  @override
  String get detail_imported => 'Importováno z GPX';

  @override
  String get detail_splits => 'Splity';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Výška';

  @override
  String get detail_exportGpx => 'Exportovat GPX';

  @override
  String get detail_trim => 'Oříznout začátek / konec';

  @override
  String get detail_deleteTitle => 'Smazat běh?';

  @override
  String get detail_delete => 'Smazat';

  @override
  String get detail_deleteBody =>
      'Běh a jeho trasa zmizí z telefonu. Nejde to vrátit.';

  @override
  String get detail_deleteRun => 'Smazat běh';

  @override
  String get detail_tooShort => 'Kratší než jeden úsek.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Oříznout běh';

  @override
  String trim_keep(String from, String to) {
    return 'Ponechat $from – $to';
  }

  @override
  String get trim_save => 'Uložit ořez';

  @override
  String get import_title => 'Import GPX';

  @override
  String get import_intro =>
      'Přenes si historii ze Stravy, Garminu nebo jiné appky — vyber jednotlivá GPX, nebo celý ZIP exportu. Pacer se z ní hned naučí tvoji formu.';

  @override
  String get import_pick => 'Vybrat soubory';

  @override
  String get import_pickOther => 'Vybrat jiné';

  @override
  String import_done(int count) {
    return 'Naimportováno $count běhů.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Naimportováno $count běhů, $skipped už v historii bylo.';
  }

  @override
  String import_toImport(int count) {
    return '$count běhů k importu';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count běhů k importu ($skipped přeskočeno)';
  }

  @override
  String get import_duplicate => 'Už je v historii';

  @override
  String import_andMore(int count) {
    return '… a dalších $count souborů';
  }

  @override
  String import_importN(int count) {
    return 'Importovat $count běhů';
  }

  @override
  String import_paid(String price) {
    return 'Import je jediná placená věc v Běhánkovi: jednorázově $price. Export tvých běhů je vždy zdarma.';
  }

  @override
  String import_unlock(String price) {
    return 'Odemknout import — $price';
  }

  @override
  String get import_restore => 'Obnovit nákup';

  @override
  String get import_storeUnavailable => 'Obchod teď není dostupný.';

  @override
  String get import_purchaseFailed => 'Nákup se nepovedl.';

  @override
  String get import_errZip => 'ZIP nejde otevřít.';

  @override
  String get import_errInvalid => 'Soubor není platné GPX.';

  @override
  String get import_errNoPoints => 'GPX neobsahuje žádné body trasy.';

  @override
  String get import_errNoTimes =>
      'GPX nemá body s časem — nelze spočítat tempo.';

  @override
  String get report_total => 'celkem';

  @override
  String get report_runs => 'běhů';

  @override
  String get report_longest => 'nejdelší';

  @override
  String report_perWeek(String unit) {
    return '$unit za týden';
  }

  @override
  String get report_paceTrend => 'Trend tempa';

  @override
  String get report_fewRuns => 'Málo běhů na trend.';

  @override
  String get notif_recording => 'Zaznamenávám běh';

  @override
  String get notif_channel => 'Záznam běhu';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometrů',
      few: '$count kilometry',
      one: '1 kilometr',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometru';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mil',
      few: '$count míle',
      one: '1 míle',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value míle';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'čas $clock';
  }

  @override
  String get cue_onTarget => 'v plánu';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekund rychleji',
      few: 'o $count sekundy rychleji',
      one: 'o 1 sekundu rychleji',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekund pomaleji',
      few: 'o $count sekundy pomaleji',
      one: 'o 1 sekundu pomaleji',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrů napřed',
      few: '$count metry napřed',
      one: '1 metr napřed',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrů pozadu',
      few: '$count metry pozadu',
      one: '1 metr pozadu',
    );
    return '$_temp0';
  }
}
