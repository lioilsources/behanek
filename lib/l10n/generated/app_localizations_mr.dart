// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get back => 'मागे';

  @override
  String get history_import => 'इम्पोर्ट';

  @override
  String get history_settings => 'सेटिंग्ज';

  @override
  String get history_empty =>
      'अजून एकही धाव नाही.\nबूट घाला आणि ‘धावा’ वर टॅप करा.';

  @override
  String get history_run => 'धावा';

  @override
  String get history_report => 'अहवाल';

  @override
  String get history_paceSame => 'तोच पेस';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds से. वेगवान';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds से. हळू';
  }

  @override
  String get settings_title => 'सेटिंग्ज';

  @override
  String get settings_units => 'एकके';

  @override
  String get settings_voiceLanguage => 'आवाजाची भाषा';

  @override
  String get settings_cues => 'घोषणा';

  @override
  String get settings_cueVoice => 'आवाज';

  @override
  String get settings_cueTones => 'टोन';

  @override
  String get settings_cueBoth => 'दोन्ही';

  @override
  String get settings_cueOff => 'काहीही नाही';

  @override
  String get settings_tonesHelp =>
      'टोन: दोन लहान = वेग वाढवा, एक लांब = वेग कमी करा, शांतता = लक्ष्यावर.';

  @override
  String get settings_cueInterval => 'घोषणांचे अंतर';

  @override
  String get settings_pacerGoal => 'तुमच्या फॉर्मवरून लक्ष्य';

  @override
  String get settings_pacerHold => 'फक्त टिकवा';

  @override
  String get settings_pacerImprove => '2 % वेगवान';

  @override
  String get settings_autoPause => 'थांबल्यावर आपोआप विराम';

  @override
  String get settings_metronome => 'कॅडन्स मेट्रोनोम';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps पावले/मिनिट';
  }

  @override
  String get settings_mapLayer => 'नकाशा';

  @override
  String get settings_backup => 'सर्व धावांचा बॅकअप (GPX चा ZIP)';

  @override
  String get settings_privacy =>
      'कोणताही डेटा कधीच तुमच्या फोनबाहेर जात नाही. Běhánek मध्ये खाते, सर्व्हर, अ‍ॅनालिटिक्स किंवा जाहिराती नाहीत.';

  @override
  String get map_satellite => 'उपग्रह';

  @override
  String get map_topo => 'आउटडोअर';

  @override
  String get run_title => 'धाव';

  @override
  String get run_locationOff =>
      'तुमच्या फोनमध्ये लोकेशन बंद आहे. त्याशिवाय धाव रेकॉर्ड करता येत नाही.';

  @override
  String get run_locationNeeded =>
      'तुमचा मार्ग रेकॉर्ड करण्यासाठी Běhánek ला “अ‍ॅप वापरताना” लोकेशन हवे. ते कुठेही पाठवले जात नाही; ते तुमच्या फोनमध्येच राहते.';

  @override
  String get run_allowLocation => 'लोकेशनला परवानगी द्या';

  @override
  String get run_gpsSearching => 'GPS शोधत आहे…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS उत्कृष्ट (±$meters मी.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS चांगले (±$meters मी.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS कमकुवत (±$meters मी.) — थोडे थांबा';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'घोस्ट: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'पेसर: अजून पुरेशा धावा नाहीत — फक्त वेळ आणि अंतर सांगेन';

  @override
  String run_pacerForm(int count) {
    return 'पेसर: $count धावांवरून तुमचा फॉर्म';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'पेसर: $count धावांवरून तुमचा फॉर्म, 2 % वेगवान';
  }

  @override
  String get run_form => 'फॉर्म';

  @override
  String get run_ghost => 'घोस्ट';

  @override
  String get run_start => 'सुरू';

  @override
  String get run_noGhost =>
      'तुम्ही इथून अजून धावला नाहीत — घोस्टसाठी 300 मी. च्या आत सुरू झालेली धाव हवी.';

  @override
  String get run_cancel => 'रद्द करा';

  @override
  String run_aheadOfGhost(int meters) {
    return 'घोस्टच्या $meters मी. पुढे';
  }

  @override
  String run_behindGhost(int meters) {
    return 'घोस्टच्या $meters मी. मागे';
  }

  @override
  String run_onTarget(String pace) {
    return 'लक्ष्यावर ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace पेक्षा $seconds से. वेगवान';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace पेक्षा $seconds से. हळू';
  }

  @override
  String get run_autoPaused => 'आपोआप विराम';

  @override
  String get run_paused => 'विराम';

  @override
  String get run_weakGps => 'कमकुवत GPS सिग्नल';

  @override
  String get run_resume => 'पुढे सुरू';

  @override
  String get run_pause => 'विराम';

  @override
  String get run_numbers => 'आकडे';

  @override
  String get run_map => 'नकाशा';

  @override
  String get run_waitingForLocation => 'लोकेशनची वाट पाहत आहे…';

  @override
  String get run_stopped => 'धाव थांबली';

  @override
  String get run_save => 'सेव्ह करा';

  @override
  String get run_continue => 'धावत राहा';

  @override
  String get run_discardTitle => 'धाव रद्द करायची?';

  @override
  String get run_discard => 'रद्द करा';

  @override
  String get run_discardBody => 'धाव सेव्ह होणार नाही.';

  @override
  String get run_slideToStop => 'थांबवण्यासाठी स्लाइड करा';

  @override
  String get run_stop => 'थांबा';

  @override
  String get stat_time => 'वेळ';

  @override
  String get stat_pace => 'पेस';

  @override
  String get stat_average => 'सरासरी';

  @override
  String get stat_distance => 'अंतर';

  @override
  String get stat_elevation => 'चढ मी.';

  @override
  String get detail_imported => 'GPX मधून इम्पोर्ट';

  @override
  String get detail_splits => 'स्प्लिट्स';

  @override
  String get detail_pace => 'पेस';

  @override
  String get detail_elevation => 'उंची';

  @override
  String get detail_exportGpx => 'GPX एक्सपोर्ट';

  @override
  String get detail_trim => 'सुरुवात / शेवट कापा';

  @override
  String get detail_deleteTitle => 'धाव हटवायची?';

  @override
  String get detail_delete => 'हटवा';

  @override
  String get detail_deleteBody =>
      'धाव आणि तिचा मार्ग तुमच्या फोनमधून नाहीसे होतील. हे पूर्ववत करता येत नाही.';

  @override
  String get detail_deleteRun => 'धाव हटवा';

  @override
  String get detail_tooShort => 'एका स्प्लिटपेक्षा लहान.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'धाव कापा';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to ठेवा';
  }

  @override
  String get trim_save => 'कापणी सेव्ह करा';

  @override
  String get import_title => 'GPX इम्पोर्ट';

  @override
  String get import_intro =>
      'Strava, Garmin किंवा दुसऱ्या अ‍ॅपमधून तुमचा इतिहास आणा — स्वतंत्र GPX फाइल्स किंवा संपूर्ण एक्सपोर्ट ZIP निवडा. पेसर लगेच त्यातून तुमचा फॉर्म शिकतो.';

  @override
  String get import_pick => 'फाइल्स निवडा';

  @override
  String get import_pickOther => 'इतर फाइल्स निवडा';

  @override
  String import_done(int count) {
    return '$count धावा इम्पोर्ट झाल्या.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count धावा इम्पोर्ट झाल्या, $skipped आधीच इतिहासात होत्या.';
  }

  @override
  String import_toImport(int count) {
    return 'इम्पोर्टसाठी $count धावा';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'इम्पोर्टसाठी $count धावा ($skipped वगळल्या)';
  }

  @override
  String get import_duplicate => 'आधीच इतिहासात';

  @override
  String import_andMore(int count) {
    return '… आणि आणखी $count फाइल्स';
  }

  @override
  String import_importN(int count) {
    return '$count धावा इम्पोर्ट करा';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek मध्ये फक्त इम्पोर्टच सशुल्क आहे: एकदाच $price. धावा एक्सपोर्ट करणे नेहमी मोफत.';
  }

  @override
  String import_unlock(String price) {
    return 'इम्पोर्ट अनलॉक करा — $price';
  }

  @override
  String get import_restore => 'खरेदी पुनर्संचयित करा';

  @override
  String get import_storeUnavailable => 'स्टोअर सध्या उपलब्ध नाही.';

  @override
  String get import_purchaseFailed => 'खरेदी पूर्ण झाली नाही.';

  @override
  String get import_errZip => 'ZIP उघडता येत नाही.';

  @override
  String get import_errInvalid => 'फाइल वैध GPX नाही.';

  @override
  String get import_errNoPoints => 'GPX मध्ये ट्रॅक पॉइंट्स नाहीत.';

  @override
  String get import_errNoTimes =>
      'GPX मध्ये टाइमस्टॅम्प नाहीत — पेस मोजता येत नाही.';

  @override
  String get report_total => 'एकूण';

  @override
  String get report_runs => 'धावा';

  @override
  String get report_longest => 'सर्वात लांब';

  @override
  String report_perWeek(String unit) {
    return 'दर आठवड्याला $unit';
  }

  @override
  String get report_paceTrend => 'पेसचा कल';

  @override
  String get report_fewRuns => 'कलासाठी पुरेशा धावा नाहीत.';

  @override
  String get notif_recording => 'तुमची धाव रेकॉर्ड होत आहे';

  @override
  String get notif_channel => 'धाव रेकॉर्डिंग';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count किलोमीटर',
      one: '$count किलोमीटर',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value किलोमीटर';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मैल',
      one: '$count मैल',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value मैल';
  }

  @override
  String cue_pace(String clock) {
    return 'पेस $clock';
  }

  @override
  String cue_time(String clock) {
    return 'वेळ $clock';
  }

  @override
  String get cue_onTarget => 'लक्ष्यावर';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सेकंद वेगवान',
      one: '$count सेकंद वेगवान',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सेकंद हळू',
      one: '$count सेकंद हळू',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count मीटर पुढे';
  }

  @override
  String cue_behind(int count) {
    return '$count मीटर मागे';
  }
}
