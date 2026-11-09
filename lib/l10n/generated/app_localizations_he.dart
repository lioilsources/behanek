// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get back => 'חזרה';

  @override
  String get history_import => 'ייבוא';

  @override
  String get history_settings => 'הגדרות';

  @override
  String get history_empty => 'עדיין אין ריצות.\nנעלו נעליים והקישו על ״ריצה״.';

  @override
  String get history_run => 'ריצה';

  @override
  String get history_report => 'דוח';

  @override
  String get history_paceSame => 'אותו קצב';

  @override
  String history_paceFaster(int seconds) {
    return 'מהר יותר ב־$seconds ש׳';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'לאט יותר ב־$seconds ש׳';
  }

  @override
  String get settings_title => 'הגדרות';

  @override
  String get settings_units => 'יחידות';

  @override
  String get settings_voiceLanguage => 'שפת הקול';

  @override
  String get settings_cues => 'הודעות';

  @override
  String get settings_cueVoice => 'קול';

  @override
  String get settings_cueTones => 'צלילים';

  @override
  String get settings_cueBoth => 'שניהם';

  @override
  String get settings_cueOff => 'ללא';

  @override
  String get settings_tonesHelp =>
      'צלילים: שניים קצרים = להאיץ, אחד ארוך = להאט, שקט = בדיוק ביעד.';

  @override
  String get settings_cueInterval => 'מרווח בין הודעות';

  @override
  String get settings_pacerGoal => 'יעד לפי הכושר שלך';

  @override
  String get settings_pacerHold => 'רק לשמור עליו';

  @override
  String get settings_pacerImprove => 'מהר יותר ב־2 %';

  @override
  String get settings_autoPause => 'השהיה אוטומטית כשעוצרים';

  @override
  String get settings_metronome => 'מטרונום קצב צעדים';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps צעדים/דקה';
  }

  @override
  String get settings_mapLayer => 'מפה';

  @override
  String get settings_backup => 'גיבוי כל הריצות (ZIP של GPX)';

  @override
  String get settings_privacy =>
      'שום מידע לא יוצא מהטלפון שלך. ב־Běhánek אין חשבון, אין שרת, אין אנליטיקה ואין פרסומות.';

  @override
  String get map_satellite => 'לוויין';

  @override
  String get map_topo => 'שטח';

  @override
  String get run_title => 'ריצה';

  @override
  String get run_locationOff =>
      'שירותי המיקום כבויים בטלפון. בלעדיהם אי אפשר להקליט את הריצה.';

  @override
  String get run_locationNeeded =>
      'Běhánek צריך מיקום ״בזמן השימוש באפליקציה״ כדי להקליט את המסלול. הוא לא שולח אותו לשום מקום; הוא נשאר בטלפון שלך.';

  @override
  String get run_allowLocation => 'אפשר מיקום';

  @override
  String get run_gpsSearching => 'מחפש GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS מצוין (±$meters מ׳)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS טוב (±$meters מ׳)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS חלש (±$meters מ׳) — חכו רגע';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'רוח: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'קוצב: עדיין אין מספיק ריצות — אודיע רק זמן ומרחק';

  @override
  String run_pacerForm(int count) {
    return 'קוצב: הכושר שלך מ־$count ריצות';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'קוצב: הכושר שלך מ־$count ריצות, מהר יותר ב־2 %';
  }

  @override
  String get run_form => 'כושר';

  @override
  String get run_ghost => 'רוח';

  @override
  String get run_start => 'התחל';

  @override
  String get run_noGhost =>
      'עדיין לא רצת מכאן — הרוח צריכה ריצה שהתחילה בטווח של 300 מ׳.';

  @override
  String get run_cancel => 'ביטול';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters מ׳ לפני הרוח';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters מ׳ אחרי הרוח';
  }

  @override
  String run_onTarget(String pace) {
    return 'ביעד ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'מהר יותר ב־$seconds ש׳ מ־$pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'לאט יותר ב־$seconds ש׳ מ־$pace';
  }

  @override
  String get run_autoPaused => 'השהיה אוטומטית';

  @override
  String get run_paused => 'מושהה';

  @override
  String get run_weakGps => 'אות GPS חלש';

  @override
  String get run_resume => 'המשך';

  @override
  String get run_pause => 'השהה';

  @override
  String get run_numbers => 'מספרים';

  @override
  String get run_map => 'מפה';

  @override
  String get run_waitingForLocation => 'ממתין למיקום…';

  @override
  String get run_stopped => 'הריצה נעצרה';

  @override
  String get run_save => 'שמור';

  @override
  String get run_continue => 'להמשיך לרוץ';

  @override
  String get run_discardTitle => 'למחוק את הריצה?';

  @override
  String get run_discard => 'מחק';

  @override
  String get run_discardBody => 'הריצה לא תישמר.';

  @override
  String get run_slideToStop => 'החליקו לעצירה';

  @override
  String get run_stop => 'עצור';

  @override
  String get stat_time => 'זמן';

  @override
  String get stat_pace => 'קצב';

  @override
  String get stat_average => 'ממוצע';

  @override
  String get stat_distance => 'מרחק';

  @override
  String get stat_elevation => 'טיפוס מ׳';

  @override
  String get detail_imported => 'יובא מ־GPX';

  @override
  String get detail_splits => 'מקטעים';

  @override
  String get detail_pace => 'קצב';

  @override
  String get detail_elevation => 'גובה';

  @override
  String get detail_exportGpx => 'ייצוא GPX';

  @override
  String get detail_trim => 'חיתוך התחלה / סוף';

  @override
  String get detail_deleteTitle => 'למחוק את הריצה?';

  @override
  String get detail_delete => 'מחק';

  @override
  String get detail_deleteBody =>
      'הריצה והמסלול שלה ייעלמו מהטלפון. אי אפשר לבטל זאת.';

  @override
  String get detail_deleteRun => 'מחק ריצה';

  @override
  String get detail_tooShort => 'קצר ממקטע אחד.';

  @override
  String get detail_startMarker => 'ה';

  @override
  String get detail_finishMarker => 'ס';

  @override
  String get trim_title => 'חיתוך ריצה';

  @override
  String trim_keep(String from, String to) {
    return 'לשמור $from – $to';
  }

  @override
  String get trim_save => 'שמור חיתוך';

  @override
  String get import_title => 'ייבוא GPX';

  @override
  String get import_intro =>
      'העבירו את ההיסטוריה שלכם מ־Strava, Garmin או אפליקציה אחרת — בחרו קובצי GPX בודדים או קובץ ייצוא ZIP שלם. הקוצב לומד ממנו את הכושר שלכם מיד.';

  @override
  String get import_pick => 'בחירת קבצים';

  @override
  String get import_pickOther => 'בחירת קבצים אחרים';

  @override
  String import_done(int count) {
    return 'יובאו $count ריצות.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'יובאו $count ריצות, $skipped כבר היו בהיסטוריה.';
  }

  @override
  String import_toImport(int count) {
    return '$count ריצות לייבוא';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count ריצות לייבוא ($skipped דולגו)';
  }

  @override
  String get import_duplicate => 'כבר בהיסטוריה';

  @override
  String import_andMore(int count) {
    return '… ועוד $count קבצים';
  }

  @override
  String import_importN(int count) {
    return 'ייבוא $count ריצות';
  }

  @override
  String import_paid(String price) {
    return 'הייבוא הוא הדבר היחיד בתשלום ב־Běhánek: $price חד־פעמי. ייצוא הריצות תמיד חינמי.';
  }

  @override
  String import_unlock(String price) {
    return 'פתיחת הייבוא — $price';
  }

  @override
  String get import_restore => 'שחזור רכישה';

  @override
  String get import_storeUnavailable => 'החנות אינה זמינה כרגע.';

  @override
  String get import_purchaseFailed => 'הרכישה לא הושלמה.';

  @override
  String get import_errZip => 'אי אפשר לפתוח את קובץ ה־ZIP.';

  @override
  String get import_errInvalid => 'הקובץ אינו GPX תקין.';

  @override
  String get import_errNoPoints => 'בקובץ ה־GPX אין נקודות מסלול.';

  @override
  String get import_errNoTimes =>
      'בקובץ ה־GPX אין חותמות זמן — אי אפשר לחשב קצב.';

  @override
  String get report_total => 'סה״כ';

  @override
  String get report_runs => 'ריצות';

  @override
  String get report_longest => 'הארוכה ביותר';

  @override
  String report_perWeek(String unit) {
    return '$unit בשבוע';
  }

  @override
  String get report_paceTrend => 'מגמת קצב';

  @override
  String get report_fewRuns => 'אין מספיק ריצות למגמה.';

  @override
  String get notif_recording => 'מקליט את הריצה שלך';

  @override
  String get notif_channel => 'הקלטת ריצה';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count קילומטרים',
      two: 'שני קילומטרים',
      one: 'קילומטר אחד',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value קילומטרים';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מיילים',
      two: 'שני מיילים',
      one: 'מייל אחד',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value מיילים';
  }

  @override
  String cue_pace(String clock) {
    return 'קצב $clock';
  }

  @override
  String cue_time(String clock) {
    return 'זמן $clock';
  }

  @override
  String get cue_onTarget => 'ביעד';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'מהר יותר ב־$count שניות',
      two: 'מהר יותר בשתי שניות',
      one: 'מהר יותר בשנייה',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לאט יותר ב־$count שניות',
      two: 'לאט יותר בשתי שניות',
      one: 'לאט יותר בשנייה',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מטרים קדימה',
      two: 'שני מטרים קדימה',
      one: 'מטר אחד קדימה',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מטרים מאחור',
      two: 'שני מטרים מאחור',
      one: 'מטר אחד מאחור',
    );
    return '$_temp0';
  }
}
