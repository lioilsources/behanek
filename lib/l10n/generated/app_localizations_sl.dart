// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get back => 'Nazaj';

  @override
  String get history_import => 'Uvoz';

  @override
  String get history_settings => 'Nastavitve';

  @override
  String get history_empty => 'Še ni tekov.\nObuj copate in tapni Teci.';

  @override
  String get history_run => 'Teci';

  @override
  String get history_report => 'Poročilo';

  @override
  String get history_paceSame => 'enak tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s hitreje';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s počasneje';
  }

  @override
  String get settings_title => 'Nastavitve';

  @override
  String get settings_units => 'Enote';

  @override
  String get settings_voiceLanguage => 'Jezik glasu';

  @override
  String get settings_cues => 'Obvestila';

  @override
  String get settings_cueVoice => 'Glas';

  @override
  String get settings_cueTones => 'Toni';

  @override
  String get settings_cueBoth => 'Oboje';

  @override
  String get settings_cueOff => 'Nič';

  @override
  String get settings_tonesHelp =>
      'Toni: dva kratka = pospeši, en dolg = upočasni, tišina = po načrtu.';

  @override
  String get settings_cueInterval => 'Razmik obvestil';

  @override
  String get settings_pacerGoal => 'Cilj iz tvoje forme';

  @override
  String get settings_pacerHold => 'Samo jo zadrži';

  @override
  String get settings_pacerImprove => '2 % hitreje';

  @override
  String get settings_autoPause => 'Samodejni premor, ko se ustaviš';

  @override
  String get settings_metronome => 'Metronom kadence';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps korakov/min';
  }

  @override
  String get settings_mapLayer => 'Zemljevid';

  @override
  String get settings_backup => 'Varnostna kopija vseh tekov (ZIP z GPX)';

  @override
  String get settings_privacy =>
      'Nobeni podatki nikoli ne zapustijo tvojega telefona. Běhánek nima računa, strežnika, analitike ne oglasov.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Pohodniški';

  @override
  String get run_title => 'Tek';

  @override
  String get run_locationOff =>
      'Lokacija je v telefonu izklopljena. Brez nje teka ne morem posneti.';

  @override
  String get run_locationNeeded =>
      'Běhánek potrebuje lokacijo »med uporabo aplikacije«, da posname tvojo pot. Nikamor je ne pošilja; ostane v tvojem telefonu.';

  @override
  String get run_allowLocation => 'Dovoli lokacijo';

  @override
  String get run_gpsSearching => 'Iščem GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS odličen (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS dober (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS šibek (±$meters m) — malo počakaj';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Duh: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: še premalo tekov — sporočal bom samo čas in razdaljo';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: tvoja forma iz tekov: $count';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: tvoja forma iz tekov: $count, 2 % hitreje';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Duh';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Od tu še nisi tekel(a) — duh potrebuje tek, ki se je začel v razdalji 300 m.';

  @override
  String get run_cancel => 'Prekliči';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m pred duhom';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m za duhom';
  }

  @override
  String run_onTarget(String pace) {
    return 'po načrtu ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s hitreje od $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s počasneje od $pace';
  }

  @override
  String get run_autoPaused => 'SAMODEJNI PREMOR';

  @override
  String get run_paused => 'PREMOR';

  @override
  String get run_weakGps => 'Šibek signal GPS';

  @override
  String get run_resume => 'Nadaljuj';

  @override
  String get run_pause => 'Premor';

  @override
  String get run_numbers => 'Številke';

  @override
  String get run_map => 'Zemljevid';

  @override
  String get run_waitingForLocation => 'Čakam na lokacijo…';

  @override
  String get run_stopped => 'Tek ustavljen';

  @override
  String get run_save => 'Shrani';

  @override
  String get run_continue => 'Teci naprej';

  @override
  String get run_discardTitle => 'Zavržem tek?';

  @override
  String get run_discard => 'Zavrzi';

  @override
  String get run_discardBody => 'Tek ne bo shranjen.';

  @override
  String get run_slideToStop => 'Povleci za ustavitev';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'čas';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'povprečje';

  @override
  String get stat_distance => 'razdalja';

  @override
  String get stat_elevation => 'vzpon m';

  @override
  String get detail_imported => 'Uvoženo iz GPX';

  @override
  String get detail_splits => 'Odseki';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Višina';

  @override
  String get detail_exportGpx => 'Izvozi GPX';

  @override
  String get detail_trim => 'Obreži začetek / konec';

  @override
  String get detail_deleteTitle => 'Izbrišem tek?';

  @override
  String get detail_delete => 'Izbriši';

  @override
  String get detail_deleteBody =>
      'Tek in njegova pot bosta izginila s telefona. Tega ni mogoče razveljaviti.';

  @override
  String get detail_deleteRun => 'Izbriši tek';

  @override
  String get detail_tooShort => 'Krajši od enega odseka.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Obreži tek';

  @override
  String trim_keep(String from, String to) {
    return 'Obdrži $from – $to';
  }

  @override
  String get trim_save => 'Shrani obrezovanje';

  @override
  String get import_title => 'Uvoz GPX';

  @override
  String get import_intro =>
      'Prenesi zgodovino iz Strave, Garmina ali druge aplikacije — izberi posamezne datoteke GPX ali celoten izvozni ZIP. Pacer se iz nje takoj nauči tvoje forme.';

  @override
  String get import_pick => 'Izberi datoteke';

  @override
  String get import_pickOther => 'Izberi druge datoteke';

  @override
  String import_done(int count) {
    return 'Uvoženih tekov: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Uvoženih tekov: $count, $skipped jih je že bilo v zgodovini.';
  }

  @override
  String import_toImport(int count) {
    return 'Tekov za uvoz: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Tekov za uvoz: $count (preskočenih $skipped)';
  }

  @override
  String get import_duplicate => 'Že v zgodovini';

  @override
  String import_andMore(int count) {
    return '… in še datotek: $count';
  }

  @override
  String import_importN(int count) {
    return 'Uvozi teke ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Uvoz je edino plačljivo v Běhánku: enkratno $price. Izvoz tekov je vedno brezplačen.';
  }

  @override
  String import_unlock(String price) {
    return 'Odkleni uvoz — $price';
  }

  @override
  String get import_restore => 'Obnovi nakup';

  @override
  String get import_storeUnavailable => 'Trgovina trenutno ni na voljo.';

  @override
  String get import_purchaseFailed => 'Nakup ni uspel.';

  @override
  String get import_errZip => 'ZIP-a ni mogoče odpreti.';

  @override
  String get import_errInvalid => 'Datoteka ni veljaven GPX.';

  @override
  String get import_errNoPoints => 'GPX nima točk poti.';

  @override
  String get import_errNoTimes =>
      'GPX nima časovnih žigov — tempa ni mogoče izračunati.';

  @override
  String get report_total => 'skupaj';

  @override
  String get report_runs => 'teki';

  @override
  String get report_longest => 'najdaljši';

  @override
  String report_perWeek(String unit) {
    return '$unit na teden';
  }

  @override
  String get report_paceTrend => 'Trend tempa';

  @override
  String get report_fewRuns => 'Premalo tekov za trend.';

  @override
  String get notif_recording => 'Snemam tvoj tek';

  @override
  String get notif_channel => 'Snemanje teka';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometrov',
      few: '$count kilometri',
      two: '$count kilometra',
      one: '$count kilometer',
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
      other: '$count milj',
      few: '$count milje',
      two: '$count milji',
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
    return 'čas $clock';
  }

  @override
  String get cue_onTarget => 'po načrtu';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekund hitreje',
      few: '$count sekunde hitreje',
      two: '$count sekundi hitreje',
      one: '$count sekundo hitreje',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekund počasneje',
      few: '$count sekunde počasneje',
      two: '$count sekundi počasneje',
      one: '$count sekundo počasneje',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrov spredaj',
      few: '$count metri spredaj',
      two: '$count metra spredaj',
      one: '$count meter spredaj',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metrov zadaj',
      few: '$count metri zadaj',
      two: '$count metra zadaj',
      one: '$count meter zadaj',
    );
    return '$_temp0';
  }
}
