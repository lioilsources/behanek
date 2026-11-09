// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get back => 'Tilbage';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Indstillinger';

  @override
  String get history_empty =>
      'Ingen løbeture endnu.\nTag skoene på, og tryk på Løb.';

  @override
  String get history_run => 'Løb';

  @override
  String get history_report => 'Rapport';

  @override
  String get history_paceSame => 'samme tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s hurtigere';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s langsommere';
  }

  @override
  String get settings_title => 'Indstillinger';

  @override
  String get settings_units => 'Enheder';

  @override
  String get settings_voiceLanguage => 'Stemmens sprog';

  @override
  String get settings_cues => 'Meldinger';

  @override
  String get settings_cueVoice => 'Stemme';

  @override
  String get settings_cueTones => 'Toner';

  @override
  String get settings_cueBoth => 'Begge';

  @override
  String get settings_cueOff => 'Ingen';

  @override
  String get settings_tonesHelp =>
      'Toner: to korte = sæt farten op, én lang = sæt farten ned, stilhed = på mål.';

  @override
  String get settings_cueInterval => 'Interval mellem meldinger';

  @override
  String get settings_pacerGoal => 'Mål ud fra din form';

  @override
  String get settings_pacerHold => 'Bare hold den';

  @override
  String get settings_pacerImprove => '2 % hurtigere';

  @override
  String get settings_autoPause => 'Autopause, når du stopper';

  @override
  String get settings_metronome => 'Kadencemetronom';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps skridt/min';
  }

  @override
  String get settings_mapLayer => 'Kort';

  @override
  String get settings_backup => 'Sikkerhedskopiér alle løbeture (ZIP med GPX)';

  @override
  String get settings_privacy =>
      'Ingen data forlader nogensinde din telefon. Běhánek har ingen konto, ingen server, ingen analyse og ingen reklamer.';

  @override
  String get map_satellite => 'Satellit';

  @override
  String get map_topo => 'Friluft';

  @override
  String get run_title => 'Løb';

  @override
  String get run_locationOff =>
      'Lokalitet er slået fra på din telefon. Uden den kan jeg ikke registrere løbeturen.';

  @override
  String get run_locationNeeded =>
      'Běhánek skal bruge lokalitet „når appen bruges“ for at registrere din rute. Den sendes aldrig nogen steder hen; den bliver på din telefon.';

  @override
  String get run_allowLocation => 'Tillad lokalitet';

  @override
  String get run_gpsSearching => 'Søger efter GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS fremragende (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS god (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS svag (±$meters m) — vent et øjeblik';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Spøgelse: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: ikke nok løbeture endnu — jeg melder kun tid og distance';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: din form fra $count løbeture';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: din form fra $count løbeture, 2 % hurtigere';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Spøgelse';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Du har ikke løbet herfra endnu — spøgelset skal bruge en tur, der startede inden for 300 m.';

  @override
  String get run_cancel => 'Annuller';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m foran spøgelset';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m efter spøgelset';
  }

  @override
  String run_onTarget(String pace) {
    return 'på mål ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s hurtigere end $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s langsommere end $pace';
  }

  @override
  String get run_autoPaused => 'AUTOPAUSE';

  @override
  String get run_paused => 'PAUSE';

  @override
  String get run_weakGps => 'Svagt GPS-signal';

  @override
  String get run_resume => 'Fortsæt';

  @override
  String get run_pause => 'Pause';

  @override
  String get run_numbers => 'Tal';

  @override
  String get run_map => 'Kort';

  @override
  String get run_waitingForLocation => 'Venter på lokalitet…';

  @override
  String get run_stopped => 'Løbeturen er stoppet';

  @override
  String get run_save => 'Gem';

  @override
  String get run_continue => 'Løb videre';

  @override
  String get run_discardTitle => 'Kassér løbeturen?';

  @override
  String get run_discard => 'Kassér';

  @override
  String get run_discardBody => 'Løbeturen bliver ikke gemt.';

  @override
  String get run_slideToStop => 'Skub for at stoppe';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'tid';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'gennemsnit';

  @override
  String get stat_distance => 'distance';

  @override
  String get stat_elevation => 'stigning m';

  @override
  String get detail_imported => 'Importeret fra GPX';

  @override
  String get detail_splits => 'Splits';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Højde';

  @override
  String get detail_exportGpx => 'Eksportér GPX';

  @override
  String get detail_trim => 'Beskær start / slut';

  @override
  String get detail_deleteTitle => 'Slet løbeturen?';

  @override
  String get detail_delete => 'Slet';

  @override
  String get detail_deleteBody =>
      'Løbeturen og dens rute forsvinder fra din telefon. Det kan ikke fortrydes.';

  @override
  String get detail_deleteRun => 'Slet løbetur';

  @override
  String get detail_tooShort => 'Kortere end ét split.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Beskær løbetur';

  @override
  String trim_keep(String from, String to) {
    return 'Behold $from – $to';
  }

  @override
  String get trim_save => 'Gem beskæring';

  @override
  String get import_title => 'Importér GPX';

  @override
  String get import_intro =>
      'Hent din historik fra Strava, Garmin eller en anden app — vælg enkelte GPX-filer eller en hel eksport-ZIP. Pacer lærer din form med det samme.';

  @override
  String get import_pick => 'Vælg filer';

  @override
  String get import_pickOther => 'Vælg andre filer';

  @override
  String import_done(int count) {
    return 'Importerede $count løbeture.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Importerede $count løbeture, $skipped var allerede i din historik.';
  }

  @override
  String import_toImport(int count) {
    return '$count løbeture til import';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count løbeture til import ($skipped sprunget over)';
  }

  @override
  String get import_duplicate => 'Allerede i din historik';

  @override
  String import_andMore(int count) {
    return '… og $count filer mere';
  }

  @override
  String import_importN(int count) {
    return 'Importér $count løbeture';
  }

  @override
  String import_paid(String price) {
    return 'Import er det eneste, der koster noget i Běhánek: én gang $price. Eksport af dine løbeture er altid gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Lås import op — $price';
  }

  @override
  String get import_restore => 'Gendan køb';

  @override
  String get import_storeUnavailable => 'Butikken er ikke tilgængelig lige nu.';

  @override
  String get import_purchaseFailed => 'Købet gik ikke igennem.';

  @override
  String get import_errZip => 'ZIP-filen kan ikke åbnes.';

  @override
  String get import_errInvalid => 'Filen er ikke gyldig GPX.';

  @override
  String get import_errNoPoints => 'GPX-filen har ingen sporpunkter.';

  @override
  String get import_errNoTimes =>
      'GPX-filen har ingen tidsstempler — tempoet kan ikke beregnes.';

  @override
  String get report_total => 'i alt';

  @override
  String get report_runs => 'løbeture';

  @override
  String get report_longest => 'længste';

  @override
  String report_perWeek(String unit) {
    return '$unit pr. uge';
  }

  @override
  String get report_paceTrend => 'Tempoudvikling';

  @override
  String get report_fewRuns => 'Ikke nok løbeture til en udvikling.';

  @override
  String get notif_recording => 'Registrerer din løbetur';

  @override
  String get notif_channel => 'Registrering af løb';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometer',
      one: '1 kilometer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometer';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mil',
      one: '1 mil',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mil';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tid $clock';
  }

  @override
  String get cue_onTarget => 'på mål';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekunder hurtigere',
      one: '1 sekund hurtigere',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekunder langsommere',
      one: '1 sekund langsommere',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter foran';
  }

  @override
  String cue_behind(int count) {
    return '$count meter bagud';
  }
}
