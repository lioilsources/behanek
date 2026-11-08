// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get back => '戻る';

  @override
  String get history_import => 'インポート';

  @override
  String get history_settings => '設定';

  @override
  String get history_empty => 'まだランがありません。\nシューズを履いて「走る」をタップしましょう。';

  @override
  String get history_run => '走る';

  @override
  String get history_report => 'レポート';

  @override
  String get history_paceSame => 'ペース変わらず';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds秒速い';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds秒遅い';
  }

  @override
  String get settings_title => '設定';

  @override
  String get settings_units => '単位';

  @override
  String get settings_voiceLanguage => '音声の言語';

  @override
  String get settings_cues => '読み上げ';

  @override
  String get settings_cueVoice => '音声';

  @override
  String get settings_cueTones => '音';

  @override
  String get settings_cueBoth => '両方';

  @override
  String get settings_cueOff => 'なし';

  @override
  String get settings_tonesHelp => '音：短く2回＝ペースを上げる、長く1回＝ペースを落とす、無音＝予定どおり。';

  @override
  String get settings_cueInterval => '読み上げの間隔';

  @override
  String get settings_pacerGoal => 'フォームからの目標';

  @override
  String get settings_pacerHold => 'キープ';

  @override
  String get settings_pacerImprove => '2%速く';

  @override
  String get settings_autoPause => '止まったら自動で一時停止';

  @override
  String get settings_metronome => 'ピッチのメトロノーム';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps歩/分';
  }

  @override
  String get settings_mapLayer => '地図';

  @override
  String get settings_backup => '全ランをバックアップ（GPXのZIP）';

  @override
  String get settings_privacy =>
      'データがスマホの外に出ることはありません。Běhánekにはアカウントもサーバーも分析も広告もありません。';

  @override
  String get map_satellite => '衛星';

  @override
  String get map_topo => '地形';

  @override
  String get run_title => 'ラン';

  @override
  String get run_locationOff => 'スマホの位置情報がオフになっています。オフのままではランを記録できません。';

  @override
  String get run_locationNeeded =>
      'ルートを記録するため、Běhánekには「アプリの使用中」の位置情報が必要です。位置情報はどこにも送信されず、スマホの中だけに残ります。';

  @override
  String get run_allowLocation => '位置情報を許可';

  @override
  String get run_gpsSearching => 'GPSを探しています…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS 非常に良好（±$meters m）';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS 良好（±$meters m）';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS 弱い（±$meters m）— 少し待ってください';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ゴースト：$date、$distance';
  }

  @override
  String get run_pacerFewRuns => 'ペーサー：まだランが少ないので、時間と距離だけ読み上げます';

  @override
  String run_pacerForm(int count) {
    return 'ペーサー：$count回のランから見たフォーム';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'ペーサー：$count回のランから見たフォーム、2%速く';
  }

  @override
  String get run_form => 'フォーム';

  @override
  String get run_ghost => 'ゴースト';

  @override
  String get run_start => 'スタート';

  @override
  String get run_noGhost => 'ここからはまだ走っていません — ゴーストには300 m以内からスタートしたランが必要です。';

  @override
  String get run_cancel => 'キャンセル';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ゴーストより$meters m先';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ゴーストより$meters m後ろ';
  }

  @override
  String run_onTarget(String pace) {
    return '予定どおり（$pace）';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$paceより$seconds秒速い';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$paceより$seconds秒遅い';
  }

  @override
  String get run_autoPaused => '自動一時停止';

  @override
  String get run_paused => '一時停止中';

  @override
  String get run_weakGps => 'GPS信号が弱い';

  @override
  String get run_resume => '再開';

  @override
  String get run_pause => '一時停止';

  @override
  String get run_numbers => '数値';

  @override
  String get run_map => '地図';

  @override
  String get run_waitingForLocation => '位置情報を待っています…';

  @override
  String get run_stopped => 'ランを停止しました';

  @override
  String get run_save => '保存';

  @override
  String get run_continue => '走り続ける';

  @override
  String get run_discardTitle => 'ランを破棄しますか？';

  @override
  String get run_discard => '破棄';

  @override
  String get run_discardBody => 'このランは保存されません。';

  @override
  String get run_slideToStop => 'スライドで停止';

  @override
  String get run_stop => 'ストップ';

  @override
  String get stat_time => 'タイム';

  @override
  String get stat_pace => 'ペース';

  @override
  String get stat_average => '平均';

  @override
  String get stat_distance => '距離';

  @override
  String get stat_elevation => '獲得標高 m';

  @override
  String get detail_imported => 'GPXからインポート';

  @override
  String get detail_splits => 'スプリット';

  @override
  String get detail_pace => 'ペース';

  @override
  String get detail_elevation => '標高';

  @override
  String get detail_exportGpx => 'GPXをエクスポート';

  @override
  String get detail_trim => '開始・終了をトリミング';

  @override
  String get detail_deleteTitle => 'ランを削除しますか？';

  @override
  String get detail_delete => '削除';

  @override
  String get detail_deleteBody => 'ランとそのルートがスマホから消えます。元に戻せません。';

  @override
  String get detail_deleteRun => 'ランを削除';

  @override
  String get detail_tooShort => '1スプリットより短いです。';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'G';

  @override
  String get trim_title => 'ランをトリミング';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to を残す';
  }

  @override
  String get trim_save => 'トリミングを保存';

  @override
  String get import_title => 'GPXインポート';

  @override
  String get import_intro =>
      'Strava、Garminなど他のアプリから履歴を移せます — GPXファイルを個別に、またはエクスポートのZIPをまるごと選んでください。ペーサーはすぐにそこからあなたのフォームを学びます。';

  @override
  String get import_pick => 'ファイルを選択';

  @override
  String get import_pickOther => '別のファイルを選択';

  @override
  String import_done(int count) {
    return '$count件のランをインポートしました。';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count件のランをインポートしました。$skipped件はすでに履歴にありました。';
  }

  @override
  String import_toImport(int count) {
    return 'インポートするラン：$count件';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'インポートするラン：$count件（$skipped件スキップ）';
  }

  @override
  String get import_duplicate => 'すでに履歴にあります';

  @override
  String import_andMore(int count) {
    return '…ほか$countファイル';
  }

  @override
  String import_importN(int count) {
    return '$count件をインポート';
  }

  @override
  String import_paid(String price) {
    return 'Běhánekで有料なのはインポートだけです：買い切りで$price。ランのエクスポートはいつでも無料です。';
  }

  @override
  String import_unlock(String price) {
    return 'インポートを解除 — $price';
  }

  @override
  String get import_restore => '購入を復元';

  @override
  String get import_storeUnavailable => '現在ストアを利用できません。';

  @override
  String get import_purchaseFailed => '購入できませんでした。';

  @override
  String get import_errZip => 'ZIPを開けません。';

  @override
  String get import_errInvalid => '有効なGPXファイルではありません。';

  @override
  String get import_errNoPoints => 'GPXにトラックポイントがありません。';

  @override
  String get import_errNoTimes => 'GPXに時刻データがないため、ペースを計算できません。';

  @override
  String get report_total => '合計';

  @override
  String get report_runs => 'ラン';

  @override
  String get report_longest => '最長';

  @override
  String report_perWeek(String unit) {
    return '週あたりの$unit';
  }

  @override
  String get report_paceTrend => 'ペースの推移';

  @override
  String get report_fewRuns => '推移を出すにはランが足りません。';

  @override
  String get notif_recording => 'ランを記録中';

  @override
  String get notif_channel => 'ランの記録';

  @override
  String get notif_liveChannel => 'ランのライブ表示';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countキロ',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$valueキロ';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countマイル',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$valueマイル';
  }

  @override
  String cue_pace(String clock) {
    return 'ペース $clock';
  }

  @override
  String cue_time(String clock) {
    return 'タイム $clock';
  }

  @override
  String get cue_onTarget => '予定どおり';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count秒速い',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count秒遅い',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$countメートル先行';
  }

  @override
  String cue_behind(int count) {
    return '$countメートル遅れ';
  }
}
