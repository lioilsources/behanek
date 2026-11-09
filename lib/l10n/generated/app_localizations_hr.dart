// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get back => 'Natrag';

  @override
  String get history_import => 'Uvoz';

  @override
  String get history_settings => 'Postavke';

  @override
  String get history_empty =>
      'Još nema trčanja.\nObuj tenisice i dodirni Trči.';

  @override
  String get history_run => 'Trči';

  @override
  String get history_report => 'Izvješće';

  @override
  String get history_paceSame => 'isti tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s brže';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s sporije';
  }

  @override
  String get settings_title => 'Postavke';

  @override
  String get settings_units => 'Jedinice';

  @override
  String get settings_voiceLanguage => 'Jezik glasa';

  @override
  String get settings_cues => 'Najave';

  @override
  String get settings_cueVoice => 'Glas';

  @override
  String get settings_cueTones => 'Tonovi';

  @override
  String get settings_cueBoth => 'Oboje';

  @override
  String get settings_cueOff => 'Ništa';

  @override
  String get settings_tonesHelp =>
      'Tonovi: dva kratka = ubrzaj, jedan dugi = uspori, tišina = u planu.';

  @override
  String get settings_cueInterval => 'Razmak najava';

  @override
  String get settings_pacerGoal => 'Cilj prema tvojoj formi';

  @override
  String get settings_pacerHold => 'Samo je drži';

  @override
  String get settings_pacerImprove => '2 % brže';

  @override
  String get settings_autoPause => 'Automatska pauza kad staneš';

  @override
  String get settings_metronome => 'Metronom kadence';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps koraka/min';
  }

  @override
  String get settings_mapLayer => 'Karta';

  @override
  String get settings_backup => 'Sigurnosna kopija svih trčanja (ZIP s GPX-om)';

  @override
  String get settings_privacy =>
      'Nikakvi podaci nikad ne napuštaju tvoj telefon. Běhánek nema račun, poslužitelj, analitiku ni oglase.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Planinarska';

  @override
  String get run_title => 'Trčanje';

  @override
  String get run_locationOff =>
      'Lokacija je isključena na telefonu. Bez nje ne mogu snimiti trčanje.';

  @override
  String get run_locationNeeded =>
      'Běhánek treba lokaciju „dok se aplikacija koristi” da bi snimio tvoju rutu. Nikamo je ne šalje; ostaje u tvom telefonu.';

  @override
  String get run_allowLocation => 'Dopusti lokaciju';

  @override
  String get run_gpsSearching => 'Tražim GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS izvrstan (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS dobar (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS slab (±$meters m) — pričekaj malo';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Duh: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: još nema dovoljno trčanja — najavljivat ću samo vrijeme i udaljenost';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: tvoja forma iz $count trčanja';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: tvoja forma iz $count trčanja, 2 % brže';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Duh';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Odavde još nisi trčao/la — duhu treba trčanje koje je počelo unutar 300 m.';

  @override
  String get run_cancel => 'Odustani';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m ispred duha';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m iza duha';
  }

  @override
  String run_onTarget(String pace) {
    return 'u planu ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s brže od $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s sporije od $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUZA';

  @override
  String get run_paused => 'PAUZA';

  @override
  String get run_weakGps => 'Slab GPS signal';

  @override
  String get run_resume => 'Nastavi';

  @override
  String get run_pause => 'Pauza';

  @override
  String get run_numbers => 'Brojke';

  @override
  String get run_map => 'Karta';

  @override
  String get run_waitingForLocation => 'Čekam lokaciju…';

  @override
  String get run_stopped => 'Trčanje zaustavljeno';

  @override
  String get run_save => 'Spremi';

  @override
  String get run_continue => 'Trči dalje';

  @override
  String get run_discardTitle => 'Odbaciti trčanje?';

  @override
  String get run_discard => 'Odbaci';

  @override
  String get run_discardBody => 'Trčanje se neće spremiti.';

  @override
  String get run_slideToStop => 'Povuci za zaustavljanje';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'vrijeme';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'prosjek';

  @override
  String get stat_distance => 'udaljenost';

  @override
  String get stat_elevation => 'uspon m';

  @override
  String get detail_imported => 'Uvezeno iz GPX-a';

  @override
  String get detail_splits => 'Dionice';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Visina';

  @override
  String get detail_exportGpx => 'Izvezi GPX';

  @override
  String get detail_trim => 'Skrati početak / kraj';

  @override
  String get detail_deleteTitle => 'Izbrisati trčanje?';

  @override
  String get detail_delete => 'Izbriši';

  @override
  String get detail_deleteBody =>
      'Trčanje i njegova ruta nestat će s telefona. To se ne može poništiti.';

  @override
  String get detail_deleteRun => 'Izbriši trčanje';

  @override
  String get detail_tooShort => 'Kraće od jedne dionice.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Skrati trčanje';

  @override
  String trim_keep(String from, String to) {
    return 'Zadrži $from – $to';
  }

  @override
  String get trim_save => 'Spremi skraćivanje';

  @override
  String get import_title => 'Uvoz GPX-a';

  @override
  String get import_intro =>
      'Prenesi povijest iz Strave, Garmina ili druge aplikacije — odaberi pojedinačne GPX datoteke ili cijeli izvozni ZIP. Pacer odmah iz nje uči tvoju formu.';

  @override
  String get import_pick => 'Odaberi datoteke';

  @override
  String get import_pickOther => 'Odaberi druge datoteke';

  @override
  String import_done(int count) {
    return 'Uvezeno trčanja: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Uvezeno trčanja: $count, $skipped već je bilo u povijesti.';
  }

  @override
  String import_toImport(int count) {
    return 'Trčanja za uvoz: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Trčanja za uvoz: $count (preskočeno $skipped)';
  }

  @override
  String get import_duplicate => 'Već je u povijesti';

  @override
  String import_andMore(int count) {
    return '… i još datoteka: $count';
  }

  @override
  String import_importN(int count) {
    return 'Uvezi trčanja ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Uvoz je jedino što se plaća u Běhánku: jednokratno $price. Izvoz trčanja uvijek je besplatan.';
  }

  @override
  String import_unlock(String price) {
    return 'Otključaj uvoz — $price';
  }

  @override
  String get import_restore => 'Vrati kupnju';

  @override
  String get import_storeUnavailable => 'Trgovina trenutačno nije dostupna.';

  @override
  String get import_purchaseFailed => 'Kupnja nije uspjela.';

  @override
  String get import_errZip => 'ZIP se ne može otvoriti.';

  @override
  String get import_errInvalid => 'Datoteka nije valjani GPX.';

  @override
  String get import_errNoPoints => 'GPX nema točaka rute.';

  @override
  String get import_errNoTimes =>
      'GPX nema vremenskih oznaka — tempo se ne može izračunati.';

  @override
  String get report_total => 'ukupno';

  @override
  String get report_runs => 'trčanja';

  @override
  String get report_longest => 'najduže';

  @override
  String report_perWeek(String unit) {
    return '$unit tjedno';
  }

  @override
  String get report_paceTrend => 'Trend tempa';

  @override
  String get report_fewRuns => 'Premalo trčanja za trend.';

  @override
  String get notif_recording => 'Snimam tvoje trčanje';

  @override
  String get notif_channel => 'Snimanje trčanja';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometara',
      few: '$count kilometra',
      one: '$count kilometar',
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
      other: '$count milja',
      few: '$count milje',
      one: '$count milja',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value milje';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'vrijeme $clock';
  }

  @override
  String get cue_onTarget => 'u planu';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekundi brže',
      few: '$count sekunde brže',
      one: '$count sekundu brže',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekundi sporije',
      few: '$count sekunde sporije',
      one: '$count sekundu sporije',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metara ispred',
      few: '$count metra ispred',
      one: '$count metar ispred',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metara iza',
      few: '$count metra iza',
      one: '$count metar iza',
    );
    return '$_temp0';
  }
}
