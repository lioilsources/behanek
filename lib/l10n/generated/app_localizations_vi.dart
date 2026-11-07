// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get back => 'Quay lại';

  @override
  String get history_import => 'Nhập';

  @override
  String get history_settings => 'Cài đặt';

  @override
  String get history_empty =>
      'Chưa có buổi chạy nào.\nXỏ giày vào và nhấn Chạy nhé.';

  @override
  String get history_run => 'Chạy';

  @override
  String get history_report => 'Báo cáo';

  @override
  String get history_paceSame => 'tốc độ như cũ';

  @override
  String history_paceFaster(int seconds) {
    return 'nhanh hơn $seconds giây';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'chậm hơn $seconds giây';
  }

  @override
  String get settings_title => 'Cài đặt';

  @override
  String get settings_units => 'Đơn vị';

  @override
  String get settings_voiceLanguage => 'Ngôn ngữ giọng nói';

  @override
  String get settings_cues => 'Thông báo';

  @override
  String get settings_cueVoice => 'Giọng';

  @override
  String get settings_cueTones => 'Âm';

  @override
  String get settings_cueBoth => 'Cả hai';

  @override
  String get settings_cueOff => 'Tắt';

  @override
  String get settings_tonesHelp =>
      'Âm báo: hai tiếng ngắn = tăng tốc, một tiếng dài = giảm tốc, im lặng = đúng mục tiêu.';

  @override
  String get settings_cueInterval => 'Tần suất thông báo';

  @override
  String get settings_pacerGoal => 'Mục tiêu theo phong độ';

  @override
  String get settings_pacerHold => 'Giữ nguyên';

  @override
  String get settings_pacerImprove => 'Nhanh 2%';

  @override
  String get settings_autoPause => 'Tự tạm dừng khi bạn dừng lại';

  @override
  String get settings_metronome => 'Metronome nhịp chân';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps bước/phút';
  }

  @override
  String get settings_mapLayer => 'Bản đồ';

  @override
  String get settings_backup => 'Sao lưu mọi buổi chạy (ZIP chứa GPX)';

  @override
  String get settings_privacy =>
      'Không dữ liệu nào rời khỏi điện thoại của bạn. Běhánek không có tài khoản, máy chủ, phân tích hay quảng cáo.';

  @override
  String get map_satellite => 'Vệ tinh';

  @override
  String get map_topo => 'Địa hình';

  @override
  String get run_title => 'Chạy';

  @override
  String get run_locationOff =>
      'Định vị trên điện thoại đang tắt. Không có định vị thì không ghi lại được buổi chạy.';

  @override
  String get run_locationNeeded =>
      'Běhánek cần quyền vị trí “khi dùng ứng dụng” để ghi lại lộ trình. Vị trí không bao giờ được gửi đi đâu, nó chỉ nằm trên điện thoại của bạn.';

  @override
  String get run_allowLocation => 'Cho phép vị trí';

  @override
  String get run_gpsSearching => 'Đang tìm GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS rất tốt (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS tốt (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS yếu (±$meters m) — chờ một chút nhé';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Bóng ma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: chưa đủ buổi chạy — chỉ báo thời gian và quãng đường';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: phong độ của bạn từ $count buổi chạy';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: phong độ của bạn từ $count buổi chạy, nhanh hơn 2%';
  }

  @override
  String get run_form => 'Phong độ';

  @override
  String get run_ghost => 'Bóng ma';

  @override
  String get run_start => 'BẮT ĐẦU';

  @override
  String get run_noGhost =>
      'Bạn chưa từng chạy từ đây — bóng ma cần một buổi chạy xuất phát trong vòng 300 m.';

  @override
  String get run_cancel => 'Hủy';

  @override
  String run_aheadOfGhost(int meters) {
    return 'Trước bóng ma $meters m';
  }

  @override
  String run_behindGhost(int meters) {
    return 'Sau bóng ma $meters m';
  }

  @override
  String run_onTarget(String pace) {
    return 'đúng mục tiêu ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'nhanh hơn $pace $seconds giây';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'chậm hơn $pace $seconds giây';
  }

  @override
  String get run_autoPaused => 'TỰ TẠM DỪNG';

  @override
  String get run_paused => 'TẠM DỪNG';

  @override
  String get run_weakGps => 'Tín hiệu GPS yếu';

  @override
  String get run_resume => 'Tiếp tục';

  @override
  String get run_pause => 'Tạm dừng';

  @override
  String get run_numbers => 'Số liệu';

  @override
  String get run_map => 'Bản đồ';

  @override
  String get run_waitingForLocation => 'Đang chờ vị trí…';

  @override
  String get run_stopped => 'Đã dừng chạy';

  @override
  String get run_save => 'Lưu';

  @override
  String get run_continue => 'Chạy tiếp';

  @override
  String get run_discardTitle => 'Bỏ buổi chạy?';

  @override
  String get run_discard => 'Bỏ';

  @override
  String get run_discardBody => 'Buổi chạy sẽ không được lưu.';

  @override
  String get run_slideToStop => 'Trượt để dừng';

  @override
  String get run_stop => 'DỪNG';

  @override
  String get stat_time => 'thời gian';

  @override
  String get stat_pace => 'tốc độ';

  @override
  String get stat_average => 'trung bình';

  @override
  String get stat_distance => 'quãng đường';

  @override
  String get stat_elevation => 'độ cao leo m';

  @override
  String get detail_imported => 'Nhập từ GPX';

  @override
  String get detail_splits => 'Chặng';

  @override
  String get detail_pace => 'Tốc độ';

  @override
  String get detail_elevation => 'Độ cao';

  @override
  String get detail_exportGpx => 'Xuất GPX';

  @override
  String get detail_trim => 'Cắt đầu / cuối';

  @override
  String get detail_deleteTitle => 'Xóa buổi chạy?';

  @override
  String get detail_delete => 'Xóa';

  @override
  String get detail_deleteBody =>
      'Buổi chạy và lộ trình sẽ biến mất khỏi điện thoại. Không thể hoàn tác.';

  @override
  String get detail_deleteRun => 'Xóa buổi chạy';

  @override
  String get detail_tooShort => 'Ngắn hơn một chặng.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Cắt buổi chạy';

  @override
  String trim_keep(String from, String to) {
    return 'Giữ $from – $to';
  }

  @override
  String get trim_save => 'Lưu bản cắt';

  @override
  String get import_title => 'Nhập GPX';

  @override
  String get import_intro =>
      'Mang lịch sử từ Strava, Garmin hay ứng dụng khác sang — chọn từng file GPX hoặc cả file ZIP xuất dữ liệu. Pacer sẽ học phong độ của bạn ngay từ đó.';

  @override
  String get import_pick => 'Chọn file';

  @override
  String get import_pickOther => 'Chọn file khác';

  @override
  String import_done(int count) {
    return 'Đã nhập $count buổi chạy.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Đã nhập $count buổi chạy, $skipped buổi đã có sẵn trong lịch sử.';
  }

  @override
  String import_toImport(int count) {
    return '$count buổi chạy sẽ được nhập';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count buổi chạy sẽ được nhập (bỏ qua $skipped)';
  }

  @override
  String get import_duplicate => 'Đã có trong lịch sử';

  @override
  String import_andMore(int count) {
    return '… và $count file khác';
  }

  @override
  String import_importN(int count) {
    return 'Nhập $count buổi chạy';
  }

  @override
  String import_paid(String price) {
    return 'Nhập dữ liệu là thứ duy nhất phải trả tiền trong Běhánek: trả một lần $price. Xuất các buổi chạy luôn miễn phí.';
  }

  @override
  String import_unlock(String price) {
    return 'Mở khóa nhập — $price';
  }

  @override
  String get import_restore => 'Khôi phục giao dịch';

  @override
  String get import_storeUnavailable => 'Cửa hàng hiện không khả dụng.';

  @override
  String get import_purchaseFailed => 'Mua không thành công.';

  @override
  String get import_errZip => 'Không mở được file ZIP.';

  @override
  String get import_errInvalid => 'File không phải GPX hợp lệ.';

  @override
  String get import_errNoPoints => 'GPX không có điểm lộ trình nào.';

  @override
  String get import_errNoTimes =>
      'GPX không có mốc thời gian — không thể tính tốc độ.';

  @override
  String get report_total => 'tổng';

  @override
  String get report_runs => 'buổi chạy';

  @override
  String get report_longest => 'dài nhất';

  @override
  String report_perWeek(String unit) {
    return '$unit mỗi tuần';
  }

  @override
  String get report_paceTrend => 'Xu hướng tốc độ';

  @override
  String get report_fewRuns => 'Chưa đủ buổi chạy để xem xu hướng.';

  @override
  String get notif_recording => 'Đang ghi buổi chạy';

  @override
  String get notif_channel => 'Ghi buổi chạy';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ki-lô-mét',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value ki-lô-mét';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dặm',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value dặm';
  }

  @override
  String cue_pace(String clock) {
    return 'tốc độ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'thời gian $clock';
  }

  @override
  String get cue_onTarget => 'đúng mục tiêu';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nhanh hơn $count giây',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'chậm hơn $count giây',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return 'dẫn trước $count mét';
  }

  @override
  String cue_behind(int count) {
    return 'tụt sau $count mét';
  }
}
