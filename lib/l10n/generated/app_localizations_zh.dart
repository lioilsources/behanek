// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get back => '返回';

  @override
  String get history_import => '导入';

  @override
  String get history_settings => '设置';

  @override
  String get history_empty => '还没有跑步记录。\n穿上跑鞋，点按“跑步”。';

  @override
  String get history_run => '跑步';

  @override
  String get history_report => '报告';

  @override
  String get history_paceSame => '配速相同';

  @override
  String history_paceFaster(int seconds) {
    return '快 $seconds 秒';
  }

  @override
  String history_paceSlower(int seconds) {
    return '慢 $seconds 秒';
  }

  @override
  String get settings_title => '设置';

  @override
  String get settings_units => '单位';

  @override
  String get settings_voiceLanguage => '语音语言';

  @override
  String get settings_cues => '播报';

  @override
  String get settings_cueVoice => '语音';

  @override
  String get settings_cueTones => '提示音';

  @override
  String get settings_cueBoth => '两者';

  @override
  String get settings_cueOff => '无';

  @override
  String get settings_tonesHelp => '提示音：两声短音 = 加速，一声长音 = 减速，安静 = 正好达标。';

  @override
  String get settings_cueInterval => '播报间隔';

  @override
  String get settings_pacerGoal => '根据你的状态设定目标';

  @override
  String get settings_pacerHold => '保持即可';

  @override
  String get settings_pacerImprove => '快 2 %';

  @override
  String get settings_autoPause => '停下时自动暂停';

  @override
  String get settings_metronome => '步频节拍器';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps 步/分钟';
  }

  @override
  String get settings_mapLayer => '地图';

  @override
  String get settings_backup => '备份所有跑步（GPX 的 ZIP 包）';

  @override
  String get settings_privacy => '任何数据都不会离开你的手机。Běhánek 没有账号、没有服务器、没有分析，也没有广告。';

  @override
  String get map_satellite => '卫星';

  @override
  String get map_topo => '户外';

  @override
  String get run_title => '跑步';

  @override
  String get run_locationOff => '手机的定位已关闭。没有定位就无法记录跑步。';

  @override
  String get run_locationNeeded =>
      'Běhánek 需要“使用 App 期间”的定位来记录你的路线。定位不会发送到任何地方，只保存在你的手机上。';

  @override
  String get run_allowLocation => '允许定位';

  @override
  String get run_gpsSearching => '正在搜索 GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS 极佳（±$meters 米）';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS 良好（±$meters 米）';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS 较弱（±$meters 米）— 请稍等';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return '幽灵：$date，$distance';
  }

  @override
  String get run_pacerFewRuns => '配速员：跑步次数还不够 — 只播报时间和距离';

  @override
  String run_pacerForm(int count) {
    return '配速员：来自 $count 次跑步的状态';
  }

  @override
  String run_pacerFormImprove(int count) {
    return '配速员：来自 $count 次跑步的状态，快 2 %';
  }

  @override
  String get run_form => '状态';

  @override
  String get run_ghost => '幽灵';

  @override
  String get run_start => '开始';

  @override
  String get run_noGhost => '你还没从这里跑过 — 幽灵需要一次起点在 300 米以内的跑步。';

  @override
  String get run_cancel => '取消';

  @override
  String run_aheadOfGhost(int meters) {
    return '领先幽灵 $meters 米';
  }

  @override
  String run_behindGhost(int meters) {
    return '落后幽灵 $meters 米';
  }

  @override
  String run_onTarget(String pace) {
    return '正好达标（$pace）';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '比 $pace 快 $seconds 秒';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '比 $pace 慢 $seconds 秒';
  }

  @override
  String get run_autoPaused => '自动暂停';

  @override
  String get run_paused => '已暂停';

  @override
  String get run_weakGps => 'GPS 信号弱';

  @override
  String get run_resume => '继续';

  @override
  String get run_pause => '暂停';

  @override
  String get run_numbers => '数据';

  @override
  String get run_map => '地图';

  @override
  String get run_waitingForLocation => '正在等待定位…';

  @override
  String get run_stopped => '跑步已停止';

  @override
  String get run_save => '保存';

  @override
  String get run_continue => '继续跑';

  @override
  String get run_discardTitle => '放弃这次跑步？';

  @override
  String get run_discard => '放弃';

  @override
  String get run_discardBody => '这次跑步不会被保存。';

  @override
  String get run_slideToStop => '滑动以停止';

  @override
  String get run_stop => '停止';

  @override
  String get stat_time => '时间';

  @override
  String get stat_pace => '配速';

  @override
  String get stat_average => '平均';

  @override
  String get stat_distance => '距离';

  @override
  String get stat_elevation => '爬升 米';

  @override
  String get detail_imported => '从 GPX 导入';

  @override
  String get detail_splits => '分段';

  @override
  String get detail_pace => '配速';

  @override
  String get detail_elevation => '海拔';

  @override
  String get detail_exportGpx => '导出 GPX';

  @override
  String get detail_trim => '裁剪开头 / 结尾';

  @override
  String get detail_deleteTitle => '删除这次跑步？';

  @override
  String get detail_delete => '删除';

  @override
  String get detail_deleteBody => '这次跑步及其路线将从手机中消失。此操作无法撤销。';

  @override
  String get detail_deleteRun => '删除跑步';

  @override
  String get detail_tooShort => '不足一个分段。';

  @override
  String get detail_startMarker => '起';

  @override
  String get detail_finishMarker => '终';

  @override
  String get trim_title => '裁剪跑步';

  @override
  String trim_keep(String from, String to) {
    return '保留 $from – $to';
  }

  @override
  String get trim_save => '保存裁剪';

  @override
  String get import_title => '导入 GPX';

  @override
  String get import_intro =>
      '从 Strava、Garmin 或其他 App 带来你的历史记录 — 选择单个 GPX 文件或完整的导出 ZIP。配速员会立即从中了解你的状态。';

  @override
  String get import_pick => '选择文件';

  @override
  String get import_pickOther => '选择其他文件';

  @override
  String import_done(int count) {
    return '已导入 $count 次跑步。';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '已导入 $count 次跑步，$skipped 次已在历史记录中。';
  }

  @override
  String import_toImport(int count) {
    return '待导入 $count 次跑步';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '待导入 $count 次跑步（已跳过 $skipped 次）';
  }

  @override
  String get import_duplicate => '已在历史记录中';

  @override
  String import_andMore(int count) {
    return '… 还有 $count 个文件';
  }

  @override
  String import_importN(int count) {
    return '导入 $count 次跑步';
  }

  @override
  String import_paid(String price) {
    return '导入是 Běhánek 唯一的付费功能：一次性 $price。导出跑步永远免费。';
  }

  @override
  String import_unlock(String price) {
    return '解锁导入 — $price';
  }

  @override
  String get import_restore => '恢复购买';

  @override
  String get import_storeUnavailable => '商店暂时不可用。';

  @override
  String get import_purchaseFailed => '购买未完成。';

  @override
  String get import_errZip => '无法打开 ZIP。';

  @override
  String get import_errInvalid => '该文件不是有效的 GPX。';

  @override
  String get import_errNoPoints => '该 GPX 没有轨迹点。';

  @override
  String get import_errNoTimes => '该 GPX 没有时间戳 — 无法计算配速。';

  @override
  String get report_total => '总计';

  @override
  String get report_runs => '次跑步';

  @override
  String get report_longest => '最长';

  @override
  String report_perWeek(String unit) {
    return '每周 $unit';
  }

  @override
  String get report_paceTrend => '配速趋势';

  @override
  String get report_fewRuns => '跑步次数不足以显示趋势。';

  @override
  String get notif_recording => '正在记录你的跑步';

  @override
  String get notif_channel => '跑步记录';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 公里',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value 公里';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 英里',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value 英里';
  }

  @override
  String cue_pace(String clock) {
    return '配速 $clock';
  }

  @override
  String cue_time(String clock) {
    return '时间 $clock';
  }

  @override
  String get cue_onTarget => '正好达标';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '快 $count 秒',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '慢 $count 秒',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '领先 $count 米';
  }

  @override
  String cue_behind(int count) {
    return '落后 $count 米';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get back => '返回';

  @override
  String get history_import => '匯入';

  @override
  String get history_settings => '設定';

  @override
  String get history_empty => '還沒有跑步紀錄。\n穿上跑鞋，點一下「跑步」。';

  @override
  String get history_run => '跑步';

  @override
  String get history_report => '報告';

  @override
  String get history_paceSame => '配速相同';

  @override
  String history_paceFaster(int seconds) {
    return '快 $seconds 秒';
  }

  @override
  String history_paceSlower(int seconds) {
    return '慢 $seconds 秒';
  }

  @override
  String get settings_title => '設定';

  @override
  String get settings_units => '單位';

  @override
  String get settings_voiceLanguage => '語音語言';

  @override
  String get settings_cues => '播報';

  @override
  String get settings_cueVoice => '語音';

  @override
  String get settings_cueTones => '提示音';

  @override
  String get settings_cueBoth => '兩者';

  @override
  String get settings_cueOff => '無';

  @override
  String get settings_tonesHelp => '提示音：兩聲短音 = 加速，一聲長音 = 減速，安靜 = 剛好達標。';

  @override
  String get settings_cueInterval => '播報間隔';

  @override
  String get settings_pacerGoal => '依你的狀態設定目標';

  @override
  String get settings_pacerHold => '保持就好';

  @override
  String get settings_pacerImprove => '快 2 %';

  @override
  String get settings_autoPause => '停下時自動暫停';

  @override
  String get settings_metronome => '步頻節拍器';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps 步/分鐘';
  }

  @override
  String get settings_mapLayer => '地圖';

  @override
  String get settings_backup => '備份所有跑步（GPX 的 ZIP 檔）';

  @override
  String get settings_privacy => '任何資料都不會離開你的手機。Běhánek 沒有帳號、沒有伺服器、沒有分析，也沒有廣告。';

  @override
  String get map_satellite => '衛星';

  @override
  String get map_topo => '戶外';

  @override
  String get run_title => '跑步';

  @override
  String get run_locationOff => '手機的定位已關閉。沒有定位就無法記錄跑步。';

  @override
  String get run_locationNeeded =>
      'Běhánek 需要「使用 App 期間」的定位來記錄你的路線。定位不會傳送到任何地方，只會留在你的手機上。';

  @override
  String get run_allowLocation => '允許定位';

  @override
  String get run_gpsSearching => '正在搜尋 GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS 極佳（±$meters 公尺）';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS 良好（±$meters 公尺）';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS 較弱（±$meters 公尺）— 請稍候';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return '幽靈：$date，$distance';
  }

  @override
  String get run_pacerFewRuns => '配速員：跑步次數還不夠 — 只播報時間與距離';

  @override
  String run_pacerForm(int count) {
    return '配速員：來自 $count 次跑步的狀態';
  }

  @override
  String run_pacerFormImprove(int count) {
    return '配速員：來自 $count 次跑步的狀態，快 2 %';
  }

  @override
  String get run_form => '狀態';

  @override
  String get run_ghost => '幽靈';

  @override
  String get run_start => '開始';

  @override
  String get run_noGhost => '你還沒從這裡跑過 — 幽靈需要一次起點在 300 公尺內的跑步。';

  @override
  String get run_cancel => '取消';

  @override
  String run_aheadOfGhost(int meters) {
    return '領先幽靈 $meters 公尺';
  }

  @override
  String run_behindGhost(int meters) {
    return '落後幽靈 $meters 公尺';
  }

  @override
  String run_onTarget(String pace) {
    return '剛好達標（$pace）';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '比 $pace 快 $seconds 秒';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '比 $pace 慢 $seconds 秒';
  }

  @override
  String get run_autoPaused => '自動暫停';

  @override
  String get run_paused => '已暫停';

  @override
  String get run_weakGps => 'GPS 訊號弱';

  @override
  String get run_resume => '繼續';

  @override
  String get run_pause => '暫停';

  @override
  String get run_numbers => '數據';

  @override
  String get run_map => '地圖';

  @override
  String get run_waitingForLocation => '正在等待定位…';

  @override
  String get run_stopped => '跑步已停止';

  @override
  String get run_save => '儲存';

  @override
  String get run_continue => '繼續跑';

  @override
  String get run_discardTitle => '放棄這次跑步？';

  @override
  String get run_discard => '放棄';

  @override
  String get run_discardBody => '這次跑步不會被儲存。';

  @override
  String get run_slideToStop => '滑動以停止';

  @override
  String get run_stop => '停止';

  @override
  String get stat_time => '時間';

  @override
  String get stat_pace => '配速';

  @override
  String get stat_average => '平均';

  @override
  String get stat_distance => '距離';

  @override
  String get stat_elevation => '爬升 公尺';

  @override
  String get detail_imported => '從 GPX 匯入';

  @override
  String get detail_splits => '分段';

  @override
  String get detail_pace => '配速';

  @override
  String get detail_elevation => '海拔';

  @override
  String get detail_exportGpx => '匯出 GPX';

  @override
  String get detail_trim => '裁剪開頭 / 結尾';

  @override
  String get detail_deleteTitle => '刪除這次跑步？';

  @override
  String get detail_delete => '刪除';

  @override
  String get detail_deleteBody => '這次跑步與路線將從手機中消失。此動作無法復原。';

  @override
  String get detail_deleteRun => '刪除跑步';

  @override
  String get detail_tooShort => '不足一個分段。';

  @override
  String get detail_startMarker => '起';

  @override
  String get detail_finishMarker => '終';

  @override
  String get trim_title => '裁剪跑步';

  @override
  String trim_keep(String from, String to) {
    return '保留 $from – $to';
  }

  @override
  String get trim_save => '儲存裁剪';

  @override
  String get import_title => '匯入 GPX';

  @override
  String get import_intro =>
      '從 Strava、Garmin 或其他 App 帶來你的歷史紀錄 — 選擇單一 GPX 檔或完整的匯出 ZIP。配速員會立刻從中了解你的狀態。';

  @override
  String get import_pick => '選擇檔案';

  @override
  String get import_pickOther => '選擇其他檔案';

  @override
  String import_done(int count) {
    return '已匯入 $count 次跑步。';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '已匯入 $count 次跑步，$skipped 次已在歷史紀錄中。';
  }

  @override
  String import_toImport(int count) {
    return '待匯入 $count 次跑步';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '待匯入 $count 次跑步（已略過 $skipped 次）';
  }

  @override
  String get import_duplicate => '已在歷史紀錄中';

  @override
  String import_andMore(int count) {
    return '… 還有 $count 個檔案';
  }

  @override
  String import_importN(int count) {
    return '匯入 $count 次跑步';
  }

  @override
  String import_paid(String price) {
    return '匯入是 Běhánek 唯一的付費功能：一次性 $price。匯出跑步永遠免費。';
  }

  @override
  String import_unlock(String price) {
    return '解鎖匯入 — $price';
  }

  @override
  String get import_restore => '回復購買';

  @override
  String get import_storeUnavailable => '商店目前無法使用。';

  @override
  String get import_purchaseFailed => '購買未完成。';

  @override
  String get import_errZip => '無法開啟 ZIP。';

  @override
  String get import_errInvalid => '此檔案不是有效的 GPX。';

  @override
  String get import_errNoPoints => '此 GPX 沒有軌跡點。';

  @override
  String get import_errNoTimes => '此 GPX 沒有時間戳記 — 無法計算配速。';

  @override
  String get report_total => '總計';

  @override
  String get report_runs => '次跑步';

  @override
  String get report_longest => '最長';

  @override
  String report_perWeek(String unit) {
    return '每週 $unit';
  }

  @override
  String get report_paceTrend => '配速趨勢';

  @override
  String get report_fewRuns => '跑步次數不足以顯示趨勢。';

  @override
  String get notif_recording => '正在記錄你的跑步';

  @override
  String get notif_channel => '跑步紀錄';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 公里',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value 公里';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 英里',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value 英里';
  }

  @override
  String cue_pace(String clock) {
    return '配速 $clock';
  }

  @override
  String cue_time(String clock) {
    return '時間 $clock';
  }

  @override
  String get cue_onTarget => '剛好達標';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '快 $count 秒',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '慢 $count 秒',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '領先 $count 公尺';
  }

  @override
  String cue_behind(int count) {
    return '落後 $count 公尺';
  }
}
