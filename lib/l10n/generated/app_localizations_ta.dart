// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get back => 'பின்செல்';

  @override
  String get history_import => 'இறக்குமதி';

  @override
  String get history_settings => 'அமைப்புகள்';

  @override
  String get history_empty =>
      'இன்னும் ஓட்டங்கள் இல்லை.\nகாலணிகளை அணிந்து ‘ஓடு’ என்பதைத் தட்டவும்.';

  @override
  String get history_run => 'ஓடு';

  @override
  String get history_report => 'அறிக்கை';

  @override
  String get history_paceSame => 'அதே வேகம்';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds வி. வேகமாக';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds வி. மெதுவாக';
  }

  @override
  String get settings_title => 'அமைப்புகள்';

  @override
  String get settings_units => 'அலகுகள்';

  @override
  String get settings_voiceLanguage => 'குரல் மொழி';

  @override
  String get settings_cues => 'அறிவிப்புகள்';

  @override
  String get settings_cueVoice => 'குரல்';

  @override
  String get settings_cueTones => 'ஒலிகள்';

  @override
  String get settings_cueBoth => 'இரண்டும்';

  @override
  String get settings_cueOff => 'எதுவுமில்லை';

  @override
  String get settings_tonesHelp =>
      'ஒலிகள்: இரண்டு குறுகியவை = வேகம் கூட்டு, ஒரு நீளமானது = வேகம் குறை, அமைதி = இலக்கில்.';

  @override
  String get settings_cueInterval => 'அறிவிப்பு இடைவெளி';

  @override
  String get settings_pacerGoal => 'உங்கள் ஃபார்மிலிருந்து இலக்கு';

  @override
  String get settings_pacerHold => 'அப்படியே தக்கவை';

  @override
  String get settings_pacerImprove => '2 % வேகமாக';

  @override
  String get settings_autoPause => 'நின்றால் தானியங்கு இடைநிறுத்தம்';

  @override
  String get settings_metronome => 'அடி வேக மெட்ரோனோம்';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps அடிகள்/நிமிடம்';
  }

  @override
  String get settings_mapLayer => 'வரைபடம்';

  @override
  String get settings_backup => 'எல்லா ஓட்டங்களையும் காப்புப் பிரதி (GPX ZIP)';

  @override
  String get settings_privacy =>
      'எந்தத் தரவும் உங்கள் தொலைபேசியை விட்டு வெளியேறாது. Běhánek-இல் கணக்கு, சர்வர், பகுப்பாய்வு, விளம்பரம் எதுவும் இல்லை.';

  @override
  String get map_satellite => 'செயற்கைக்கோள்';

  @override
  String get map_topo => 'வெளிப்புறம்';

  @override
  String get run_title => 'ஓட்டம்';

  @override
  String get run_locationOff =>
      'உங்கள் தொலைபேசியில் இருப்பிடம் முடக்கப்பட்டுள்ளது. அது இல்லாமல் ஓட்டத்தைப் பதிவுசெய்ய முடியாது.';

  @override
  String get run_locationNeeded =>
      'உங்கள் பாதையைப் பதிவுசெய்ய Běhánek-க்கு “ஆப்ஸைப் பயன்படுத்தும்போது” இருப்பிடம் தேவை. அது எங்கும் அனுப்பப்படாது; உங்கள் தொலைபேசியிலேயே இருக்கும்.';

  @override
  String get run_allowLocation => 'இருப்பிடத்தை அனுமதி';

  @override
  String get run_gpsSearching => 'GPS தேடுகிறது…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS சிறப்பு (±$meters மீ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS நன்று (±$meters மீ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS பலவீனம் (±$meters மீ.) — சற்று காத்திருங்கள்';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'கோஸ்ட்: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'பேசர்: இன்னும் போதுமான ஓட்டங்கள் இல்லை — நேரமும் தூரமும் மட்டும் அறிவிப்பேன்';

  @override
  String run_pacerForm(int count) {
    return 'பேசர்: $count ஓட்டங்களிலிருந்து உங்கள் ஃபார்ம்';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'பேசர்: $count ஓட்டங்களிலிருந்து உங்கள் ஃபார்ம், 2 % வேகமாக';
  }

  @override
  String get run_form => 'ஃபார்ம்';

  @override
  String get run_ghost => 'கோஸ்ட்';

  @override
  String get run_start => 'தொடங்கு';

  @override
  String get run_noGhost =>
      'நீங்கள் இங்கிருந்து இன்னும் ஓடவில்லை — கோஸ்டுக்கு 300 மீ.க்குள் தொடங்கிய ஓட்டம் தேவை.';

  @override
  String get run_cancel => 'ரத்துசெய்';

  @override
  String run_aheadOfGhost(int meters) {
    return 'கோஸ்டை விட $meters மீ. முன்னால்';
  }

  @override
  String run_behindGhost(int meters) {
    return 'கோஸ்டை விட $meters மீ. பின்னால்';
  }

  @override
  String run_onTarget(String pace) {
    return 'இலக்கில் ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace-ஐ விட $seconds வி. வேகமாக';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace-ஐ விட $seconds வி. மெதுவாக';
  }

  @override
  String get run_autoPaused => 'தானியங்கு இடைநிறுத்தம்';

  @override
  String get run_paused => 'இடைநிறுத்தப்பட்டது';

  @override
  String get run_weakGps => 'பலவீனமான GPS சிக்னல்';

  @override
  String get run_resume => 'தொடர்';

  @override
  String get run_pause => 'இடைநிறுத்து';

  @override
  String get run_numbers => 'எண்கள்';

  @override
  String get run_map => 'வரைபடம்';

  @override
  String get run_waitingForLocation => 'இருப்பிடத்திற்காகக் காத்திருக்கிறது…';

  @override
  String get run_stopped => 'ஓட்டம் நிறுத்தப்பட்டது';

  @override
  String get run_save => 'சேமி';

  @override
  String get run_continue => 'தொடர்ந்து ஓடு';

  @override
  String get run_discardTitle => 'ஓட்டத்தை நிராகரிக்கவா?';

  @override
  String get run_discard => 'நிராகரி';

  @override
  String get run_discardBody => 'ஓட்டம் சேமிக்கப்படாது.';

  @override
  String get run_slideToStop => 'நிறுத்த நகர்த்தவும்';

  @override
  String get run_stop => 'நிறுத்து';

  @override
  String get stat_time => 'நேரம்';

  @override
  String get stat_pace => 'வேகம்';

  @override
  String get stat_average => 'சராசரி';

  @override
  String get stat_distance => 'தூரம்';

  @override
  String get stat_elevation => 'ஏற்றம் மீ.';

  @override
  String get detail_imported => 'GPX-இலிருந்து இறக்குமதி';

  @override
  String get detail_splits => 'பிரிவுகள்';

  @override
  String get detail_pace => 'வேகம்';

  @override
  String get detail_elevation => 'உயரம்';

  @override
  String get detail_exportGpx => 'GPX ஏற்றுமதி';

  @override
  String get detail_trim => 'தொடக்கம் / முடிவை வெட்டு';

  @override
  String get detail_deleteTitle => 'ஓட்டத்தை நீக்கவா?';

  @override
  String get detail_delete => 'நீக்கு';

  @override
  String get detail_deleteBody =>
      'ஓட்டமும் அதன் பாதையும் உங்கள் தொலைபேசியிலிருந்து மறையும். இதைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get detail_deleteRun => 'ஓட்டத்தை நீக்கு';

  @override
  String get detail_tooShort => 'ஒரு பிரிவை விடக் குறைவு.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ஓட்டத்தை வெட்டு';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to வைத்திரு';
  }

  @override
  String get trim_save => 'வெட்டைச் சேமி';

  @override
  String get import_title => 'GPX இறக்குமதி';

  @override
  String get import_intro =>
      'Strava, Garmin அல்லது வேறு ஆப்ஸிலிருந்து உங்கள் வரலாற்றைக் கொண்டு வாருங்கள் — தனி GPX கோப்புகள் அல்லது முழு ஏற்றுமதி ZIP-ஐத் தேர்ந்தெடுங்கள். பேசர் உடனே உங்கள் ஃபார்மைக் கற்றுக்கொள்ளும்.';

  @override
  String get import_pick => 'கோப்புகளைத் தேர்ந்தெடு';

  @override
  String get import_pickOther => 'வேறு கோப்புகளைத் தேர்ந்தெடு';

  @override
  String import_done(int count) {
    return '$count ஓட்டங்கள் இறக்குமதி செய்யப்பட்டன.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count ஓட்டங்கள் இறக்குமதி செய்யப்பட்டன, $skipped ஏற்கனவே வரலாற்றில் இருந்தன.';
  }

  @override
  String import_toImport(int count) {
    return 'இறக்குமதிக்கு $count ஓட்டங்கள்';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'இறக்குமதிக்கு $count ஓட்டங்கள் ($skipped தவிர்க்கப்பட்டன)';
  }

  @override
  String get import_duplicate => 'ஏற்கனவே வரலாற்றில் உள்ளது';

  @override
  String import_andMore(int count) {
    return '… மேலும் $count கோப்புகள்';
  }

  @override
  String import_importN(int count) {
    return '$count ஓட்டங்களை இறக்குமதி செய்';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek-இல் கட்டணம் உள்ள ஒரே விஷயம் இறக்குமதி: ஒருமுறை $price. ஓட்டங்களை ஏற்றுமதி செய்வது எப்போதும் இலவசம்.';
  }

  @override
  String import_unlock(String price) {
    return 'இறக்குமதியைத் திற — $price';
  }

  @override
  String get import_restore => 'வாங்கியதை மீட்டெடு';

  @override
  String get import_storeUnavailable => 'ஸ்டோர் இப்போது கிடைக்கவில்லை.';

  @override
  String get import_purchaseFailed => 'வாங்குதல் நிறைவடையவில்லை.';

  @override
  String get import_errZip => 'ZIP-ஐத் திறக்க முடியவில்லை.';

  @override
  String get import_errInvalid => 'கோப்பு சரியான GPX அல்ல.';

  @override
  String get import_errNoPoints => 'GPX-இல் பாதைப் புள்ளிகள் இல்லை.';

  @override
  String get import_errNoTimes =>
      'GPX-இல் நேர முத்திரைகள் இல்லை — வேகத்தைக் கணக்கிட முடியாது.';

  @override
  String get report_total => 'மொத்தம்';

  @override
  String get report_runs => 'ஓட்டங்கள்';

  @override
  String get report_longest => 'மிக நீளமானது';

  @override
  String report_perWeek(String unit) {
    return 'வாரத்திற்கு $unit';
  }

  @override
  String get report_paceTrend => 'வேகப் போக்கு';

  @override
  String get report_fewRuns => 'போக்கிற்குப் போதுமான ஓட்டங்கள் இல்லை.';

  @override
  String get notif_recording => 'உங்கள் ஓட்டம் பதிவாகிறது';

  @override
  String get notif_channel => 'ஓட்டப் பதிவு';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count கிலோமீட்டர்',
      one: '1 கிலோமீட்டர்',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value கிலோமீட்டர்';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மைல்',
      one: '1 மைல்',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value மைல்';
  }

  @override
  String cue_pace(String clock) {
    return 'வேகம் $clock';
  }

  @override
  String cue_time(String clock) {
    return 'நேரம் $clock';
  }

  @override
  String get cue_onTarget => 'இலக்கில்';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வினாடிகள் வேகமாக',
      one: '1 வினாடி வேகமாக',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வினாடிகள் மெதுவாக',
      one: '1 வினாடி மெதுவாக',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count மீட்டர் முன்னால்';
  }

  @override
  String cue_behind(int count) {
    return '$count மீட்டர் பின்னால்';
  }
}
