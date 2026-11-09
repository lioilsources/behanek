// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get back => 'ಹಿಂದೆ';

  @override
  String get history_import => 'ಆಮದು';

  @override
  String get history_settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get history_empty =>
      'ಇನ್ನೂ ಓಟಗಳಿಲ್ಲ.\nಶೂ ಹಾಕಿಕೊಂಡು ‘ಓಡು’ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get history_run => 'ಓಡು';

  @override
  String get history_report => 'ವರದಿ';

  @override
  String get history_paceSame => 'ಅದೇ ವೇಗ';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds ಸೆ. ವೇಗವಾಗಿ';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds ಸೆ. ನಿಧಾನವಾಗಿ';
  }

  @override
  String get settings_title => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settings_units => 'ಘಟಕಗಳು';

  @override
  String get settings_voiceLanguage => 'ಧ್ವನಿಯ ಭಾಷೆ';

  @override
  String get settings_cues => 'ಘೋಷಣೆಗಳು';

  @override
  String get settings_cueVoice => 'ಧ್ವನಿ';

  @override
  String get settings_cueTones => 'ಟೋನ್‌ಗಳು';

  @override
  String get settings_cueBoth => 'ಎರಡೂ';

  @override
  String get settings_cueOff => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get settings_tonesHelp =>
      'ಟೋನ್‌ಗಳು: ಎರಡು ಚಿಕ್ಕವು = ವೇಗ ಹೆಚ್ಚಿಸಿ, ಒಂದು ಉದ್ದ = ವೇಗ ಕಡಿಮೆ ಮಾಡಿ, ಮೌನ = ಗುರಿಯಲ್ಲಿ.';

  @override
  String get settings_cueInterval => 'ಘೋಷಣೆಗಳ ಅಂತರ';

  @override
  String get settings_pacerGoal => 'ನಿಮ್ಮ ಫಾರ್ಮ್‌ನಿಂದ ಗುರಿ';

  @override
  String get settings_pacerHold => 'ಹಾಗೆಯೇ ಉಳಿಸಿ';

  @override
  String get settings_pacerImprove => '2 % ವೇಗವಾಗಿ';

  @override
  String get settings_autoPause => 'ನಿಂತಾಗ ಸ್ವಯಂ ವಿರಾಮ';

  @override
  String get settings_metronome => 'ಕೇಡೆನ್ಸ್ ಮೆಟ್ರೋನೋಮ್';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps ಹೆಜ್ಜೆ/ನಿಮಿಷ';
  }

  @override
  String get settings_mapLayer => 'ನಕ್ಷೆ';

  @override
  String get settings_backup => 'ಎಲ್ಲಾ ಓಟಗಳ ಬ್ಯಾಕಪ್ (GPX ZIP)';

  @override
  String get settings_privacy =>
      'ಯಾವ ಡೇಟಾವೂ ನಿಮ್ಮ ಫೋನ್ ಬಿಟ್ಟು ಹೋಗುವುದಿಲ್ಲ. Běhánek‌ನಲ್ಲಿ ಖಾತೆ, ಸರ್ವರ್, ಅನಾಲಿಟಿಕ್ಸ್, ಜಾಹೀರಾತು ಯಾವುದೂ ಇಲ್ಲ.';

  @override
  String get map_satellite => 'ಉಪಗ್ರಹ';

  @override
  String get map_topo => 'ಹೊರಾಂಗಣ';

  @override
  String get run_title => 'ಓಟ';

  @override
  String get run_locationOff =>
      'ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲಿ ಸ್ಥಳ ಆಫ್ ಆಗಿದೆ. ಅದಿಲ್ಲದೆ ಓಟವನ್ನು ರೆಕಾರ್ಡ್ ಮಾಡಲಾಗದು.';

  @override
  String get run_locationNeeded =>
      'ನಿಮ್ಮ ಮಾರ್ಗವನ್ನು ರೆಕಾರ್ಡ್ ಮಾಡಲು Běhánek‌ಗೆ “ಆ್ಯಪ್ ಬಳಸುವಾಗ” ಸ್ಥಳ ಬೇಕು. ಅದನ್ನು ಎಲ್ಲಿಗೂ ಕಳುಹಿಸುವುದಿಲ್ಲ; ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲೇ ಇರುತ್ತದೆ.';

  @override
  String get run_allowLocation => 'ಸ್ಥಳವನ್ನು ಅನುಮತಿಸಿ';

  @override
  String get run_gpsSearching => 'GPS ಹುಡುಕುತ್ತಿದೆ…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ಅತ್ಯುತ್ತಮ (±$meters ಮೀ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS ಉತ್ತಮ (±$meters ಮೀ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS ದುರ್ಬಲ (±$meters ಮೀ.) — ಸ್ವಲ್ಪ ಕಾಯಿರಿ';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ಘೋಸ್ಟ್: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'ಪೇಸರ್: ಇನ್ನೂ ಸಾಕಷ್ಟು ಓಟಗಳಿಲ್ಲ — ಸಮಯ ಮತ್ತು ದೂರ ಮಾತ್ರ ಹೇಳುತ್ತೇನೆ';

  @override
  String run_pacerForm(int count) {
    return 'ಪೇಸರ್: $count ಓಟಗಳಿಂದ ನಿಮ್ಮ ಫಾರ್ಮ್';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'ಪೇಸರ್: $count ಓಟಗಳಿಂದ ನಿಮ್ಮ ಫಾರ್ಮ್, 2 % ವೇಗವಾಗಿ';
  }

  @override
  String get run_form => 'ಫಾರ್ಮ್';

  @override
  String get run_ghost => 'ಘೋಸ್ಟ್';

  @override
  String get run_start => 'ಪ್ರಾರಂಭ';

  @override
  String get run_noGhost =>
      'ನೀವು ಇಲ್ಲಿಂದ ಇನ್ನೂ ಓಡಿಲ್ಲ — ಘೋಸ್ಟ್‌ಗೆ 300 ಮೀ. ಒಳಗೆ ಪ್ರಾರಂಭವಾದ ಓಟ ಬೇಕು.';

  @override
  String get run_cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ಘೋಸ್ಟ್‌ಗಿಂತ $meters ಮೀ. ಮುಂದೆ';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ಘೋಸ್ಟ್‌ಗಿಂತ $meters ಮೀ. ಹಿಂದೆ';
  }

  @override
  String run_onTarget(String pace) {
    return 'ಗುರಿಯಲ್ಲಿ ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace ಗಿಂತ $seconds ಸೆ. ವೇಗವಾಗಿ';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace ಗಿಂತ $seconds ಸೆ. ನಿಧಾನವಾಗಿ';
  }

  @override
  String get run_autoPaused => 'ಸ್ವಯಂ ವಿರಾಮ';

  @override
  String get run_paused => 'ವಿರಾಮ';

  @override
  String get run_weakGps => 'ದುರ್ಬಲ GPS ಸಿಗ್ನಲ್';

  @override
  String get run_resume => 'ಮುಂದುವರಿಸಿ';

  @override
  String get run_pause => 'ವಿರಾಮ';

  @override
  String get run_numbers => 'ಸಂಖ್ಯೆಗಳು';

  @override
  String get run_map => 'ನಕ್ಷೆ';

  @override
  String get run_waitingForLocation => 'ಸ್ಥಳಕ್ಕಾಗಿ ಕಾಯುತ್ತಿದೆ…';

  @override
  String get run_stopped => 'ಓಟ ನಿಂತಿದೆ';

  @override
  String get run_save => 'ಉಳಿಸಿ';

  @override
  String get run_continue => 'ಓಡುತ್ತಲೇ ಇರಿ';

  @override
  String get run_discardTitle => 'ಓಟವನ್ನು ತಿರಸ್ಕರಿಸಬೇಕೇ?';

  @override
  String get run_discard => 'ತಿರಸ್ಕರಿಸಿ';

  @override
  String get run_discardBody => 'ಓಟವನ್ನು ಉಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get run_slideToStop => 'ನಿಲ್ಲಿಸಲು ಸ್ಲೈಡ್ ಮಾಡಿ';

  @override
  String get run_stop => 'ನಿಲ್ಲಿಸಿ';

  @override
  String get stat_time => 'ಸಮಯ';

  @override
  String get stat_pace => 'ವೇಗ';

  @override
  String get stat_average => 'ಸರಾಸರಿ';

  @override
  String get stat_distance => 'ದೂರ';

  @override
  String get stat_elevation => 'ಏರಿಕೆ ಮೀ.';

  @override
  String get detail_imported => 'GPX ನಿಂದ ಆಮದು';

  @override
  String get detail_splits => 'ಸ್ಪ್ಲಿಟ್‌ಗಳು';

  @override
  String get detail_pace => 'ವೇಗ';

  @override
  String get detail_elevation => 'ಎತ್ತರ';

  @override
  String get detail_exportGpx => 'GPX ರಫ್ತು';

  @override
  String get detail_trim => 'ಆರಂಭ / ಅಂತ್ಯ ಕತ್ತರಿಸಿ';

  @override
  String get detail_deleteTitle => 'ಓಟವನ್ನು ಅಳಿಸಬೇಕೇ?';

  @override
  String get detail_delete => 'ಅಳಿಸಿ';

  @override
  String get detail_deleteBody =>
      'ಓಟ ಮತ್ತು ಅದರ ಮಾರ್ಗ ನಿಮ್ಮ ಫೋನ್‌ನಿಂದ ಮಾಯವಾಗುತ್ತವೆ. ಇದನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗದು.';

  @override
  String get detail_deleteRun => 'ಓಟವನ್ನು ಅಳಿಸಿ';

  @override
  String get detail_tooShort => 'ಒಂದು ಸ್ಪ್ಲಿಟ್‌ಗಿಂತ ಚಿಕ್ಕದು.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ಓಟವನ್ನು ಕತ್ತರಿಸಿ';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to ಉಳಿಸಿ';
  }

  @override
  String get trim_save => 'ಕತ್ತರಿಸುವಿಕೆ ಉಳಿಸಿ';

  @override
  String get import_title => 'GPX ಆಮದು';

  @override
  String get import_intro =>
      'Strava, Garmin ಅಥವಾ ಬೇರೆ ಆ್ಯಪ್‌ನಿಂದ ನಿಮ್ಮ ಇತಿಹಾಸ ತನ್ನಿ — ಪ್ರತ್ಯೇಕ GPX ಫೈಲ್‌ಗಳು ಅಥವಾ ಸಂಪೂರ್ಣ ರಫ್ತು ZIP ಆಯ್ಕೆಮಾಡಿ. ಪೇಸರ್ ತಕ್ಷಣ ನಿಮ್ಮ ಫಾರ್ಮ್ ಕಲಿಯುತ್ತದೆ.';

  @override
  String get import_pick => 'ಫೈಲ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get import_pickOther => 'ಬೇರೆ ಫೈಲ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String import_done(int count) {
    return '$count ಓಟಗಳನ್ನು ಆಮದು ಮಾಡಲಾಗಿದೆ.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count ಓಟಗಳನ್ನು ಆಮದು ಮಾಡಲಾಗಿದೆ, $skipped ಈಗಾಗಲೇ ಇತಿಹಾಸದಲ್ಲಿದ್ದವು.';
  }

  @override
  String import_toImport(int count) {
    return 'ಆಮದಿಗೆ $count ಓಟಗಳು';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ಆಮದಿಗೆ $count ಓಟಗಳು ($skipped ಬಿಡಲಾಗಿದೆ)';
  }

  @override
  String get import_duplicate => 'ಈಗಾಗಲೇ ಇತಿಹಾಸದಲ್ಲಿದೆ';

  @override
  String import_andMore(int count) {
    return '… ಮತ್ತು ಇನ್ನೂ $count ಫೈಲ್‌ಗಳು';
  }

  @override
  String import_importN(int count) {
    return '$count ಓಟಗಳನ್ನು ಆಮದು ಮಾಡಿ';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek‌ನಲ್ಲಿ ಹಣ ಪಾವತಿಸುವುದು ಆಮದಿಗೆ ಮಾತ್ರ: ಒಮ್ಮೆ $price. ಓಟಗಳ ರಫ್ತು ಯಾವಾಗಲೂ ಉಚಿತ.';
  }

  @override
  String import_unlock(String price) {
    return 'ಆಮದು ಅನ್‌ಲಾಕ್ ಮಾಡಿ — $price';
  }

  @override
  String get import_restore => 'ಖರೀದಿಯನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get import_storeUnavailable => 'ಸ್ಟೋರ್ ಈಗ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get import_purchaseFailed => 'ಖರೀದಿ ಪೂರ್ಣಗೊಳ್ಳಲಿಲ್ಲ.';

  @override
  String get import_errZip => 'ZIP ತೆರೆಯಲಾಗದು.';

  @override
  String get import_errInvalid => 'ಫೈಲ್ ಮಾನ್ಯ GPX ಅಲ್ಲ.';

  @override
  String get import_errNoPoints => 'GPX ನಲ್ಲಿ ಟ್ರ್ಯಾಕ್ ಪಾಯಿಂಟ್‌ಗಳಿಲ್ಲ.';

  @override
  String get import_errNoTimes =>
      'GPX ನಲ್ಲಿ ಟೈಮ್‌ಸ್ಟ್ಯಾಂಪ್‌ಗಳಿಲ್ಲ — ವೇಗವನ್ನು ಲೆಕ್ಕಹಾಕಲಾಗದು.';

  @override
  String get report_total => 'ಒಟ್ಟು';

  @override
  String get report_runs => 'ಓಟಗಳು';

  @override
  String get report_longest => 'ಅತಿ ಉದ್ದ';

  @override
  String report_perWeek(String unit) {
    return 'ವಾರಕ್ಕೆ $unit';
  }

  @override
  String get report_paceTrend => 'ವೇಗದ ಪ್ರವೃತ್ತಿ';

  @override
  String get report_fewRuns => 'ಪ್ರವೃತ್ತಿಗೆ ಸಾಕಷ್ಟು ಓಟಗಳಿಲ್ಲ.';

  @override
  String get notif_recording => 'ನಿಮ್ಮ ಓಟ ರೆಕಾರ್ಡ್ ಆಗುತ್ತಿದೆ';

  @override
  String get notif_channel => 'ಓಟದ ರೆಕಾರ್ಡಿಂಗ್';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಕಿಲೋಮೀಟರ್',
      one: '1 ಕಿಲೋಮೀಟರ್',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value ಕಿಲೋಮೀಟರ್';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಮೈಲಿ',
      one: '1 ಮೈಲಿ',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value ಮೈಲಿ';
  }

  @override
  String cue_pace(String clock) {
    return 'ವೇಗ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'ಸಮಯ $clock';
  }

  @override
  String get cue_onTarget => 'ಗುರಿಯಲ್ಲಿ';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸೆಕೆಂಡ್ ವೇಗವಾಗಿ',
      one: '1 ಸೆಕೆಂಡ್ ವೇಗವಾಗಿ',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸೆಕೆಂಡ್ ನಿಧಾನವಾಗಿ',
      one: '1 ಸೆಕೆಂಡ್ ನಿಧಾನವಾಗಿ',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count ಮೀಟರ್ ಮುಂದೆ';
  }

  @override
  String cue_behind(int count) {
    return '$count ಮೀಟರ್ ಹಿಂದೆ';
  }
}
