// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get back => 'Tillbaka';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Inställningar';

  @override
  String get history_empty =>
      'Inga löprundor än.\nTa på dig skorna och tryck på Spring.';

  @override
  String get history_run => 'Spring';

  @override
  String get history_report => 'Rapport';

  @override
  String get history_paceSame => 'samma tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s snabbare';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s långsammare';
  }

  @override
  String get settings_title => 'Inställningar';

  @override
  String get settings_units => 'Enheter';

  @override
  String get settings_voiceLanguage => 'Röstens språk';

  @override
  String get settings_cues => 'Utrop';

  @override
  String get settings_cueVoice => 'Röst';

  @override
  String get settings_cueTones => 'Toner';

  @override
  String get settings_cueBoth => 'Båda';

  @override
  String get settings_cueOff => 'Inga';

  @override
  String get settings_tonesHelp =>
      'Toner: två korta = öka, en lång = sakta ner, tystnad = enligt mål.';

  @override
  String get settings_cueInterval => 'Intervall mellan utrop';

  @override
  String get settings_pacerGoal => 'Mål utifrån din form';

  @override
  String get settings_pacerHold => 'Bara håll den';

  @override
  String get settings_pacerImprove => '2 % snabbare';

  @override
  String get settings_autoPause => 'Autopaus när du stannar';

  @override
  String get settings_metronome => 'Kadensmetronom';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps steg/min';
  }

  @override
  String get settings_mapLayer => 'Karta';

  @override
  String get settings_backup => 'Säkerhetskopiera alla rundor (ZIP med GPX)';

  @override
  String get settings_privacy =>
      'Ingen data lämnar någonsin din telefon. Běhánek har inget konto, ingen server, ingen analys och ingen reklam.';

  @override
  String get map_satellite => 'Satellit';

  @override
  String get map_topo => 'Friluft';

  @override
  String get run_title => 'Löpning';

  @override
  String get run_locationOff =>
      'Platstjänster är avstängda i telefonen. Utan dem kan jag inte spela in rundan.';

  @override
  String get run_locationNeeded =>
      'Běhánek behöver platsen ”när appen används” för att spela in din rutt. Den skickas aldrig någonstans; den stannar i din telefon.';

  @override
  String get run_allowLocation => 'Tillåt plats';

  @override
  String get run_gpsSearching => 'Söker GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS utmärkt (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bra (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS svag (±$meters m) — vänta en stund';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Spöke: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: inte tillräckligt med rundor än — jag säger bara tid och distans';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: din form från $count rundor';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: din form från $count rundor, 2 % snabbare';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Spöke';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Du har inte sprungit härifrån än — spöket behöver en runda som startade inom 300 m.';

  @override
  String get run_cancel => 'Avbryt';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m före spöket';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m efter spöket';
  }

  @override
  String run_onTarget(String pace) {
    return 'enligt mål ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s snabbare än $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s långsammare än $pace';
  }

  @override
  String get run_autoPaused => 'AUTOPAUS';

  @override
  String get run_paused => 'PAUSAD';

  @override
  String get run_weakGps => 'Svag GPS-signal';

  @override
  String get run_resume => 'Fortsätt';

  @override
  String get run_pause => 'Paus';

  @override
  String get run_numbers => 'Siffror';

  @override
  String get run_map => 'Karta';

  @override
  String get run_waitingForLocation => 'Väntar på plats…';

  @override
  String get run_stopped => 'Rundan stoppad';

  @override
  String get run_save => 'Spara';

  @override
  String get run_continue => 'Spring vidare';

  @override
  String get run_discardTitle => 'Kasta rundan?';

  @override
  String get run_discard => 'Kasta';

  @override
  String get run_discardBody => 'Rundan sparas inte.';

  @override
  String get run_slideToStop => 'Dra för att stoppa';

  @override
  String get run_stop => 'STOPP';

  @override
  String get stat_time => 'tid';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'snitt';

  @override
  String get stat_distance => 'distans';

  @override
  String get stat_elevation => 'stigning m';

  @override
  String get detail_imported => 'Importerad från GPX';

  @override
  String get detail_splits => 'Splittider';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Höjd';

  @override
  String get detail_exportGpx => 'Exportera GPX';

  @override
  String get detail_trim => 'Beskär start / slut';

  @override
  String get detail_deleteTitle => 'Radera rundan?';

  @override
  String get detail_delete => 'Radera';

  @override
  String get detail_deleteBody =>
      'Rundan och dess rutt försvinner från telefonen. Det går inte att ångra.';

  @override
  String get detail_deleteRun => 'Radera runda';

  @override
  String get detail_tooShort => 'Kortare än en splittid.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Beskär runda';

  @override
  String trim_keep(String from, String to) {
    return 'Behåll $from – $to';
  }

  @override
  String get trim_save => 'Spara beskärning';

  @override
  String get import_title => 'Importera GPX';

  @override
  String get import_intro =>
      'Ta med din historik från Strava, Garmin eller en annan app — välj enskilda GPX-filer eller en hel export-ZIP. Pacern lär sig din form direkt.';

  @override
  String get import_pick => 'Välj filer';

  @override
  String get import_pickOther => 'Välj andra filer';

  @override
  String import_done(int count) {
    return 'Importerade $count rundor.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Importerade $count rundor, $skipped fanns redan i historiken.';
  }

  @override
  String import_toImport(int count) {
    return '$count rundor att importera';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count rundor att importera ($skipped hoppades över)';
  }

  @override
  String get import_duplicate => 'Finns redan i historiken';

  @override
  String import_andMore(int count) {
    return '… och $count filer till';
  }

  @override
  String import_importN(int count) {
    return 'Importera $count rundor';
  }

  @override
  String import_paid(String price) {
    return 'Import är det enda som kostar i Běhánek: en gång $price. Att exportera dina rundor är alltid gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Lås upp import — $price';
  }

  @override
  String get import_restore => 'Återställ köp';

  @override
  String get import_storeUnavailable => 'Butiken är inte tillgänglig just nu.';

  @override
  String get import_purchaseFailed => 'Köpet gick inte igenom.';

  @override
  String get import_errZip => 'ZIP-filen kan inte öppnas.';

  @override
  String get import_errInvalid => 'Filen är inte giltig GPX.';

  @override
  String get import_errNoPoints => 'GPX-filen har inga spårpunkter.';

  @override
  String get import_errNoTimes =>
      'GPX-filen har inga tidsstämplar — tempot kan inte beräknas.';

  @override
  String get report_total => 'totalt';

  @override
  String get report_runs => 'rundor';

  @override
  String get report_longest => 'längsta';

  @override
  String report_perWeek(String unit) {
    return '$unit per vecka';
  }

  @override
  String get report_paceTrend => 'Tempotrend';

  @override
  String get report_fewRuns => 'För få rundor för en trend.';

  @override
  String get notif_recording => 'Spelar in din runda';

  @override
  String get notif_channel => 'Inspelning av löpning';

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
      other: '$count engelska mil',
      one: '1 engelsk mil',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value engelska mil';
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
  String get cue_onTarget => 'enligt mål';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekunder snabbare',
      one: '1 sekund snabbare',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekunder långsammare',
      one: '1 sekund långsammare',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter före';
  }

  @override
  String cue_behind(int count) {
    return '$count meter efter';
  }
}
