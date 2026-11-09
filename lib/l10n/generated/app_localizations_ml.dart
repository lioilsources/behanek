// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get back => 'തിരികെ';

  @override
  String get history_import => 'ഇംപോർട്ട്';

  @override
  String get history_settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get history_empty =>
      'ഇതുവരെ ഓട്ടങ്ങളില്ല.\nഷൂസ് ഇട്ട് ‘ഓടുക’ ടാപ്പ് ചെയ്യുക.';

  @override
  String get history_run => 'ഓടുക';

  @override
  String get history_report => 'റിപ്പോർട്ട്';

  @override
  String get history_paceSame => 'അതേ പേസ്';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds സെ. വേഗത്തിൽ';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds സെ. പതുക്കെ';
  }

  @override
  String get settings_title => 'ക്രമീകരണങ്ങൾ';

  @override
  String get settings_units => 'യൂണിറ്റുകൾ';

  @override
  String get settings_voiceLanguage => 'ശബ്ദത്തിന്റെ ഭാഷ';

  @override
  String get settings_cues => 'അറിയിപ്പുകൾ';

  @override
  String get settings_cueVoice => 'ശബ്ദം';

  @override
  String get settings_cueTones => 'ടോണുകൾ';

  @override
  String get settings_cueBoth => 'രണ്ടും';

  @override
  String get settings_cueOff => 'ഒന്നുമില്ല';

  @override
  String get settings_tonesHelp =>
      'ടോണുകൾ: രണ്ട് ചെറുത് = വേഗം കൂട്ടുക, ഒരു നീളം = വേഗം കുറയ്ക്കുക, നിശ്ശബ്ദത = ലക്ഷ്യത്തിൽ.';

  @override
  String get settings_cueInterval => 'അറിയിപ്പുകളുടെ ഇടവേള';

  @override
  String get settings_pacerGoal => 'നിങ്ങളുടെ ഫോമിൽ നിന്നുള്ള ലക്ഷ്യം';

  @override
  String get settings_pacerHold => 'അതുപോലെ നിലനിർത്തുക';

  @override
  String get settings_pacerImprove => '2 % വേഗത്തിൽ';

  @override
  String get settings_autoPause => 'നിൽക്കുമ്പോൾ സ്വയം താൽക്കാലികമായി നിർത്തുക';

  @override
  String get settings_metronome => 'കേഡൻസ് മെട്രോനോം';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps ചുവട്/മിനിറ്റ്';
  }

  @override
  String get settings_mapLayer => 'മാപ്പ്';

  @override
  String get settings_backup => 'എല്ലാ ഓട്ടങ്ങളുടെയും ബാക്കപ്പ് (GPX ZIP)';

  @override
  String get settings_privacy =>
      'ഒരു ഡാറ്റയും ഒരിക്കലും നിങ്ങളുടെ ഫോൺ വിട്ടുപോകില്ല. Běhánek-ൽ അക്കൗണ്ടോ സെർവറോ അനലിറ്റിക്സോ പരസ്യങ്ങളോ ഇല്ല.';

  @override
  String get map_satellite => 'ഉപഗ്രഹം';

  @override
  String get map_topo => 'ഔട്ട്ഡോർ';

  @override
  String get run_title => 'ഓട്ടം';

  @override
  String get run_locationOff =>
      'നിങ്ങളുടെ ഫോണിൽ ലൊക്കേഷൻ ഓഫാണ്. അതില്ലാതെ ഓട്ടം റെക്കോർഡ് ചെയ്യാനാവില്ല.';

  @override
  String get run_locationNeeded =>
      'നിങ്ങളുടെ റൂട്ട് റെക്കോർഡ് ചെയ്യാൻ Běhánek-ന് “ആപ്പ് ഉപയോഗിക്കുമ്പോൾ” ലൊക്കേഷൻ വേണം. അത് എവിടേക്കും അയയ്ക്കില്ല; നിങ്ങളുടെ ഫോണിൽ തന്നെ ഇരിക്കും.';

  @override
  String get run_allowLocation => 'ലൊക്കേഷൻ അനുവദിക്കുക';

  @override
  String get run_gpsSearching => 'GPS തിരയുന്നു…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS മികച്ചത് (±$meters മീ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS നല്ലത് (±$meters മീ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS ദുർബലം (±$meters മീ.) — അൽപം കാത്തിരിക്കുക';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ഗോസ്റ്റ്: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'പേസർ: ഇതുവരെ ആവശ്യത്തിന് ഓട്ടങ്ങളില്ല — സമയവും ദൂരവും മാത്രം അറിയിക്കും';

  @override
  String run_pacerForm(int count) {
    return 'പേസർ: $count ഓട്ടങ്ങളിൽ നിന്നുള്ള നിങ്ങളുടെ ഫോം';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'പേസർ: $count ഓട്ടങ്ങളിൽ നിന്നുള്ള നിങ്ങളുടെ ഫോം, 2 % വേഗത്തിൽ';
  }

  @override
  String get run_form => 'ഫോം';

  @override
  String get run_ghost => 'ഗോസ്റ്റ്';

  @override
  String get run_start => 'തുടങ്ങുക';

  @override
  String get run_noGhost =>
      'നിങ്ങൾ ഇവിടെ നിന്ന് ഇതുവരെ ഓടിയിട്ടില്ല — ഗോസ്റ്റിന് 300 മീ.ക്കുള്ളിൽ തുടങ്ങിയ ഓട്ടം വേണം.';

  @override
  String get run_cancel => 'റദ്ദാക്കുക';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ഗോസ്റ്റിനേക്കാൾ $meters മീ. മുന്നിൽ';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ഗോസ്റ്റിനേക്കാൾ $meters മീ. പിന്നിൽ';
  }

  @override
  String run_onTarget(String pace) {
    return 'ലക്ഷ്യത്തിൽ ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace-നേക്കാൾ $seconds സെ. വേഗത്തിൽ';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace-നേക്കാൾ $seconds സെ. പതുക്കെ';
  }

  @override
  String get run_autoPaused => 'സ്വയം നിർത്തി';

  @override
  String get run_paused => 'നിർത്തിവച്ചു';

  @override
  String get run_weakGps => 'ദുർബലമായ GPS സിഗ്നൽ';

  @override
  String get run_resume => 'തുടരുക';

  @override
  String get run_pause => 'നിർത്തുക';

  @override
  String get run_numbers => 'സംഖ്യകൾ';

  @override
  String get run_map => 'മാപ്പ്';

  @override
  String get run_waitingForLocation => 'ലൊക്കേഷനായി കാത്തിരിക്കുന്നു…';

  @override
  String get run_stopped => 'ഓട്ടം നിർത്തി';

  @override
  String get run_save => 'സേവ് ചെയ്യുക';

  @override
  String get run_continue => 'ഓട്ടം തുടരുക';

  @override
  String get run_discardTitle => 'ഓട്ടം ഉപേക്ഷിക്കണോ?';

  @override
  String get run_discard => 'ഉപേക്ഷിക്കുക';

  @override
  String get run_discardBody => 'ഓട്ടം സേവ് ചെയ്യില്ല.';

  @override
  String get run_slideToStop => 'നിർത്താൻ സ്ലൈഡ് ചെയ്യുക';

  @override
  String get run_stop => 'നിർത്തുക';

  @override
  String get stat_time => 'സമയം';

  @override
  String get stat_pace => 'പേസ്';

  @override
  String get stat_average => 'ശരാശരി';

  @override
  String get stat_distance => 'ദൂരം';

  @override
  String get stat_elevation => 'കയറ്റം മീ.';

  @override
  String get detail_imported => 'GPX-ൽ നിന്ന് ഇംപോർട്ട്';

  @override
  String get detail_splits => 'സ്പ്ലിറ്റുകൾ';

  @override
  String get detail_pace => 'പേസ്';

  @override
  String get detail_elevation => 'ഉയരം';

  @override
  String get detail_exportGpx => 'GPX എക്സ്പോർട്ട്';

  @override
  String get detail_trim => 'തുടക്കം / അവസാനം മുറിക്കുക';

  @override
  String get detail_deleteTitle => 'ഓട്ടം ഇല്ലാതാക്കണോ?';

  @override
  String get detail_delete => 'ഇല്ലാതാക്കുക';

  @override
  String get detail_deleteBody =>
      'ഓട്ടവും അതിന്റെ റൂട്ടും നിങ്ങളുടെ ഫോണിൽ നിന്ന് മാഞ്ഞുപോകും. ഇത് പഴയപടിയാക്കാനാവില്ല.';

  @override
  String get detail_deleteRun => 'ഓട്ടം ഇല്ലാതാക്കുക';

  @override
  String get detail_tooShort => 'ഒരു സ്പ്ലിറ്റിനേക്കാൾ ചെറുത്.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ഓട്ടം മുറിക്കുക';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to നിലനിർത്തുക';
  }

  @override
  String get trim_save => 'മുറിച്ചത് സേവ് ചെയ്യുക';

  @override
  String get import_title => 'GPX ഇംപോർട്ട്';

  @override
  String get import_intro =>
      'Strava, Garmin അല്ലെങ്കിൽ മറ്റൊരു ആപ്പിൽ നിന്ന് നിങ്ങളുടെ ചരിത്രം കൊണ്ടുവരിക — ഓരോ GPX ഫയലുകളോ മുഴുവൻ എക്സ്പോർട്ട് ZIP-ഓ തിരഞ്ഞെടുക്കുക. പേസർ ഉടൻ നിങ്ങളുടെ ഫോം പഠിക്കും.';

  @override
  String get import_pick => 'ഫയലുകൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get import_pickOther => 'മറ്റ് ഫയലുകൾ തിരഞ്ഞെടുക്കുക';

  @override
  String import_done(int count) {
    return '$count ഓട്ടങ്ങൾ ഇംപോർട്ട് ചെയ്തു.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count ഓട്ടങ്ങൾ ഇംപോർട്ട് ചെയ്തു, $skipped എണ്ണം ഇതിനകം ചരിത്രത്തിലുണ്ടായിരുന്നു.';
  }

  @override
  String import_toImport(int count) {
    return 'ഇംപോർട്ട് ചെയ്യാൻ $count ഓട്ടങ്ങൾ';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ഇംപോർട്ട് ചെയ്യാൻ $count ഓട്ടങ്ങൾ ($skipped ഒഴിവാക്കി)';
  }

  @override
  String get import_duplicate => 'ഇതിനകം ചരിത്രത്തിലുണ്ട്';

  @override
  String import_andMore(int count) {
    return '… കൂടാതെ $count ഫയലുകൾ കൂടി';
  }

  @override
  String import_importN(int count) {
    return '$count ഓട്ടങ്ങൾ ഇംപോർട്ട് ചെയ്യുക';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek-ൽ പണം നൽകേണ്ട ഒരേയൊരു കാര്യം ഇംപോർട്ടാണ്: ഒറ്റത്തവണ $price. ഓട്ടങ്ങൾ എക്സ്പോർട്ട് ചെയ്യുന്നത് എപ്പോഴും സൗജന്യം.';
  }

  @override
  String import_unlock(String price) {
    return 'ഇംപോർട്ട് അൺലോക്ക് ചെയ്യുക — $price';
  }

  @override
  String get import_restore => 'വാങ്ങൽ പുനഃസ്ഥാപിക്കുക';

  @override
  String get import_storeUnavailable => 'സ്റ്റോർ ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String get import_purchaseFailed => 'വാങ്ങൽ പൂർത്തിയായില്ല.';

  @override
  String get import_errZip => 'ZIP തുറക്കാനാവില്ല.';

  @override
  String get import_errInvalid => 'ഫയൽ സാധുവായ GPX അല്ല.';

  @override
  String get import_errNoPoints => 'GPX-ൽ ട്രാക്ക് പോയിന്റുകളില്ല.';

  @override
  String get import_errNoTimes =>
      'GPX-ൽ ടൈംസ്റ്റാമ്പുകളില്ല — പേസ് കണക്കാക്കാനാവില്ല.';

  @override
  String get report_total => 'ആകെ';

  @override
  String get report_runs => 'ഓട്ടങ്ങൾ';

  @override
  String get report_longest => 'ഏറ്റവും നീളമുള്ളത്';

  @override
  String report_perWeek(String unit) {
    return 'ആഴ്ചയിൽ $unit';
  }

  @override
  String get report_paceTrend => 'പേസ് പ്രവണത';

  @override
  String get report_fewRuns => 'പ്രവണതയ്ക്ക് ആവശ്യത്തിന് ഓട്ടങ്ങളില്ല.';

  @override
  String get notif_recording => 'നിങ്ങളുടെ ഓട്ടം റെക്കോർഡ് ചെയ്യുന്നു';

  @override
  String get notif_channel => 'ഓട്ടം റെക്കോർഡിംഗ്';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count കിലോമീറ്റർ',
      one: '1 കിലോമീറ്റർ',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value കിലോമീറ്റർ';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മൈൽ',
      one: '1 മൈൽ',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value മൈൽ';
  }

  @override
  String cue_pace(String clock) {
    return 'പേസ് $clock';
  }

  @override
  String cue_time(String clock) {
    return 'സമയം $clock';
  }

  @override
  String get cue_onTarget => 'ലക്ഷ്യത്തിൽ';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count സെക്കൻഡ് വേഗത്തിൽ',
      one: '1 സെക്കൻഡ് വേഗത്തിൽ',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count സെക്കൻഡ് പതുക്കെ',
      one: '1 സെക്കൻഡ് പതുക്കെ',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count മീറ്റർ മുന്നിൽ';
  }

  @override
  String cue_behind(int count) {
    return '$count മീറ്റർ പിന്നിൽ';
  }
}
