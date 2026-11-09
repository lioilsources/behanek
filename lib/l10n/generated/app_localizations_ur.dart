// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get back => 'واپس';

  @override
  String get history_import => 'درآمد';

  @override
  String get history_settings => 'ترتیبات';

  @override
  String get history_empty =>
      'ابھی کوئی دوڑ نہیں۔\nجوتے پہنیں اور ”دوڑیں“ پر ٹیپ کریں۔';

  @override
  String get history_run => 'دوڑیں';

  @override
  String get history_report => 'رپورٹ';

  @override
  String get history_paceSame => 'وہی رفتار';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds سیکنڈ تیز';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds سیکنڈ سست';
  }

  @override
  String get settings_title => 'ترتیبات';

  @override
  String get settings_units => 'اکائیاں';

  @override
  String get settings_voiceLanguage => 'آواز کی زبان';

  @override
  String get settings_cues => 'اعلانات';

  @override
  String get settings_cueVoice => 'آواز';

  @override
  String get settings_cueTones => 'ٹونز';

  @override
  String get settings_cueBoth => 'دونوں';

  @override
  String get settings_cueOff => 'کوئی نہیں';

  @override
  String get settings_tonesHelp =>
      'ٹونز: دو چھوٹی = تیز ہوں، ایک لمبی = آہستہ ہوں، خاموشی = ہدف پر۔';

  @override
  String get settings_cueInterval => 'اعلانات کا وقفہ';

  @override
  String get settings_pacerGoal => 'آپ کی فارم سے ہدف';

  @override
  String get settings_pacerHold => 'بس اسے برقرار رکھیں';

  @override
  String get settings_pacerImprove => '2 % تیز';

  @override
  String get settings_autoPause => 'رکنے پر خودکار وقفہ';

  @override
  String get settings_metronome => 'قدموں کا میٹرونوم';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps قدم/منٹ';
  }

  @override
  String get settings_mapLayer => 'نقشہ';

  @override
  String get settings_backup => 'تمام دوڑوں کا بیک اپ (GPX کا ZIP)';

  @override
  String get settings_privacy =>
      'کوئی ڈیٹا کبھی آپ کے فون سے باہر نہیں جاتا۔ Běhánek میں نہ اکاؤنٹ ہے، نہ سرور، نہ اینالیٹکس اور نہ اشتہارات۔';

  @override
  String get map_satellite => 'سیٹلائٹ';

  @override
  String get map_topo => 'آؤٹ ڈور';

  @override
  String get run_title => 'دوڑ';

  @override
  String get run_locationOff =>
      'آپ کے فون میں لوکیشن بند ہے۔ اس کے بغیر میں دوڑ ریکارڈ نہیں کر سکتا۔';

  @override
  String get run_locationNeeded =>
      'Běhánek کو آپ کا راستہ ریکارڈ کرنے کے لیے ”ایپ استعمال کرتے وقت“ لوکیشن چاہیے۔ یہ اسے کہیں نہیں بھیجتا؛ یہ آپ کے فون میں رہتی ہے۔';

  @override
  String get run_allowLocation => 'لوکیشن کی اجازت دیں';

  @override
  String get run_gpsSearching => 'GPS تلاش ہو رہا ہے…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS بہترین (±$meters میٹر)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS اچھا (±$meters میٹر)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS کمزور (±$meters میٹر) — ذرا انتظار کریں';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'گھوسٹ: $date، $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'پیسر: ابھی کافی دوڑیں نہیں — صرف وقت اور فاصلہ بتاؤں گا';

  @override
  String run_pacerForm(int count) {
    return 'پیسر: $count دوڑوں سے آپ کی فارم';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'پیسر: $count دوڑوں سے آپ کی فارم، 2 % تیز';
  }

  @override
  String get run_form => 'فارم';

  @override
  String get run_ghost => 'گھوسٹ';

  @override
  String get run_start => 'شروع';

  @override
  String get run_noGhost =>
      'آپ ابھی یہاں سے نہیں دوڑے — گھوسٹ کو ایسی دوڑ چاہیے جو 300 میٹر کے اندر شروع ہوئی ہو۔';

  @override
  String get run_cancel => 'منسوخ';

  @override
  String run_aheadOfGhost(int meters) {
    return 'گھوسٹ سے $meters میٹر آگے';
  }

  @override
  String run_behindGhost(int meters) {
    return 'گھوسٹ سے $meters میٹر پیچھے';
  }

  @override
  String run_onTarget(String pace) {
    return 'ہدف پر ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace سے $seconds سیکنڈ تیز';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace سے $seconds سیکنڈ سست';
  }

  @override
  String get run_autoPaused => 'خودکار وقفہ';

  @override
  String get run_paused => 'رکا ہوا';

  @override
  String get run_weakGps => 'کمزور GPS سگنل';

  @override
  String get run_resume => 'جاری رکھیں';

  @override
  String get run_pause => 'وقفہ';

  @override
  String get run_numbers => 'اعداد';

  @override
  String get run_map => 'نقشہ';

  @override
  String get run_waitingForLocation => 'لوکیشن کا انتظار…';

  @override
  String get run_stopped => 'دوڑ رک گئی';

  @override
  String get run_save => 'محفوظ کریں';

  @override
  String get run_continue => 'دوڑتے رہیں';

  @override
  String get run_discardTitle => 'دوڑ ضائع کریں؟';

  @override
  String get run_discard => 'ضائع کریں';

  @override
  String get run_discardBody => 'دوڑ محفوظ نہیں ہوگی۔';

  @override
  String get run_slideToStop => 'روکنے کے لیے سلائیڈ کریں';

  @override
  String get run_stop => 'رکیں';

  @override
  String get stat_time => 'وقت';

  @override
  String get stat_pace => 'رفتار';

  @override
  String get stat_average => 'اوسط';

  @override
  String get stat_distance => 'فاصلہ';

  @override
  String get stat_elevation => 'بلندی میٹر';

  @override
  String get detail_imported => 'GPX سے درآمد شدہ';

  @override
  String get detail_splits => 'اسپلٹس';

  @override
  String get detail_pace => 'رفتار';

  @override
  String get detail_elevation => 'بلندی';

  @override
  String get detail_exportGpx => 'GPX برآمد کریں';

  @override
  String get detail_trim => 'شروع / آخر کاٹیں';

  @override
  String get detail_deleteTitle => 'دوڑ حذف کریں؟';

  @override
  String get detail_delete => 'حذف کریں';

  @override
  String get detail_deleteBody =>
      'دوڑ اور اس کا راستہ آپ کے فون سے غائب ہو جائیں گے۔ اسے واپس نہیں کیا جا سکتا۔';

  @override
  String get detail_deleteRun => 'دوڑ حذف کریں';

  @override
  String get detail_tooShort => 'ایک اسپلٹ سے چھوٹی۔';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'دوڑ کاٹیں';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to رکھیں';
  }

  @override
  String get trim_save => 'کٹائی محفوظ کریں';

  @override
  String get import_title => 'GPX درآمد کریں';

  @override
  String get import_intro =>
      'Strava، Garmin یا کسی اور ایپ سے اپنی ہسٹری لائیں — الگ GPX فائلیں یا پوری ZIP ایکسپورٹ چنیں۔ پیسر فوراً اس سے آپ کی فارم سیکھ لیتا ہے۔';

  @override
  String get import_pick => 'فائلیں چنیں';

  @override
  String get import_pickOther => 'دوسری فائلیں چنیں';

  @override
  String import_done(int count) {
    return '$count دوڑیں درآمد ہو گئیں۔';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count دوڑیں درآمد ہو گئیں، $skipped پہلے سے ہسٹری میں تھیں۔';
  }

  @override
  String import_toImport(int count) {
    return 'درآمد کے لیے $count دوڑیں';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'درآمد کے لیے $count دوڑیں ($skipped چھوڑی گئیں)';
  }

  @override
  String get import_duplicate => 'پہلے سے ہسٹری میں';

  @override
  String import_andMore(int count) {
    return '… اور $count مزید فائلیں';
  }

  @override
  String import_importN(int count) {
    return '$count دوڑیں درآمد کریں';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek میں صرف درآمد ہی ادائیگی والی چیز ہے: ایک بار $price۔ دوڑیں برآمد کرنا ہمیشہ مفت ہے۔';
  }

  @override
  String import_unlock(String price) {
    return 'درآمد کھولیں — $price';
  }

  @override
  String get import_restore => 'خریداری بحال کریں';

  @override
  String get import_storeUnavailable => 'اسٹور ابھی دستیاب نہیں۔';

  @override
  String get import_purchaseFailed => 'خریداری مکمل نہیں ہوئی۔';

  @override
  String get import_errZip => 'ZIP نہیں کھل سکتی۔';

  @override
  String get import_errInvalid => 'فائل درست GPX نہیں ہے۔';

  @override
  String get import_errNoPoints => 'GPX میں راستے کے پوائنٹس نہیں ہیں۔';

  @override
  String get import_errNoTimes =>
      'GPX میں وقت کے نشانات نہیں — رفتار کا حساب نہیں ہو سکتا۔';

  @override
  String get report_total => 'کل';

  @override
  String get report_runs => 'دوڑیں';

  @override
  String get report_longest => 'سب سے لمبی';

  @override
  String report_perWeek(String unit) {
    return '$unit فی ہفتہ';
  }

  @override
  String get report_paceTrend => 'رفتار کا رجحان';

  @override
  String get report_fewRuns => 'رجحان کے لیے کافی دوڑیں نہیں۔';

  @override
  String get notif_recording => 'آپ کی دوڑ ریکارڈ ہو رہی ہے';

  @override
  String get notif_channel => 'دوڑ کی ریکارڈنگ';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کلومیٹر',
      one: '1 کلومیٹر',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value کلومیٹر';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count میل',
      one: '1 میل',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value میل';
  }

  @override
  String cue_pace(String clock) {
    return 'رفتار $clock';
  }

  @override
  String cue_time(String clock) {
    return 'وقت $clock';
  }

  @override
  String get cue_onTarget => 'ہدف پر';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سیکنڈ تیز',
      one: '1 سیکنڈ تیز',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سیکنڈ سست',
      one: '1 سیکنڈ سست',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count میٹر آگے';
  }

  @override
  String cue_behind(int count) {
    return '$count میٹر پیچھے';
  }
}
