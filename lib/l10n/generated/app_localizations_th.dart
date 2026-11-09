// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get back => 'กลับ';

  @override
  String get history_import => 'นำเข้า';

  @override
  String get history_settings => 'การตั้งค่า';

  @override
  String get history_empty => 'ยังไม่มีการวิ่ง\nใส่รองเท้าแล้วแตะ วิ่ง';

  @override
  String get history_run => 'วิ่ง';

  @override
  String get history_report => 'รายงาน';

  @override
  String get history_paceSame => 'เพซเท่าเดิม';

  @override
  String history_paceFaster(int seconds) {
    return 'เร็วขึ้น $seconds วิ';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'ช้าลง $seconds วิ';
  }

  @override
  String get settings_title => 'การตั้งค่า';

  @override
  String get settings_units => 'หน่วย';

  @override
  String get settings_voiceLanguage => 'ภาษาเสียง';

  @override
  String get settings_cues => 'การแจ้ง';

  @override
  String get settings_cueVoice => 'เสียงพูด';

  @override
  String get settings_cueTones => 'เสียงสัญญาณ';

  @override
  String get settings_cueBoth => 'ทั้งสองแบบ';

  @override
  String get settings_cueOff => 'ไม่มี';

  @override
  String get settings_tonesHelp =>
      'เสียงสัญญาณ: สั้นสองครั้ง = เร่ง, ยาวหนึ่งครั้ง = ผ่อน, เงียบ = ตรงเป้า';

  @override
  String get settings_cueInterval => 'ระยะห่างการแจ้ง';

  @override
  String get settings_pacerGoal => 'เป้าหมายจากฟอร์มของคุณ';

  @override
  String get settings_pacerHold => 'รักษาไว้เท่านั้น';

  @override
  String get settings_pacerImprove => 'เร็วขึ้น 2 %';

  @override
  String get settings_autoPause => 'หยุดชั่วคราวอัตโนมัติเมื่อหยุดวิ่ง';

  @override
  String get settings_metronome => 'เมโทรนอมจังหวะก้าว';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps ก้าว/นาที';
  }

  @override
  String get settings_mapLayer => 'แผนที่';

  @override
  String get settings_backup => 'สำรองการวิ่งทั้งหมด (ZIP ของ GPX)';

  @override
  String get settings_privacy =>
      'ไม่มีข้อมูลใดออกจากโทรศัพท์ของคุณ Běhánek ไม่มีบัญชี ไม่มีเซิร์ฟเวอร์ ไม่มีการวิเคราะห์ และไม่มีโฆษณา';

  @override
  String get map_satellite => 'ดาวเทียม';

  @override
  String get map_topo => 'กลางแจ้ง';

  @override
  String get run_title => 'วิ่ง';

  @override
  String get run_locationOff =>
      'ตำแหน่งในโทรศัพท์ปิดอยู่ หากไม่มีตำแหน่งจะบันทึกการวิ่งไม่ได้';

  @override
  String get run_locationNeeded =>
      'Běhánek ต้องใช้ตำแหน่ง “ขณะใช้แอป” เพื่อบันทึกเส้นทางของคุณ ไม่มีการส่งไปที่ใด ข้อมูลอยู่ในโทรศัพท์ของคุณเท่านั้น';

  @override
  String get run_allowLocation => 'อนุญาตตำแหน่ง';

  @override
  String get run_gpsSearching => 'กำลังค้นหา GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ดีเยี่ยม (±$meters ม.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS ดี (±$meters ม.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS อ่อน (±$meters ม.) — รอสักครู่';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ผี: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'เพซเซอร์: ยังมีการวิ่งไม่พอ — จะแจ้งเฉพาะเวลาและระยะทาง';

  @override
  String run_pacerForm(int count) {
    return 'เพซเซอร์: ฟอร์มของคุณจาก $count ครั้ง';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'เพซเซอร์: ฟอร์มของคุณจาก $count ครั้ง เร็วขึ้น 2 %';
  }

  @override
  String get run_form => 'ฟอร์ม';

  @override
  String get run_ghost => 'ผี';

  @override
  String get run_start => 'เริ่ม';

  @override
  String get run_noGhost =>
      'คุณยังไม่เคยวิ่งจากที่นี่ — ผีต้องใช้การวิ่งที่เริ่มในระยะ 300 ม.';

  @override
  String get run_cancel => 'ยกเลิก';

  @override
  String run_aheadOfGhost(int meters) {
    return 'นำผี $meters ม.';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ตามหลังผี $meters ม.';
  }

  @override
  String run_onTarget(String pace) {
    return 'ตรงเป้า ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'เร็วกว่า $pace อยู่ $seconds วิ';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'ช้ากว่า $pace อยู่ $seconds วิ';
  }

  @override
  String get run_autoPaused => 'หยุดอัตโนมัติ';

  @override
  String get run_paused => 'หยุดชั่วคราว';

  @override
  String get run_weakGps => 'สัญญาณ GPS อ่อน';

  @override
  String get run_resume => 'วิ่งต่อ';

  @override
  String get run_pause => 'หยุดชั่วคราว';

  @override
  String get run_numbers => 'ตัวเลข';

  @override
  String get run_map => 'แผนที่';

  @override
  String get run_waitingForLocation => 'กำลังรอตำแหน่ง…';

  @override
  String get run_stopped => 'หยุดการวิ่งแล้ว';

  @override
  String get run_save => 'บันทึก';

  @override
  String get run_continue => 'วิ่งต่อไป';

  @override
  String get run_discardTitle => 'ทิ้งการวิ่งนี้?';

  @override
  String get run_discard => 'ทิ้ง';

  @override
  String get run_discardBody => 'การวิ่งจะไม่ถูกบันทึก';

  @override
  String get run_slideToStop => 'เลื่อนเพื่อหยุด';

  @override
  String get run_stop => 'หยุด';

  @override
  String get stat_time => 'เวลา';

  @override
  String get stat_pace => 'เพซ';

  @override
  String get stat_average => 'เฉลี่ย';

  @override
  String get stat_distance => 'ระยะทาง';

  @override
  String get stat_elevation => 'ความสูงสะสม ม.';

  @override
  String get detail_imported => 'นำเข้าจาก GPX';

  @override
  String get detail_splits => 'สปลิต';

  @override
  String get detail_pace => 'เพซ';

  @override
  String get detail_elevation => 'ความสูง';

  @override
  String get detail_exportGpx => 'ส่งออก GPX';

  @override
  String get detail_trim => 'ตัดช่วงเริ่ม / จบ';

  @override
  String get detail_deleteTitle => 'ลบการวิ่งนี้?';

  @override
  String get detail_delete => 'ลบ';

  @override
  String get detail_deleteBody =>
      'การวิ่งและเส้นทางจะหายไปจากโทรศัพท์ ไม่สามารถย้อนกลับได้';

  @override
  String get detail_deleteRun => 'ลบการวิ่ง';

  @override
  String get detail_tooShort => 'สั้นกว่าหนึ่งสปลิต';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ตัดการวิ่ง';

  @override
  String trim_keep(String from, String to) {
    return 'เก็บ $from – $to';
  }

  @override
  String get trim_save => 'บันทึกการตัด';

  @override
  String get import_title => 'นำเข้า GPX';

  @override
  String get import_intro =>
      'นำประวัติของคุณมาจาก Strava, Garmin หรือแอปอื่น — เลือกไฟล์ GPX ทีละไฟล์หรือ ZIP ที่ส่งออกทั้งหมด เพซเซอร์จะเรียนรู้ฟอร์มของคุณทันที';

  @override
  String get import_pick => 'เลือกไฟล์';

  @override
  String get import_pickOther => 'เลือกไฟล์อื่น';

  @override
  String import_done(int count) {
    return 'นำเข้าแล้ว $count ครั้ง';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'นำเข้าแล้ว $count ครั้ง มี $skipped ครั้งอยู่ในประวัติแล้ว';
  }

  @override
  String import_toImport(int count) {
    return 'รอนำเข้า $count ครั้ง';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'รอนำเข้า $count ครั้ง (ข้าม $skipped)';
  }

  @override
  String get import_duplicate => 'มีอยู่ในประวัติแล้ว';

  @override
  String import_andMore(int count) {
    return '… และอีก $count ไฟล์';
  }

  @override
  String import_importN(int count) {
    return 'นำเข้า $count ครั้ง';
  }

  @override
  String import_paid(String price) {
    return 'การนำเข้าเป็นสิ่งเดียวที่ต้องจ่ายเงินใน Běhánek: จ่ายครั้งเดียว $price การส่งออกการวิ่งฟรีเสมอ';
  }

  @override
  String import_unlock(String price) {
    return 'ปลดล็อกการนำเข้า — $price';
  }

  @override
  String get import_restore => 'กู้คืนการซื้อ';

  @override
  String get import_storeUnavailable => 'ร้านค้าไม่พร้อมใช้งานในขณะนี้';

  @override
  String get import_purchaseFailed => 'การซื้อไม่สำเร็จ';

  @override
  String get import_errZip => 'เปิดไฟล์ ZIP ไม่ได้';

  @override
  String get import_errInvalid => 'ไฟล์ไม่ใช่ GPX ที่ถูกต้อง';

  @override
  String get import_errNoPoints => 'GPX ไม่มีจุดเส้นทาง';

  @override
  String get import_errNoTimes => 'GPX ไม่มีการประทับเวลา — คำนวณเพซไม่ได้';

  @override
  String get report_total => 'รวม';

  @override
  String get report_runs => 'ครั้ง';

  @override
  String get report_longest => 'ไกลที่สุด';

  @override
  String report_perWeek(String unit) {
    return '$unit ต่อสัปดาห์';
  }

  @override
  String get report_paceTrend => 'แนวโน้มเพซ';

  @override
  String get report_fewRuns => 'การวิ่งไม่พอสำหรับแนวโน้ม';

  @override
  String get notif_recording => 'กำลังบันทึกการวิ่งของคุณ';

  @override
  String get notif_channel => 'การบันทึกการวิ่ง';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count กิโลเมตร',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value กิโลเมตร';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ไมล์',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value ไมล์';
  }

  @override
  String cue_pace(String clock) {
    return 'เพซ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'เวลา $clock';
  }

  @override
  String get cue_onTarget => 'ตรงเป้า';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เร็วขึ้น $count วินาที',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ช้าลง $count วินาที',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return 'นำ $count เมตร';
  }

  @override
  String cue_behind(int count) {
    return 'ตามหลัง $count เมตร';
  }
}
