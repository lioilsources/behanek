// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get back => 'Späť';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Nastavenia';

  @override
  String get history_empty =>
      'Zatiaľ žiadne behy.\nObuj si topánky a ťukni na Bežať.';

  @override
  String get history_run => 'Bežať';

  @override
  String get history_report => 'Report';

  @override
  String get history_paceSame => 'rovnaké tempo';

  @override
  String history_paceFaster(int seconds) {
    return 'o $seconds s rýchlejšie';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'o $seconds s pomalšie';
  }

  @override
  String get settings_title => 'Nastavenia';

  @override
  String get settings_units => 'Jednotky';

  @override
  String get settings_voiceLanguage => 'Jazyk hlasu';

  @override
  String get settings_cues => 'Hlásenia';

  @override
  String get settings_cueVoice => 'Hlas';

  @override
  String get settings_cueTones => 'Tóny';

  @override
  String get settings_cueBoth => 'Oboje';

  @override
  String get settings_cueOff => 'Nič';

  @override
  String get settings_tonesHelp =>
      'Tóny: dva krátke = zrýchli, jeden dlhý = spomaľ, ticho = v pláne.';

  @override
  String get settings_cueInterval => 'Interval hlásení';

  @override
  String get settings_pacerGoal => 'Cieľ z tvojej formy';

  @override
  String get settings_pacerHold => 'Len ju udržať';

  @override
  String get settings_pacerImprove => 'O 2 % rýchlejšie';

  @override
  String get settings_autoPause => 'Auto-pauza pri zastavení';

  @override
  String get settings_metronome => 'Metronóm kadencie';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps krokov/min';
  }

  @override
  String get settings_mapLayer => 'Mapa';

  @override
  String get settings_backup => 'Zálohovať všetky behy (ZIP s GPX)';

  @override
  String get settings_privacy =>
      'Žiadne dáta nikdy neopustia tvoj telefón. Běhánek nemá účet, server, analytiku ani reklamy.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Turistická';

  @override
  String get run_title => 'Beh';

  @override
  String get run_locationOff =>
      'Poloha je v telefóne vypnutá. Bez nej beh nezaznamenám.';

  @override
  String get run_locationNeeded =>
      'Běhánek potrebuje polohu „pri používaní aplikácie“, aby zaznamenal tvoju trasu. Nikam ju neposiela; zostáva v telefóne.';

  @override
  String get run_allowLocation => 'Povoliť polohu';

  @override
  String get run_gpsSearching => 'Hľadám GPS…';

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
    return 'GPS slabé (±$meters m) — chvíľu počkaj';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Duch: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: zatiaľ málo behov — budem hlásiť len čas a vzdialenosť';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: tvoja forma z $count behov';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: tvoja forma z $count behov, o 2 % rýchlejšie';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Duch';

  @override
  String get run_start => 'ŠTART';

  @override
  String get run_noGhost =>
      'Odtiaľto si ešte nebežal(a) — duch potrebuje beh so štartom do 300 m.';

  @override
  String get run_cancel => 'Zrušiť';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m pred duchom';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m za duchom';
  }

  @override
  String run_onTarget(String pace) {
    return 'v pláne ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'o $seconds s rýchlejšie než $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'o $seconds s pomalšie než $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUZA';

  @override
  String get run_paused => 'PAUZA';

  @override
  String get run_weakGps => 'Slabý signál GPS';

  @override
  String get run_resume => 'Pokračovať';

  @override
  String get run_pause => 'Pauza';

  @override
  String get run_numbers => 'Čísla';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Čakám na polohu…';

  @override
  String get run_stopped => 'Beh zastavený';

  @override
  String get run_save => 'Uložiť';

  @override
  String get run_continue => 'Bežať ďalej';

  @override
  String get run_discardTitle => 'Zahodiť beh?';

  @override
  String get run_discard => 'Zahodiť';

  @override
  String get run_discardBody => 'Beh sa neuloží.';

  @override
  String get run_slideToStop => 'Potiahni na zastavenie';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'čas';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'priemer';

  @override
  String get stat_distance => 'vzdialenosť';

  @override
  String get stat_elevation => 'prevýšenie m';

  @override
  String get detail_imported => 'Importované z GPX';

  @override
  String get detail_splits => 'Úseky';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Výška';

  @override
  String get detail_exportGpx => 'Exportovať GPX';

  @override
  String get detail_trim => 'Orezať začiatok / koniec';

  @override
  String get detail_deleteTitle => 'Zmazať beh?';

  @override
  String get detail_delete => 'Zmazať';

  @override
  String get detail_deleteBody =>
      'Beh aj jeho trasa zmiznú z telefónu. Nedá sa to vrátiť.';

  @override
  String get detail_deleteRun => 'Zmazať beh';

  @override
  String get detail_tooShort => 'Kratší ako jeden úsek.';

  @override
  String get detail_startMarker => 'Š';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Orezať beh';

  @override
  String trim_keep(String from, String to) {
    return 'Ponechať $from – $to';
  }

  @override
  String get trim_save => 'Uložiť orezanie';

  @override
  String get import_title => 'Import GPX';

  @override
  String get import_intro =>
      'Prenes si históriu zo Stravy, Garminu alebo inej aplikácie — vyber jednotlivé GPX súbory alebo celý exportný ZIP. Pacer sa z nej hneď naučí tvoju formu.';

  @override
  String get import_pick => 'Vybrať súbory';

  @override
  String get import_pickOther => 'Vybrať iné súbory';

  @override
  String import_done(int count) {
    return 'Importovaných behov: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Importovaných behov: $count, $skipped už v histórii boli.';
  }

  @override
  String import_toImport(int count) {
    return 'Behov na import: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Behov na import: $count (preskočených $skipped)';
  }

  @override
  String get import_duplicate => 'Už je v histórii';

  @override
  String import_andMore(int count) {
    return '… a ďalšie súbory: $count';
  }

  @override
  String import_importN(int count) {
    return 'Importovať behy ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Import je v Běhánku jediná platená vec: jednorazovo $price. Export behov je vždy zadarmo.';
  }

  @override
  String import_unlock(String price) {
    return 'Odomknúť import — $price';
  }

  @override
  String get import_restore => 'Obnoviť nákup';

  @override
  String get import_storeUnavailable => 'Obchod teraz nie je dostupný.';

  @override
  String get import_purchaseFailed => 'Nákup neprebehol.';

  @override
  String get import_errZip => 'ZIP sa nedá otvoriť.';

  @override
  String get import_errInvalid => 'Súbor nie je platné GPX.';

  @override
  String get import_errNoPoints => 'GPX nemá žiadne body trasy.';

  @override
  String get import_errNoTimes =>
      'GPX nemá časové značky — tempo sa nedá vypočítať.';

  @override
  String get report_total => 'spolu';

  @override
  String get report_runs => 'behov';

  @override
  String get report_longest => 'najdlhší';

  @override
  String report_perWeek(String unit) {
    return '$unit za týždeň';
  }

  @override
  String get report_paceTrend => 'Trend tempa';

  @override
  String get report_fewRuns => 'Málo behov na trend.';

  @override
  String get notif_recording => 'Zaznamenávam tvoj beh';

  @override
  String get notif_channel => 'Záznam behu';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometrov',
      many: '$count kilometra',
      few: '$count kilometre',
      one: '1 kilometer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometra';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count míľ',
      many: '$count míle',
      few: '$count míle',
      one: '1 míľa',
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
  String get cue_onTarget => 'v pláne';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekúnd rýchlejšie',
      many: 'o $count sekundy rýchlejšie',
      few: 'o $count sekundy rýchlejšie',
      one: 'o 1 sekundu rýchlejšie',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekúnd pomalšie',
      many: 'o $count sekundy pomalšie',
      few: 'o $count sekundy pomalšie',
      one: 'o 1 sekundu pomalšie',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrov vpredu',
      many: '$count metra vpredu',
      few: '$count metre vpredu',
      one: '1 meter vpredu',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrov vzadu',
      many: '$count metra vzadu',
      few: '$count metre vzadu',
      one: '1 meter vzadu',
    );
    return '$_temp0';
  }
}
