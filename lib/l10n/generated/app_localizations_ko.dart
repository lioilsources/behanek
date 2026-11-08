// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get back => '뒤로';

  @override
  String get history_import => '가져오기';

  @override
  String get history_settings => '설정';

  @override
  String get history_empty => '아직 달리기 기록이 없어요.\n운동화를 신고 달리기를 눌러 보세요.';

  @override
  String get history_run => '달리기';

  @override
  String get history_report => '리포트';

  @override
  String get history_paceSame => '페이스 같음';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds초 빠름';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds초 느림';
  }

  @override
  String get settings_title => '설정';

  @override
  String get settings_units => '단위';

  @override
  String get settings_voiceLanguage => '음성 언어';

  @override
  String get settings_cues => '안내';

  @override
  String get settings_cueVoice => '음성';

  @override
  String get settings_cueTones => '신호음';

  @override
  String get settings_cueBoth => '둘 다';

  @override
  String get settings_cueOff => '끄기';

  @override
  String get settings_tonesHelp =>
      '신호음: 짧게 두 번 = 빠르게, 길게 한 번 = 천천히, 무음 = 목표대로.';

  @override
  String get settings_cueInterval => '안내 간격';

  @override
  String get settings_pacerGoal => '내 폼 기준 목표';

  @override
  String get settings_pacerHold => '유지';

  @override
  String get settings_pacerImprove => '2% 빠르게';

  @override
  String get settings_autoPause => '멈추면 자동 일시정지';

  @override
  String get settings_metronome => '케이던스 메트로놈';

  @override
  String settings_stepsPerMin(int steps) {
    return '분당 $steps보';
  }

  @override
  String get settings_mapLayer => '지도';

  @override
  String get settings_backup => '모든 달리기 백업 (GPX ZIP)';

  @override
  String get settings_privacy =>
      '데이터는 절대 휴대폰 밖으로 나가지 않아요. Běhánek에는 계정, 서버, 분석, 광고가 없어요.';

  @override
  String get map_satellite => '위성';

  @override
  String get map_topo => '지형';

  @override
  String get run_title => '달리기';

  @override
  String get run_locationOff => '휴대폰 위치가 꺼져 있어요. 위치 없이는 달리기를 기록할 수 없어요.';

  @override
  String get run_locationNeeded =>
      '경로를 기록하려면 Běhánek에 ‘앱을 사용하는 동안’ 위치 권한이 필요해요. 위치는 어디에도 보내지 않고 휴대폰에만 남아요.';

  @override
  String get run_allowLocation => '위치 허용';

  @override
  String get run_gpsSearching => 'GPS 찾는 중…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS 매우 좋음 (±${meters}m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS 좋음 (±${meters}m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS 약함 (±${meters}m) — 잠시 기다려 주세요';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return '고스트: $date, $distance';
  }

  @override
  String get run_pacerFewRuns => '페이서: 아직 기록이 적어서 시간과 거리만 알려 드려요';

  @override
  String run_pacerForm(int count) {
    return '페이서: 최근 $count번 달리기로 본 내 폼';
  }

  @override
  String run_pacerFormImprove(int count) {
    return '페이서: 최근 $count번 달리기로 본 내 폼, 2% 빠르게';
  }

  @override
  String get run_form => '폼';

  @override
  String get run_ghost => '고스트';

  @override
  String get run_start => '시작';

  @override
  String get run_noGhost => '여기서는 아직 달린 적이 없어요 — 고스트는 300m 이내에서 시작한 달리기가 필요해요.';

  @override
  String get run_cancel => '취소';

  @override
  String run_aheadOfGhost(int meters) {
    return '고스트보다 ${meters}m 앞';
  }

  @override
  String run_behindGhost(int meters) {
    return '고스트보다 ${meters}m 뒤';
  }

  @override
  String run_onTarget(String pace) {
    return '목표대로 ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace보다 $seconds초 빠름';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace보다 $seconds초 느림';
  }

  @override
  String get run_autoPaused => '자동 일시정지';

  @override
  String get run_paused => '일시정지됨';

  @override
  String get run_weakGps => 'GPS 신호 약함';

  @override
  String get run_resume => '계속';

  @override
  String get run_pause => '일시정지';

  @override
  String get run_numbers => '숫자';

  @override
  String get run_map => '지도';

  @override
  String get run_waitingForLocation => '위치를 기다리는 중…';

  @override
  String get run_stopped => '달리기 멈춤';

  @override
  String get run_save => '저장';

  @override
  String get run_continue => '계속 달리기';

  @override
  String get run_discardTitle => '달리기를 버릴까요?';

  @override
  String get run_discard => '버리기';

  @override
  String get run_discardBody => '이 달리기는 저장되지 않아요.';

  @override
  String get run_slideToStop => '밀어서 정지';

  @override
  String get run_stop => '정지';

  @override
  String get stat_time => '시간';

  @override
  String get stat_pace => '페이스';

  @override
  String get stat_average => '평균';

  @override
  String get stat_distance => '거리';

  @override
  String get stat_elevation => '상승 고도 m';

  @override
  String get detail_imported => 'GPX에서 가져옴';

  @override
  String get detail_splits => '구간';

  @override
  String get detail_pace => '페이스';

  @override
  String get detail_elevation => '고도';

  @override
  String get detail_exportGpx => 'GPX 내보내기';

  @override
  String get detail_trim => '시작/끝 자르기';

  @override
  String get detail_deleteTitle => '달리기를 삭제할까요?';

  @override
  String get detail_delete => '삭제';

  @override
  String get detail_deleteBody => '달리기와 경로가 휴대폰에서 사라져요. 되돌릴 수 없어요.';

  @override
  String get detail_deleteRun => '달리기 삭제';

  @override
  String get detail_tooShort => '한 구간보다 짧아요.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => '달리기 자르기';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to 남기기';
  }

  @override
  String get trim_save => '자르기 저장';

  @override
  String get import_title => 'GPX 가져오기';

  @override
  String get import_intro =>
      'Strava, Garmin 등 다른 앱의 기록을 가져오세요 — GPX 파일을 하나씩 고르거나 내보내기 ZIP을 통째로 고르면 돼요. 페이서가 바로 내 폼을 익혀요.';

  @override
  String get import_pick => '파일 선택';

  @override
  String get import_pickOther => '다른 파일 선택';

  @override
  String import_done(int count) {
    return '달리기 $count개를 가져왔어요.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '달리기 $count개를 가져왔어요. $skipped개는 이미 기록에 있었어요.';
  }

  @override
  String import_toImport(int count) {
    return '가져올 달리기 $count개';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '가져올 달리기 $count개 ($skipped개 건너뜀)';
  }

  @override
  String get import_duplicate => '이미 기록에 있음';

  @override
  String import_andMore(int count) {
    return '… 외 파일 $count개';
  }

  @override
  String import_importN(int count) {
    return '달리기 $count개 가져오기';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek에서 유료인 건 가져오기뿐이에요. 한 번만 결제하면 돼요: $price. 달리기 내보내기는 언제나 무료예요.';
  }

  @override
  String import_unlock(String price) {
    return '가져오기 잠금 해제 — $price';
  }

  @override
  String get import_restore => '구매 복원';

  @override
  String get import_storeUnavailable => '지금은 스토어를 사용할 수 없어요.';

  @override
  String get import_purchaseFailed => '구매가 완료되지 않았어요.';

  @override
  String get import_errZip => 'ZIP을 열 수 없어요.';

  @override
  String get import_errInvalid => '올바른 GPX 파일이 아니에요.';

  @override
  String get import_errNoPoints => 'GPX에 트랙 포인트가 없어요.';

  @override
  String get import_errNoTimes => 'GPX에 시간 정보가 없어서 페이스를 계산할 수 없어요.';

  @override
  String get report_total => '합계';

  @override
  String get report_runs => '달리기';

  @override
  String get report_longest => '최장';

  @override
  String report_perWeek(String unit) {
    return '주간 $unit';
  }

  @override
  String get report_paceTrend => '페이스 추이';

  @override
  String get report_fewRuns => '추이를 보기엔 달리기가 부족해요.';

  @override
  String get notif_recording => '달리기 기록 중';

  @override
  String get notif_channel => '달리기 기록';

  @override
  String get notif_liveChannel => '실시간 달리기 상태';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count킬로미터',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value킬로미터';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count마일',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value마일';
  }

  @override
  String cue_pace(String clock) {
    return '페이스 $clock';
  }

  @override
  String cue_time(String clock) {
    return '시간 $clock';
  }

  @override
  String get cue_onTarget => '목표대로';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count초 빨라요',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count초 느려요',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count미터 앞서요';
  }

  @override
  String cue_behind(int count) {
    return '$count미터 뒤처져요';
  }
}
