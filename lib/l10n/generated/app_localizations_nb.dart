// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get back => 'Tilbake';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Innstillinger';

  @override
  String get history_empty =>
      'Ingen løpeturer ennå.\nTa på deg skoene og trykk på Løp.';

  @override
  String get history_run => 'Løp';

  @override
  String get history_report => 'Rapport';

  @override
  String get history_paceSame => 'samme tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s raskere';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s saktere';
  }

  @override
  String get settings_title => 'Innstillinger';

  @override
  String get settings_units => 'Enheter';

  @override
  String get settings_voiceLanguage => 'Stemmespråk';

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
      'Toner: to korte = øk farten, én lang = senk farten, stillhet = på mål.';

  @override
  String get settings_cueInterval => 'Intervall mellom meldinger';

  @override
  String get settings_pacerGoal => 'Mål ut fra formen din';

  @override
  String get settings_pacerHold => 'Bare hold den';

  @override
  String get settings_pacerImprove => '2 % raskere';

  @override
  String get settings_autoPause => 'Autopause når du stopper';

  @override
  String get settings_metronome => 'Kadensmetronom';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps skritt/min';
  }

  @override
  String get settings_mapLayer => 'Kart';

  @override
  String get settings_backup => 'Sikkerhetskopier alle turer (ZIP med GPX)';

  @override
  String get settings_privacy =>
      'Ingen data forlater noen gang telefonen din. Běhánek har ingen konto, ingen server, ingen analyse og ingen reklame.';

  @override
  String get map_satellite => 'Satellitt';

  @override
  String get map_topo => 'Friluft';

  @override
  String get run_title => 'Løp';

  @override
  String get run_locationOff =>
      'Posisjon er slått av på telefonen. Uten den kan jeg ikke registrere turen.';

  @override
  String get run_locationNeeded =>
      'Běhánek trenger posisjon «når appen er i bruk» for å registrere ruten din. Den sendes aldri noe sted; den blir på telefonen din.';

  @override
  String get run_allowLocation => 'Tillat posisjon';

  @override
  String get run_gpsSearching => 'Søker etter GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS utmerket (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS god (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS svak (±$meters m) — vent litt';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Spøkelse: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: ikke nok turer ennå — jeg melder bare tid og distanse';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: formen din fra $count turer';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: formen din fra $count turer, 2 % raskere';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Spøkelse';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Du har ikke løpt herfra ennå — spøkelset trenger en tur som startet innenfor 300 m.';

  @override
  String get run_cancel => 'Avbryt';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m foran spøkelset';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m bak spøkelset';
  }

  @override
  String run_onTarget(String pace) {
    return 'på mål ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s raskere enn $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s saktere enn $pace';
  }

  @override
  String get run_autoPaused => 'AUTOPAUSE';

  @override
  String get run_paused => 'PAUSE';

  @override
  String get run_weakGps => 'Svakt GPS-signal';

  @override
  String get run_resume => 'Fortsett';

  @override
  String get run_pause => 'Pause';

  @override
  String get run_numbers => 'Tall';

  @override
  String get run_map => 'Kart';

  @override
  String get run_waitingForLocation => 'Venter på posisjon…';

  @override
  String get run_stopped => 'Turen er stoppet';

  @override
  String get run_save => 'Lagre';

  @override
  String get run_continue => 'Løp videre';

  @override
  String get run_discardTitle => 'Forkaste turen?';

  @override
  String get run_discard => 'Forkast';

  @override
  String get run_discardBody => 'Turen blir ikke lagret.';

  @override
  String get run_slideToStop => 'Skyv for å stoppe';

  @override
  String get run_stop => 'STOPP';

  @override
  String get stat_time => 'tid';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'snitt';

  @override
  String get stat_distance => 'distanse';

  @override
  String get stat_elevation => 'stigning m';

  @override
  String get detail_imported => 'Importert fra GPX';

  @override
  String get detail_splits => 'Mellomtider';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Høyde';

  @override
  String get detail_exportGpx => 'Eksporter GPX';

  @override
  String get detail_trim => 'Beskjær start / slutt';

  @override
  String get detail_deleteTitle => 'Slette turen?';

  @override
  String get detail_delete => 'Slett';

  @override
  String get detail_deleteBody =>
      'Turen og ruten forsvinner fra telefonen. Dette kan ikke angres.';

  @override
  String get detail_deleteRun => 'Slett tur';

  @override
  String get detail_tooShort => 'Kortere enn én mellomtid.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Beskjær tur';

  @override
  String trim_keep(String from, String to) {
    return 'Behold $from – $to';
  }

  @override
  String get trim_save => 'Lagre beskjæring';

  @override
  String get import_title => 'Importer GPX';

  @override
  String get import_intro =>
      'Ta med historikken din fra Strava, Garmin eller en annen app — velg enkelte GPX-filer eller en hel eksport-ZIP. Paceren lærer formen din med en gang.';

  @override
  String get import_pick => 'Velg filer';

  @override
  String get import_pickOther => 'Velg andre filer';

  @override
  String import_done(int count) {
    return 'Importerte $count turer.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Importerte $count turer, $skipped fantes allerede i historikken.';
  }

  @override
  String import_toImport(int count) {
    return '$count turer å importere';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count turer å importere ($skipped hoppet over)';
  }

  @override
  String get import_duplicate => 'Finnes allerede i historikken';

  @override
  String import_andMore(int count) {
    return '… og $count filer til';
  }

  @override
  String import_importN(int count) {
    return 'Importer $count turer';
  }

  @override
  String import_paid(String price) {
    return 'Import er det eneste som koster noe i Běhánek: én gang $price. Eksport av turene dine er alltid gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Lås opp import — $price';
  }

  @override
  String get import_restore => 'Gjenopprett kjøp';

  @override
  String get import_storeUnavailable =>
      'Butikken er ikke tilgjengelig akkurat nå.';

  @override
  String get import_purchaseFailed => 'Kjøpet gikk ikke gjennom.';

  @override
  String get import_errZip => 'ZIP-filen kan ikke åpnes.';

  @override
  String get import_errInvalid => 'Filen er ikke gyldig GPX.';

  @override
  String get import_errNoPoints => 'GPX-filen har ingen sporpunkter.';

  @override
  String get import_errNoTimes =>
      'GPX-filen har ingen tidsstempler — tempoet kan ikke beregnes.';

  @override
  String get report_total => 'totalt';

  @override
  String get report_runs => 'turer';

  @override
  String get report_longest => 'lengste';

  @override
  String report_perWeek(String unit) {
    return '$unit per uke';
  }

  @override
  String get report_paceTrend => 'Tempoutvikling';

  @override
  String get report_fewRuns => 'For få turer til en utvikling.';

  @override
  String get notif_recording => 'Registrerer løpeturen din';

  @override
  String get notif_channel => 'Registrering av løp';

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
      other: '$count engelske mil',
      one: '1 engelsk mil',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value engelske mil';
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
      other: '$count sekunder raskere',
      one: '1 sekund raskere',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekunder saktere',
      one: '1 sekund saktere',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter foran';
  }

  @override
  String cue_behind(int count) {
    return '$count meter bak';
  }
}
