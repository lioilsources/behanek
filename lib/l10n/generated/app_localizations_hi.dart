// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get back => 'वापस';

  @override
  String get history_import => 'इम्पोर्ट';

  @override
  String get history_settings => 'सेटिंग्स';

  @override
  String get history_empty =>
      'अभी तक कोई दौड़ नहीं।\nजूते पहनें और ‘दौड़ें’ पर टैप करें।';

  @override
  String get history_run => 'दौड़ें';

  @override
  String get history_report => 'रिपोर्ट';

  @override
  String get history_paceSame => 'वही पेस';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds से. तेज़';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds से. धीमा';
  }

  @override
  String get settings_title => 'सेटिंग्स';

  @override
  String get settings_units => 'इकाइयाँ';

  @override
  String get settings_voiceLanguage => 'आवाज़ की भाषा';

  @override
  String get settings_cues => 'घोषणाएँ';

  @override
  String get settings_cueVoice => 'आवाज़';

  @override
  String get settings_cueTones => 'टोन';

  @override
  String get settings_cueBoth => 'दोनों';

  @override
  String get settings_cueOff => 'कोई नहीं';

  @override
  String get settings_tonesHelp =>
      'टोन: दो छोटे = तेज़ हों, एक लंबा = धीमे हों, चुप्पी = लक्ष्य पर।';

  @override
  String get settings_cueInterval => 'घोषणा का अंतराल';

  @override
  String get settings_pacerGoal => 'आपकी फ़ॉर्म से लक्ष्य';

  @override
  String get settings_pacerHold => 'बस बनाए रखें';

  @override
  String get settings_pacerImprove => '2 % तेज़';

  @override
  String get settings_autoPause => 'रुकने पर अपने-आप पॉज़';

  @override
  String get settings_metronome => 'कैडेंस मेट्रोनोम';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps कदम/मिनट';
  }

  @override
  String get settings_mapLayer => 'नक्शा';

  @override
  String get settings_backup => 'सभी दौड़ों का बैकअप (GPX का ZIP)';

  @override
  String get settings_privacy =>
      'कोई भी डेटा कभी आपके फ़ोन से बाहर नहीं जाता। Běhánek में न खाता है, न सर्वर, न एनालिटिक्स और न विज्ञापन।';

  @override
  String get map_satellite => 'सैटेलाइट';

  @override
  String get map_topo => 'आउटडोर';

  @override
  String get run_title => 'दौड़';

  @override
  String get run_locationOff =>
      'आपके फ़ोन में लोकेशन बंद है। इसके बिना मैं दौड़ रिकॉर्ड नहीं कर सकता।';

  @override
  String get run_locationNeeded =>
      'आपका रास्ता रिकॉर्ड करने के लिए Běhánek को “ऐप इस्तेमाल करते समय” लोकेशन चाहिए। यह इसे कहीं नहीं भेजता; यह आपके फ़ोन में ही रहती है।';

  @override
  String get run_allowLocation => 'लोकेशन की अनुमति दें';

  @override
  String get run_gpsSearching => 'GPS खोजा जा रहा है…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS बेहतरीन (±$meters मी.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS अच्छा (±$meters मी.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS कमज़ोर (±$meters मी.) — थोड़ा रुकें';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'घोस्ट: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'पेसर: अभी पर्याप्त दौड़ें नहीं — सिर्फ़ समय और दूरी बताऊँगा';

  @override
  String run_pacerForm(int count) {
    return 'पेसर: $count दौड़ों से आपकी फ़ॉर्म';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'पेसर: $count दौड़ों से आपकी फ़ॉर्म, 2 % तेज़';
  }

  @override
  String get run_form => 'फ़ॉर्म';

  @override
  String get run_ghost => 'घोस्ट';

  @override
  String get run_start => 'शुरू';

  @override
  String get run_noGhost =>
      'आप अभी यहाँ से नहीं दौड़े — घोस्ट को ऐसी दौड़ चाहिए जो 300 मी. के भीतर शुरू हुई हो।';

  @override
  String get run_cancel => 'रद्द करें';

  @override
  String run_aheadOfGhost(int meters) {
    return 'घोस्ट से $meters मी. आगे';
  }

  @override
  String run_behindGhost(int meters) {
    return 'घोस्ट से $meters मी. पीछे';
  }

  @override
  String run_onTarget(String pace) {
    return 'लक्ष्य पर ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace से $seconds से. तेज़';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace से $seconds से. धीमा';
  }

  @override
  String get run_autoPaused => 'ऑटो-पॉज़';

  @override
  String get run_paused => 'रुका हुआ';

  @override
  String get run_weakGps => 'कमज़ोर GPS सिग्नल';

  @override
  String get run_resume => 'जारी रखें';

  @override
  String get run_pause => 'पॉज़';

  @override
  String get run_numbers => 'आँकड़े';

  @override
  String get run_map => 'नक्शा';

  @override
  String get run_waitingForLocation => 'लोकेशन का इंतज़ार…';

  @override
  String get run_stopped => 'दौड़ रुकी';

  @override
  String get run_save => 'सेव करें';

  @override
  String get run_continue => 'दौड़ते रहें';

  @override
  String get run_discardTitle => 'दौड़ हटाएँ?';

  @override
  String get run_discard => 'हटाएँ';

  @override
  String get run_discardBody => 'दौड़ सेव नहीं होगी।';

  @override
  String get run_slideToStop => 'रोकने के लिए स्लाइड करें';

  @override
  String get run_stop => 'रुकें';

  @override
  String get stat_time => 'समय';

  @override
  String get stat_pace => 'पेस';

  @override
  String get stat_average => 'औसत';

  @override
  String get stat_distance => 'दूरी';

  @override
  String get stat_elevation => 'चढ़ाई मी.';

  @override
  String get detail_imported => 'GPX से इम्पोर्ट';

  @override
  String get detail_splits => 'स्प्लिट';

  @override
  String get detail_pace => 'पेस';

  @override
  String get detail_elevation => 'ऊँचाई';

  @override
  String get detail_exportGpx => 'GPX एक्सपोर्ट करें';

  @override
  String get detail_trim => 'शुरुआत / अंत काटें';

  @override
  String get detail_deleteTitle => 'दौड़ डिलीट करें?';

  @override
  String get detail_delete => 'डिलीट करें';

  @override
  String get detail_deleteBody =>
      'दौड़ और उसका रास्ता आपके फ़ोन से गायब हो जाएँगे। इसे वापस नहीं किया जा सकता।';

  @override
  String get detail_deleteRun => 'दौड़ डिलीट करें';

  @override
  String get detail_tooShort => 'एक स्प्लिट से छोटी।';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'दौड़ काटें';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to रखें';
  }

  @override
  String get trim_save => 'कटाई सेव करें';

  @override
  String get import_title => 'GPX इम्पोर्ट करें';

  @override
  String get import_intro =>
      'Strava, Garmin या किसी दूसरे ऐप से अपना इतिहास लाएँ — अलग-अलग GPX फ़ाइलें या पूरा एक्सपोर्ट ZIP चुनें। पेसर तुरंत इससे आपकी फ़ॉर्म सीख लेता है।';

  @override
  String get import_pick => 'फ़ाइलें चुनें';

  @override
  String get import_pickOther => 'दूसरी फ़ाइलें चुनें';

  @override
  String import_done(int count) {
    return '$count दौड़ें इम्पोर्ट हुईं।';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count दौड़ें इम्पोर्ट हुईं, $skipped पहले से इतिहास में थीं।';
  }

  @override
  String import_toImport(int count) {
    return 'इम्पोर्ट के लिए $count दौड़ें';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'इम्पोर्ट के लिए $count दौड़ें ($skipped छोड़ी गईं)';
  }

  @override
  String get import_duplicate => 'पहले से इतिहास में';

  @override
  String import_andMore(int count) {
    return '… और $count फ़ाइलें';
  }

  @override
  String import_importN(int count) {
    return '$count दौड़ें इम्पोर्ट करें';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek में सिर्फ़ इम्पोर्ट ही पेड है: एक बार $price। अपनी दौड़ें एक्सपोर्ट करना हमेशा मुफ़्त है।';
  }

  @override
  String import_unlock(String price) {
    return 'इम्पोर्ट अनलॉक करें — $price';
  }

  @override
  String get import_restore => 'खरीदारी बहाल करें';

  @override
  String get import_storeUnavailable => 'स्टोर अभी उपलब्ध नहीं है।';

  @override
  String get import_purchaseFailed => 'खरीदारी पूरी नहीं हुई।';

  @override
  String get import_errZip => 'ZIP नहीं खुल सकता।';

  @override
  String get import_errInvalid => 'फ़ाइल मान्य GPX नहीं है।';

  @override
  String get import_errNoPoints => 'GPX में ट्रैक पॉइंट नहीं हैं।';

  @override
  String get import_errNoTimes =>
      'GPX में टाइमस्टैम्प नहीं हैं — पेस की गणना नहीं हो सकती।';

  @override
  String get report_total => 'कुल';

  @override
  String get report_runs => 'दौड़ें';

  @override
  String get report_longest => 'सबसे लंबी';

  @override
  String report_perWeek(String unit) {
    return '$unit प्रति सप्ताह';
  }

  @override
  String get report_paceTrend => 'पेस का रुझान';

  @override
  String get report_fewRuns => 'रुझान के लिए पर्याप्त दौड़ें नहीं।';

  @override
  String get notif_recording => 'आपकी दौड़ रिकॉर्ड हो रही है';

  @override
  String get notif_channel => 'दौड़ रिकॉर्डिंग';

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
      other: '$count मील',
      one: '$count मील',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value मील';
  }

  @override
  String cue_pace(String clock) {
    return 'पेस $clock';
  }

  @override
  String cue_time(String clock) {
    return 'समय $clock';
  }

  @override
  String get cue_onTarget => 'लक्ष्य पर';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सेकंड तेज़',
      one: '$count सेकंड तेज़',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सेकंड धीमा',
      one: '$count सेकंड धीमा',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count मीटर आगे';
  }

  @override
  String cue_behind(int count) {
    return '$count मीटर पीछे';
  }
}
