// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get back => 'ਵਾਪਸ';

  @override
  String get history_import => 'ਇੰਪੋਰਟ';

  @override
  String get history_settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get history_empty =>
      'ਹਾਲੇ ਕੋਈ ਦੌੜ ਨਹੀਂ।\nਜੁੱਤੇ ਪਾਓ ਅਤੇ ‘ਦੌੜੋ’ ’ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get history_run => 'ਦੌੜੋ';

  @override
  String get history_report => 'ਰਿਪੋਰਟ';

  @override
  String get history_paceSame => 'ਉਹੀ ਪੇਸ';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds ਸ. ਤੇਜ਼';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds ਸ. ਹੌਲੀ';
  }

  @override
  String get settings_title => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get settings_units => 'ਇਕਾਈਆਂ';

  @override
  String get settings_voiceLanguage => 'ਆਵਾਜ਼ ਦੀ ਭਾਸ਼ਾ';

  @override
  String get settings_cues => 'ਐਲਾਨ';

  @override
  String get settings_cueVoice => 'ਆਵਾਜ਼';

  @override
  String get settings_cueTones => 'ਟੋਨ';

  @override
  String get settings_cueBoth => 'ਦੋਵੇਂ';

  @override
  String get settings_cueOff => 'ਕੋਈ ਨਹੀਂ';

  @override
  String get settings_tonesHelp =>
      'ਟੋਨ: ਦੋ ਛੋਟੀਆਂ = ਤੇਜ਼ ਹੋਵੋ, ਇੱਕ ਲੰਮੀ = ਹੌਲੀ ਹੋਵੋ, ਚੁੱਪ = ਟੀਚੇ ’ਤੇ।';

  @override
  String get settings_cueInterval => 'ਐਲਾਨਾਂ ਦਾ ਵਕਫ਼ਾ';

  @override
  String get settings_pacerGoal => 'ਤੁਹਾਡੀ ਫ਼ਾਰਮ ਤੋਂ ਟੀਚਾ';

  @override
  String get settings_pacerHold => 'ਬੱਸ ਕਾਇਮ ਰੱਖੋ';

  @override
  String get settings_pacerImprove => '2 % ਤੇਜ਼';

  @override
  String get settings_autoPause => 'ਰੁਕਣ ’ਤੇ ਆਪਣੇ-ਆਪ ਵਿਰਾਮ';

  @override
  String get settings_metronome => 'ਕੇਡੈਂਸ ਮੈਟਰੋਨੋਮ';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps ਕਦਮ/ਮਿੰਟ';
  }

  @override
  String get settings_mapLayer => 'ਨਕਸ਼ਾ';

  @override
  String get settings_backup => 'ਸਾਰੀਆਂ ਦੌੜਾਂ ਦਾ ਬੈਕਅੱਪ (GPX ਦਾ ZIP)';

  @override
  String get settings_privacy =>
      'ਕੋਈ ਵੀ ਡਾਟਾ ਕਦੇ ਤੁਹਾਡੇ ਫ਼ੋਨ ਤੋਂ ਬਾਹਰ ਨਹੀਂ ਜਾਂਦਾ। Běhánek ਵਿੱਚ ਨਾ ਖਾਤਾ ਹੈ, ਨਾ ਸਰਵਰ, ਨਾ ਐਨਾਲਿਟਿਕਸ ਅਤੇ ਨਾ ਇਸ਼ਤਿਹਾਰ।';

  @override
  String get map_satellite => 'ਸੈਟੇਲਾਈਟ';

  @override
  String get map_topo => 'ਆਊਟਡੋਰ';

  @override
  String get run_title => 'ਦੌੜ';

  @override
  String get run_locationOff =>
      'ਤੁਹਾਡੇ ਫ਼ੋਨ ਵਿੱਚ ਟਿਕਾਣਾ ਬੰਦ ਹੈ। ਇਸ ਤੋਂ ਬਿਨਾਂ ਦੌੜ ਰਿਕਾਰਡ ਨਹੀਂ ਹੋ ਸਕਦੀ।';

  @override
  String get run_locationNeeded =>
      'ਤੁਹਾਡਾ ਰੂਟ ਰਿਕਾਰਡ ਕਰਨ ਲਈ Běhánek ਨੂੰ “ਐਪ ਵਰਤਦੇ ਸਮੇਂ” ਟਿਕਾਣਾ ਚਾਹੀਦਾ ਹੈ। ਇਹ ਕਿਤੇ ਨਹੀਂ ਭੇਜਿਆ ਜਾਂਦਾ; ਤੁਹਾਡੇ ਫ਼ੋਨ ਵਿੱਚ ਹੀ ਰਹਿੰਦਾ ਹੈ।';

  @override
  String get run_allowLocation => 'ਟਿਕਾਣੇ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get run_gpsSearching => 'GPS ਲੱਭ ਰਹੇ ਹਾਂ…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ਸ਼ਾਨਦਾਰ (±$meters ਮੀ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS ਵਧੀਆ (±$meters ਮੀ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS ਕਮਜ਼ੋਰ (±$meters ਮੀ.) — ਥੋੜ੍ਹਾ ਰੁਕੋ';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ਘੋਸਟ: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'ਪੇਸਰ: ਹਾਲੇ ਕਾਫ਼ੀ ਦੌੜਾਂ ਨਹੀਂ — ਸਿਰਫ਼ ਸਮਾਂ ਅਤੇ ਦੂਰੀ ਦੱਸਾਂਗਾ';

  @override
  String run_pacerForm(int count) {
    return 'ਪੇਸਰ: $count ਦੌੜਾਂ ਤੋਂ ਤੁਹਾਡੀ ਫ਼ਾਰਮ';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'ਪੇਸਰ: $count ਦੌੜਾਂ ਤੋਂ ਤੁਹਾਡੀ ਫ਼ਾਰਮ, 2 % ਤੇਜ਼';
  }

  @override
  String get run_form => 'ਫ਼ਾਰਮ';

  @override
  String get run_ghost => 'ਘੋਸਟ';

  @override
  String get run_start => 'ਸ਼ੁਰੂ';

  @override
  String get run_noGhost =>
      'ਤੁਸੀਂ ਹਾਲੇ ਇੱਥੋਂ ਨਹੀਂ ਦੌੜੇ — ਘੋਸਟ ਨੂੰ 300 ਮੀ. ਦੇ ਅੰਦਰ ਸ਼ੁਰੂ ਹੋਈ ਦੌੜ ਚਾਹੀਦੀ ਹੈ।';

  @override
  String get run_cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ਘੋਸਟ ਤੋਂ $meters ਮੀ. ਅੱਗੇ';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ਘੋਸਟ ਤੋਂ $meters ਮੀ. ਪਿੱਛੇ';
  }

  @override
  String run_onTarget(String pace) {
    return 'ਟੀਚੇ ’ਤੇ ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace ਨਾਲੋਂ $seconds ਸ. ਤੇਜ਼';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace ਨਾਲੋਂ $seconds ਸ. ਹੌਲੀ';
  }

  @override
  String get run_autoPaused => 'ਆਪਣੇ-ਆਪ ਵਿਰਾਮ';

  @override
  String get run_paused => 'ਵਿਰਾਮ';

  @override
  String get run_weakGps => 'ਕਮਜ਼ੋਰ GPS ਸਿਗਨਲ';

  @override
  String get run_resume => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get run_pause => 'ਵਿਰਾਮ';

  @override
  String get run_numbers => 'ਅੰਕੜੇ';

  @override
  String get run_map => 'ਨਕਸ਼ਾ';

  @override
  String get run_waitingForLocation => 'ਟਿਕਾਣੇ ਦੀ ਉਡੀਕ…';

  @override
  String get run_stopped => 'ਦੌੜ ਰੁਕੀ';

  @override
  String get run_save => 'ਸੇਵ ਕਰੋ';

  @override
  String get run_continue => 'ਦੌੜਦੇ ਰਹੋ';

  @override
  String get run_discardTitle => 'ਦੌੜ ਰੱਦ ਕਰਨੀ ਹੈ?';

  @override
  String get run_discard => 'ਰੱਦ ਕਰੋ';

  @override
  String get run_discardBody => 'ਦੌੜ ਸੇਵ ਨਹੀਂ ਹੋਵੇਗੀ।';

  @override
  String get run_slideToStop => 'ਰੋਕਣ ਲਈ ਸਲਾਈਡ ਕਰੋ';

  @override
  String get run_stop => 'ਰੁਕੋ';

  @override
  String get stat_time => 'ਸਮਾਂ';

  @override
  String get stat_pace => 'ਪੇਸ';

  @override
  String get stat_average => 'ਔਸਤ';

  @override
  String get stat_distance => 'ਦੂਰੀ';

  @override
  String get stat_elevation => 'ਚੜ੍ਹਾਈ ਮੀ.';

  @override
  String get detail_imported => 'GPX ਤੋਂ ਇੰਪੋਰਟ';

  @override
  String get detail_splits => 'ਸਪਲਿਟ';

  @override
  String get detail_pace => 'ਪੇਸ';

  @override
  String get detail_elevation => 'ਉਚਾਈ';

  @override
  String get detail_exportGpx => 'GPX ਐਕਸਪੋਰਟ';

  @override
  String get detail_trim => 'ਸ਼ੁਰੂ / ਅੰਤ ਕੱਟੋ';

  @override
  String get detail_deleteTitle => 'ਦੌੜ ਮਿਟਾਉਣੀ ਹੈ?';

  @override
  String get detail_delete => 'ਮਿਟਾਓ';

  @override
  String get detail_deleteBody =>
      'ਦੌੜ ਅਤੇ ਇਸ ਦਾ ਰੂਟ ਤੁਹਾਡੇ ਫ਼ੋਨ ਤੋਂ ਗ਼ਾਇਬ ਹੋ ਜਾਣਗੇ। ਇਹ ਵਾਪਸ ਨਹੀਂ ਹੋ ਸਕਦਾ।';

  @override
  String get detail_deleteRun => 'ਦੌੜ ਮਿਟਾਓ';

  @override
  String get detail_tooShort => 'ਇੱਕ ਸਪਲਿਟ ਤੋਂ ਛੋਟੀ।';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ਦੌੜ ਕੱਟੋ';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to ਰੱਖੋ';
  }

  @override
  String get trim_save => 'ਕਟਾਈ ਸੇਵ ਕਰੋ';

  @override
  String get import_title => 'GPX ਇੰਪੋਰਟ';

  @override
  String get import_intro =>
      'Strava, Garmin ਜਾਂ ਕਿਸੇ ਹੋਰ ਐਪ ਤੋਂ ਆਪਣਾ ਇਤਿਹਾਸ ਲਿਆਓ — ਵੱਖਰੀਆਂ GPX ਫ਼ਾਈਲਾਂ ਜਾਂ ਪੂਰਾ ਐਕਸਪੋਰਟ ZIP ਚੁਣੋ। ਪੇਸਰ ਤੁਰੰਤ ਇਸ ਤੋਂ ਤੁਹਾਡੀ ਫ਼ਾਰਮ ਸਿੱਖ ਲੈਂਦਾ ਹੈ।';

  @override
  String get import_pick => 'ਫ਼ਾਈਲਾਂ ਚੁਣੋ';

  @override
  String get import_pickOther => 'ਹੋਰ ਫ਼ਾਈਲਾਂ ਚੁਣੋ';

  @override
  String import_done(int count) {
    return '$count ਦੌੜਾਂ ਇੰਪੋਰਟ ਹੋਈਆਂ।';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count ਦੌੜਾਂ ਇੰਪੋਰਟ ਹੋਈਆਂ, $skipped ਪਹਿਲਾਂ ਹੀ ਇਤਿਹਾਸ ਵਿੱਚ ਸਨ।';
  }

  @override
  String import_toImport(int count) {
    return 'ਇੰਪੋਰਟ ਲਈ $count ਦੌੜਾਂ';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ਇੰਪੋਰਟ ਲਈ $count ਦੌੜਾਂ ($skipped ਛੱਡੀਆਂ)';
  }

  @override
  String get import_duplicate => 'ਪਹਿਲਾਂ ਹੀ ਇਤਿਹਾਸ ਵਿੱਚ';

  @override
  String import_andMore(int count) {
    return '… ਅਤੇ $count ਹੋਰ ਫ਼ਾਈਲਾਂ';
  }

  @override
  String import_importN(int count) {
    return '$count ਦੌੜਾਂ ਇੰਪੋਰਟ ਕਰੋ';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek ਵਿੱਚ ਸਿਰਫ਼ ਇੰਪੋਰਟ ਹੀ ਭੁਗਤਾਨ ਵਾਲਾ ਹੈ: ਇੱਕ ਵਾਰ $price। ਦੌੜਾਂ ਐਕਸਪੋਰਟ ਕਰਨਾ ਹਮੇਸ਼ਾ ਮੁਫ਼ਤ ਹੈ।';
  }

  @override
  String import_unlock(String price) {
    return 'ਇੰਪੋਰਟ ਅਨਲੌਕ ਕਰੋ — $price';
  }

  @override
  String get import_restore => 'ਖ਼ਰੀਦ ਬਹਾਲ ਕਰੋ';

  @override
  String get import_storeUnavailable => 'ਸਟੋਰ ਇਸ ਵੇਲੇ ਉਪਲਬਧ ਨਹੀਂ।';

  @override
  String get import_purchaseFailed => 'ਖ਼ਰੀਦ ਪੂਰੀ ਨਹੀਂ ਹੋਈ।';

  @override
  String get import_errZip => 'ZIP ਖੁੱਲ੍ਹ ਨਹੀਂ ਸਕਦਾ।';

  @override
  String get import_errInvalid => 'ਫ਼ਾਈਲ ਵੈਧ GPX ਨਹੀਂ ਹੈ।';

  @override
  String get import_errNoPoints => 'GPX ਵਿੱਚ ਟ੍ਰੈਕ ਪੁਆਇੰਟ ਨਹੀਂ ਹਨ।';

  @override
  String get import_errNoTimes =>
      'GPX ਵਿੱਚ ਟਾਈਮਸਟੈਂਪ ਨਹੀਂ — ਪੇਸ ਦੀ ਗਿਣਤੀ ਨਹੀਂ ਹੋ ਸਕਦੀ।';

  @override
  String get report_total => 'ਕੁੱਲ';

  @override
  String get report_runs => 'ਦੌੜਾਂ';

  @override
  String get report_longest => 'ਸਭ ਤੋਂ ਲੰਮੀ';

  @override
  String report_perWeek(String unit) {
    return 'ਹਰ ਹਫ਼ਤੇ $unit';
  }

  @override
  String get report_paceTrend => 'ਪੇਸ ਦਾ ਰੁਝਾਨ';

  @override
  String get report_fewRuns => 'ਰੁਝਾਨ ਲਈ ਕਾਫ਼ੀ ਦੌੜਾਂ ਨਹੀਂ।';

  @override
  String get notif_recording => 'ਤੁਹਾਡੀ ਦੌੜ ਰਿਕਾਰਡ ਹੋ ਰਹੀ ਹੈ';

  @override
  String get notif_channel => 'ਦੌੜ ਰਿਕਾਰਡਿੰਗ';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਕਿਲੋਮੀਟਰ',
      one: '$count ਕਿਲੋਮੀਟਰ',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value ਕਿਲੋਮੀਟਰ';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਮੀਲ',
      one: '$count ਮੀਲ',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value ਮੀਲ';
  }

  @override
  String cue_pace(String clock) {
    return 'ਪੇਸ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'ਸਮਾਂ $clock';
  }

  @override
  String get cue_onTarget => 'ਟੀਚੇ ’ਤੇ';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਸਕਿੰਟ ਤੇਜ਼',
      one: '$count ਸਕਿੰਟ ਤੇਜ਼',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਸਕਿੰਟ ਹੌਲੀ',
      one: '$count ਸਕਿੰਟ ਹੌਲੀ',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count ਮੀਟਰ ਅੱਗੇ';
  }

  @override
  String cue_behind(int count) {
    return '$count ਮੀਟਰ ਪਿੱਛੇ';
  }
}
