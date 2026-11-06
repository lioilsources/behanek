// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get back => 'Back';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Settings';

  @override
  String get history_empty => 'No runs yet.\nPut your shoes on and tap Run.';

  @override
  String get history_run => 'Run';

  @override
  String get history_report => 'Report';

  @override
  String get history_paceSame => 'same pace';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s faster';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s slower';
  }

  @override
  String get settings_title => 'Settings';

  @override
  String get settings_units => 'Units';

  @override
  String get settings_voiceLanguage => 'Voice language';

  @override
  String get settings_cues => 'Announcements';

  @override
  String get settings_cueVoice => 'Voice';

  @override
  String get settings_cueTones => 'Tones';

  @override
  String get settings_cueBoth => 'Both';

  @override
  String get settings_cueOff => 'None';

  @override
  String get settings_tonesHelp =>
      'Tones: two short = speed up, one long = slow down, silence = on target.';

  @override
  String get settings_cueInterval => 'Announcement interval';

  @override
  String get settings_pacerGoal => 'Goal from your form';

  @override
  String get settings_pacerHold => 'Just hold it';

  @override
  String get settings_pacerImprove => '2 % faster';

  @override
  String get settings_autoPause => 'Auto-pause when you stop';

  @override
  String get settings_metronome => 'Cadence metronome';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps steps/min';
  }

  @override
  String get settings_mapLayer => 'Map';

  @override
  String get settings_backup => 'Back up all runs (ZIP of GPX)';

  @override
  String get settings_privacy =>
      'No data ever leaves your phone. Běhánek has no account, no server, no analytics and no ads.';

  @override
  String get map_satellite => 'Satellite';

  @override
  String get map_topo => 'Outdoor';

  @override
  String get run_title => 'Run';

  @override
  String get run_locationOff =>
      'Location is turned off on your phone. Without it I can\'t record the run.';

  @override
  String get run_locationNeeded =>
      'Běhánek needs location “while using the app” to record your route. It never sends it anywhere; it stays on your phone.';

  @override
  String get run_allowLocation => 'Allow location';

  @override
  String get run_gpsSearching => 'Looking for GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excellent (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS good (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS weak (±$meters m) — wait a moment';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Ghost: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: not enough runs yet — I\'ll only announce time and distance';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: your form from $count runs';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: your form from $count runs, 2 % faster';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Ghost';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'You haven\'t run from here yet — the ghost needs a run that started within 300 m.';

  @override
  String get run_cancel => 'Cancel';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m ahead of the ghost';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m behind the ghost';
  }

  @override
  String run_onTarget(String pace) {
    return 'on target ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s faster than $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s slower than $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUSE';

  @override
  String get run_paused => 'PAUSED';

  @override
  String get run_weakGps => 'Weak GPS signal';

  @override
  String get run_resume => 'Resume';

  @override
  String get run_pause => 'Pause';

  @override
  String get run_numbers => 'Numbers';

  @override
  String get run_map => 'Map';

  @override
  String get run_waitingForLocation => 'Waiting for location…';

  @override
  String get run_stopped => 'Run stopped';

  @override
  String get run_save => 'Save';

  @override
  String get run_continue => 'Keep running';

  @override
  String get run_discardTitle => 'Discard run?';

  @override
  String get run_discard => 'Discard';

  @override
  String get run_discardBody => 'The run won\'t be saved.';

  @override
  String get run_slideToStop => 'Slide to stop';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'time';

  @override
  String get stat_pace => 'pace';

  @override
  String get stat_average => 'average';

  @override
  String get stat_distance => 'distance';

  @override
  String get stat_elevation => 'elevation m';

  @override
  String get detail_imported => 'Imported from GPX';

  @override
  String get detail_splits => 'Splits';

  @override
  String get detail_pace => 'Pace';

  @override
  String get detail_elevation => 'Elevation';

  @override
  String get detail_exportGpx => 'Export GPX';

  @override
  String get detail_trim => 'Trim start / end';

  @override
  String get detail_deleteTitle => 'Delete run?';

  @override
  String get detail_delete => 'Delete';

  @override
  String get detail_deleteBody =>
      'The run and its route will disappear from your phone. This can\'t be undone.';

  @override
  String get detail_deleteRun => 'Delete run';

  @override
  String get detail_tooShort => 'Shorter than one split.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Trim run';

  @override
  String trim_keep(String from, String to) {
    return 'Keep $from – $to';
  }

  @override
  String get trim_save => 'Save trim';

  @override
  String get import_title => 'Import GPX';

  @override
  String get import_intro =>
      'Bring over your history from Strava, Garmin or another app — pick single GPX files or a whole export ZIP. The pacer learns your form from it right away.';

  @override
  String get import_pick => 'Choose files';

  @override
  String get import_pickOther => 'Choose other files';

  @override
  String import_done(int count) {
    return 'Imported $count runs.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Imported $count runs, $skipped were already in your history.';
  }

  @override
  String import_toImport(int count) {
    return '$count runs to import';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count runs to import ($skipped skipped)';
  }

  @override
  String get import_duplicate => 'Already in your history';

  @override
  String import_andMore(int count) {
    return '… and $count more files';
  }

  @override
  String import_importN(int count) {
    return 'Import $count runs';
  }

  @override
  String import_paid(String price) {
    return 'Import is the only paid thing in Běhánek: a one-time $price. Exporting your runs is always free.';
  }

  @override
  String import_unlock(String price) {
    return 'Unlock import — $price';
  }

  @override
  String get import_restore => 'Restore purchase';

  @override
  String get import_storeUnavailable => 'The store isn\'t available right now.';

  @override
  String get import_purchaseFailed => 'The purchase didn\'t go through.';

  @override
  String get import_errZip => 'The ZIP can\'t be opened.';

  @override
  String get import_errInvalid => 'The file isn\'t valid GPX.';

  @override
  String get import_errNoPoints => 'The GPX has no track points.';

  @override
  String get import_errNoTimes =>
      'The GPX has no timestamps — pace can\'t be calculated.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'runs';

  @override
  String get report_longest => 'longest';

  @override
  String report_perWeek(String unit) {
    return '$unit per week';
  }

  @override
  String get report_paceTrend => 'Pace trend';

  @override
  String get report_fewRuns => 'Not enough runs for a trend.';

  @override
  String get notif_recording => 'Recording your run';

  @override
  String get notif_channel => 'Run recording';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometers',
      one: '1 kilometer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometers';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count miles',
      one: '1 mile',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value miles';
  }

  @override
  String cue_pace(String clock) {
    return 'pace $clock';
  }

  @override
  String cue_time(String clock) {
    return 'time $clock';
  }

  @override
  String get cue_onTarget => 'on target';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds faster',
      one: '1 second faster',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds slower',
      one: '1 second slower',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meters ahead';
  }

  @override
  String cue_behind(int count) {
    return '$count meters behind';
  }
}
