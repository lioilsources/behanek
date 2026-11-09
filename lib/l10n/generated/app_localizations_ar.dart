// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get back => 'رجوع';

  @override
  String get history_import => 'استيراد';

  @override
  String get history_settings => 'الإعدادات';

  @override
  String get history_empty =>
      'لا توجد جولات جري بعد.\nارتدِ حذاءك واضغط «اجرِ».';

  @override
  String get history_run => 'اجرِ';

  @override
  String get history_report => 'تقرير';

  @override
  String get history_paceSame => 'الوتيرة نفسها';

  @override
  String history_paceFaster(int seconds) {
    return 'أسرع بـ $seconds ث';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'أبطأ بـ $seconds ث';
  }

  @override
  String get settings_title => 'الإعدادات';

  @override
  String get settings_units => 'الوحدات';

  @override
  String get settings_voiceLanguage => 'لغة الصوت';

  @override
  String get settings_cues => 'الإعلانات';

  @override
  String get settings_cueVoice => 'صوت';

  @override
  String get settings_cueTones => 'نغمات';

  @override
  String get settings_cueBoth => 'كلاهما';

  @override
  String get settings_cueOff => 'بلا';

  @override
  String get settings_tonesHelp =>
      'النغمات: اثنتان قصيرتان = أسرِع، واحدة طويلة = أبطئ، صمت = على الهدف.';

  @override
  String get settings_cueInterval => 'الفاصل بين الإعلانات';

  @override
  String get settings_pacerGoal => 'الهدف من لياقتك';

  @override
  String get settings_pacerHold => 'حافظ عليها فقط';

  @override
  String get settings_pacerImprove => 'أسرع بنسبة 2 %';

  @override
  String get settings_autoPause => 'إيقاف مؤقت تلقائي عند التوقف';

  @override
  String get settings_metronome => 'مترونوم الإيقاع';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps خطوة/دقيقة';
  }

  @override
  String get settings_mapLayer => 'الخريطة';

  @override
  String get settings_backup => 'نسخ احتياطي لكل الجولات (ZIP من GPX)';

  @override
  String get settings_privacy =>
      'لا تغادر أي بيانات هاتفك أبدًا. لا يوجد في Běhánek حساب ولا خادم ولا تحليلات ولا إعلانات.';

  @override
  String get map_satellite => 'قمر صناعي';

  @override
  String get map_topo => 'طبيعة';

  @override
  String get run_title => 'جري';

  @override
  String get run_locationOff =>
      'خدمة الموقع متوقفة في هاتفك. من دونها لا أستطيع تسجيل الجري.';

  @override
  String get run_locationNeeded =>
      'يحتاج Běhánek إلى الموقع «أثناء استخدام التطبيق» لتسجيل مسارك. لا يرسله إلى أي مكان؛ يبقى في هاتفك.';

  @override
  String get run_allowLocation => 'السماح بالموقع';

  @override
  String get run_gpsSearching => 'جارٍ البحث عن GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ممتاز (±$meters م)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS جيد (±$meters م)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS ضعيف (±$meters م) — انتظر لحظة';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'الشبح: $date، $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'المنظِّم: لا توجد جولات كافية بعد — سأعلن الوقت والمسافة فقط';

  @override
  String run_pacerForm(int count) {
    return 'المنظِّم: لياقتك من $count جولات';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'المنظِّم: لياقتك من $count جولات، أسرع بنسبة 2 %';
  }

  @override
  String get run_form => 'اللياقة';

  @override
  String get run_ghost => 'الشبح';

  @override
  String get run_start => 'ابدأ';

  @override
  String get run_noGhost =>
      'لم تجرِ من هنا بعد — يحتاج الشبح إلى جولة بدأت في نطاق 300 م.';

  @override
  String get run_cancel => 'إلغاء';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters م أمام الشبح';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters م خلف الشبح';
  }

  @override
  String run_onTarget(String pace) {
    return 'على الهدف ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'أسرع بـ $seconds ث من $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'أبطأ بـ $seconds ث من $pace';
  }

  @override
  String get run_autoPaused => 'إيقاف تلقائي';

  @override
  String get run_paused => 'متوقف مؤقتًا';

  @override
  String get run_weakGps => 'إشارة GPS ضعيفة';

  @override
  String get run_resume => 'متابعة';

  @override
  String get run_pause => 'إيقاف مؤقت';

  @override
  String get run_numbers => 'الأرقام';

  @override
  String get run_map => 'الخريطة';

  @override
  String get run_waitingForLocation => 'في انتظار الموقع…';

  @override
  String get run_stopped => 'توقف الجري';

  @override
  String get run_save => 'حفظ';

  @override
  String get run_continue => 'واصل الجري';

  @override
  String get run_discardTitle => 'تجاهل الجولة؟';

  @override
  String get run_discard => 'تجاهل';

  @override
  String get run_discardBody => 'لن تُحفظ الجولة.';

  @override
  String get run_slideToStop => 'اسحب للإيقاف';

  @override
  String get run_stop => 'قف';

  @override
  String get stat_time => 'الوقت';

  @override
  String get stat_pace => 'الوتيرة';

  @override
  String get stat_average => 'المتوسط';

  @override
  String get stat_distance => 'المسافة';

  @override
  String get stat_elevation => 'الارتفاع م';

  @override
  String get detail_imported => 'مستورد من GPX';

  @override
  String get detail_splits => 'المقاطع';

  @override
  String get detail_pace => 'الوتيرة';

  @override
  String get detail_elevation => 'الارتفاع';

  @override
  String get detail_exportGpx => 'تصدير GPX';

  @override
  String get detail_trim => 'قص البداية / النهاية';

  @override
  String get detail_deleteTitle => 'حذف الجولة؟';

  @override
  String get detail_delete => 'حذف';

  @override
  String get detail_deleteBody =>
      'ستختفي الجولة ومسارها من هاتفك. لا يمكن التراجع عن ذلك.';

  @override
  String get detail_deleteRun => 'حذف الجولة';

  @override
  String get detail_tooShort => 'أقصر من مقطع واحد.';

  @override
  String get detail_startMarker => 'ب';

  @override
  String get detail_finishMarker => 'ن';

  @override
  String get trim_title => 'قص الجولة';

  @override
  String trim_keep(String from, String to) {
    return 'الإبقاء على $from – $to';
  }

  @override
  String get trim_save => 'حفظ القص';

  @override
  String get import_title => 'استيراد GPX';

  @override
  String get import_intro =>
      'انقل سجلك من Strava أو Garmin أو تطبيق آخر — اختر ملفات GPX منفردة أو ملف تصدير ZIP كاملًا. يتعلم المنظِّم لياقتك منه فورًا.';

  @override
  String get import_pick => 'اختر ملفات';

  @override
  String get import_pickOther => 'اختر ملفات أخرى';

  @override
  String import_done(int count) {
    return 'تم استيراد $count جولات.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'تم استيراد $count جولات، و$skipped كانت موجودة في سجلك.';
  }

  @override
  String import_toImport(int count) {
    return '$count جولات للاستيراد';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count جولات للاستيراد (تم تخطي $skipped)';
  }

  @override
  String get import_duplicate => 'موجودة في سجلك';

  @override
  String import_andMore(int count) {
    return '… و$count ملفات أخرى';
  }

  @override
  String import_importN(int count) {
    return 'استيراد $count جولات';
  }

  @override
  String import_paid(String price) {
    return 'الاستيراد هو الشيء المدفوع الوحيد في Běhánek: $price لمرة واحدة. تصدير جولاتك مجاني دائمًا.';
  }

  @override
  String import_unlock(String price) {
    return 'فتح الاستيراد — $price';
  }

  @override
  String get import_restore => 'استعادة الشراء';

  @override
  String get import_storeUnavailable => 'المتجر غير متاح الآن.';

  @override
  String get import_purchaseFailed => 'لم تتم عملية الشراء.';

  @override
  String get import_errZip => 'لا يمكن فتح ملف ZIP.';

  @override
  String get import_errInvalid => 'الملف ليس GPX صالحًا.';

  @override
  String get import_errNoPoints => 'لا يحتوي ملف GPX على نقاط مسار.';

  @override
  String get import_errNoTimes =>
      'لا يحتوي ملف GPX على طوابع زمنية — لا يمكن حساب الوتيرة.';

  @override
  String get report_total => 'المجموع';

  @override
  String get report_runs => 'جولات';

  @override
  String get report_longest => 'الأطول';

  @override
  String report_perWeek(String unit) {
    return '$unit في الأسبوع';
  }

  @override
  String get report_paceTrend => 'اتجاه الوتيرة';

  @override
  String get report_fewRuns => 'لا توجد جولات كافية لاتجاه.';

  @override
  String get notif_recording => 'جارٍ تسجيل جولتك';

  @override
  String get notif_channel => 'تسجيل الجري';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كيلومتر',
      many: '$count كيلومترًا',
      few: '$count كيلومترات',
      two: 'كيلومتران',
      one: 'كيلومتر واحد',
      zero: '$count كيلومتر',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value كيلومتر';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ميل',
      many: '$count ميلًا',
      few: '$count أميال',
      two: 'ميلان',
      one: 'ميل واحد',
      zero: '$count ميل',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value ميل';
  }

  @override
  String cue_pace(String clock) {
    return 'الوتيرة $clock';
  }

  @override
  String cue_time(String clock) {
    return 'الوقت $clock';
  }

  @override
  String get cue_onTarget => 'على الهدف';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أسرع بـ $count ثانية',
      many: 'أسرع بـ $count ثانية',
      few: 'أسرع بـ $count ثوانٍ',
      two: 'أسرع بثانيتين',
      one: 'أسرع بثانية واحدة',
      zero: 'أسرع بـ $count ثانية',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أبطأ بـ $count ثانية',
      many: 'أبطأ بـ $count ثانية',
      few: 'أبطأ بـ $count ثوانٍ',
      two: 'أبطأ بثانيتين',
      one: 'أبطأ بثانية واحدة',
      zero: 'أبطأ بـ $count ثانية',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count متر في المقدمة',
      many: '$count مترًا في المقدمة',
      few: '$count أمتار في المقدمة',
      two: 'متران في المقدمة',
      one: 'متر واحد في المقدمة',
      zero: '$count متر في المقدمة',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count متر في الخلف',
      many: '$count مترًا في الخلف',
      few: '$count أمتار في الخلف',
      two: 'متران في الخلف',
      one: 'متر واحد في الخلف',
      zero: '$count متر في الخلف',
    );
    return '$_temp0';
  }
}
