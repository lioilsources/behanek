// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get back => 'ପଛକୁ';

  @override
  String get history_import => 'ଇମ୍ପୋର୍ଟ';

  @override
  String get history_settings => 'ସେଟିଂସ';

  @override
  String get history_empty =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଦୌଡ଼ ନାହିଁ।\nଜୋତା ପିନ୍ଧି ‘ଦୌଡ଼ନ୍ତୁ’ ଟାପ କରନ୍ତୁ।';

  @override
  String get history_run => 'ଦୌଡ଼ନ୍ତୁ';

  @override
  String get history_report => 'ରିପୋର୍ଟ';

  @override
  String get history_paceSame => 'ସେହି ପେସ';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds ସେ. ଦ୍ରୁତ';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds ସେ. ଧୀର';
  }

  @override
  String get settings_title => 'ସେଟିଂସ';

  @override
  String get settings_units => 'ଏକକ';

  @override
  String get settings_voiceLanguage => 'ସ୍ୱରର ଭାଷା';

  @override
  String get settings_cues => 'ଘୋଷଣା';

  @override
  String get settings_cueVoice => 'ସ୍ୱର';

  @override
  String get settings_cueTones => 'ଟୋନ';

  @override
  String get settings_cueBoth => 'ଦୁଇଟି';

  @override
  String get settings_cueOff => 'କିଛି ନାହିଁ';

  @override
  String get settings_tonesHelp =>
      'ଟୋନ: ଦୁଇଟି ଛୋଟ = ଗତି ବଢ଼ାନ୍ତୁ, ଗୋଟିଏ ଲମ୍ବା = ଗତି କମାନ୍ତୁ, ନୀରବତା = ଲକ୍ଷ୍ୟରେ।';

  @override
  String get settings_cueInterval => 'ଘୋଷଣାର ବ୍ୟବଧାନ';

  @override
  String get settings_pacerGoal => 'ଆପଣଙ୍କ ଫର୍ମରୁ ଲକ୍ଷ୍ୟ';

  @override
  String get settings_pacerHold => 'କେବଳ ବଜାୟ ରଖନ୍ତୁ';

  @override
  String get settings_pacerImprove => '2 % ଦ୍ରୁତ';

  @override
  String get settings_autoPause => 'ଅଟକିଲେ ସ୍ୱୟଂଚାଳିତ ବିରାମ';

  @override
  String get settings_metronome => 'କେଡେନ୍ସ ମେଟ୍ରୋନୋମ';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps ପାଦ/ମିନିଟ';
  }

  @override
  String get settings_mapLayer => 'ମାନଚିତ୍ର';

  @override
  String get settings_backup => 'ସମସ୍ତ ଦୌଡ଼ର ବ୍ୟାକଅପ (GPX ର ZIP)';

  @override
  String get settings_privacy =>
      'କୌଣସି ଡାଟା କେବେ ଆପଣଙ୍କ ଫୋନ ଛାଡ଼େ ନାହିଁ। Běhánek ରେ ଆକାଉଣ୍ଟ, ସର୍ଭର, ଆନାଲିଟିକ୍ସ କିମ୍ବା ବିଜ୍ଞାପନ ନାହିଁ।';

  @override
  String get map_satellite => 'ଉପଗ୍ରହ';

  @override
  String get map_topo => 'ଆଉଟଡୋର';

  @override
  String get run_title => 'ଦୌଡ଼';

  @override
  String get run_locationOff =>
      'ଆପଣଙ୍କ ଫୋନରେ ଲୋକେସନ ବନ୍ଦ ଅଛି। ଏହା ବିନା ଦୌଡ଼ ରେକର୍ଡ ହୋଇପାରିବ ନାହିଁ।';

  @override
  String get run_locationNeeded =>
      'ଆପଣଙ୍କ ରୁଟ ରେକର୍ଡ କରିବାକୁ Běhánek କୁ “ଆପ ବ୍ୟବହାର ସମୟରେ” ଲୋକେସନ ଦରକାର। ଏହା କେଉଁଠିକି ପଠାଯାଏ ନାହିଁ; ଆପଣଙ୍କ ଫୋନରେ ହିଁ ରହେ।';

  @override
  String get run_allowLocation => 'ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get run_gpsSearching => 'GPS ଖୋଜୁଛି…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ଉତ୍କୃଷ୍ଟ (±$meters ମି.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS ଭଲ (±$meters ମି.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS ଦୁର୍ବଳ (±$meters ମି.) — ଟିକେ ଅପେକ୍ଷା କରନ୍ତୁ';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ଘୋଷ୍ଟ: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'ପେସର: ଏପର୍ଯ୍ୟନ୍ତ ଯଥେଷ୍ଟ ଦୌଡ଼ ନାହିଁ — କେବଳ ସମୟ ଓ ଦୂରତା କହିବି';

  @override
  String run_pacerForm(int count) {
    return 'ପେସର: $countଟି ଦୌଡ଼ରୁ ଆପଣଙ୍କ ଫର୍ମ';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'ପେସର: $countଟି ଦୌଡ଼ରୁ ଆପଣଙ୍କ ଫର୍ମ, 2 % ଦ୍ରୁତ';
  }

  @override
  String get run_form => 'ଫର୍ମ';

  @override
  String get run_ghost => 'ଘୋଷ୍ଟ';

  @override
  String get run_start => 'ଆରମ୍ଭ';

  @override
  String get run_noGhost =>
      'ଆପଣ ଏଠାରୁ ଏପର୍ଯ୍ୟନ୍ତ ଦୌଡ଼ିନାହାନ୍ତି — ଘୋଷ୍ଟ ପାଇଁ 300 ମି. ଭିତରେ ଆରମ୍ଭ ହୋଇଥିବା ଦୌଡ଼ ଦରକାର।';

  @override
  String get run_cancel => 'ବାତିଲ';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ଘୋଷ୍ଟଠାରୁ $meters ମି. ଆଗରେ';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ଘୋଷ୍ଟଠାରୁ $meters ମି. ପଛରେ';
  }

  @override
  String run_onTarget(String pace) {
    return 'ଲକ୍ଷ୍ୟରେ ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace ଠାରୁ $seconds ସେ. ଦ୍ରୁତ';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace ଠାରୁ $seconds ସେ. ଧୀର';
  }

  @override
  String get run_autoPaused => 'ସ୍ୱୟଂଚାଳିତ ବିରାମ';

  @override
  String get run_paused => 'ବିରାମ';

  @override
  String get run_weakGps => 'ଦୁର୍ବଳ GPS ସିଗନାଲ';

  @override
  String get run_resume => 'ଜାରି ରଖନ୍ତୁ';

  @override
  String get run_pause => 'ବିରାମ';

  @override
  String get run_numbers => 'ସଂଖ୍ୟା';

  @override
  String get run_map => 'ମାନଚିତ୍ର';

  @override
  String get run_waitingForLocation => 'ଲୋକେସନ ପାଇଁ ଅପେକ୍ଷା…';

  @override
  String get run_stopped => 'ଦୌଡ଼ ଅଟକିଲା';

  @override
  String get run_save => 'ସେଭ କରନ୍ତୁ';

  @override
  String get run_continue => 'ଦୌଡ଼ୁଥାନ୍ତୁ';

  @override
  String get run_discardTitle => 'ଦୌଡ଼ ବାଦ ଦେବେ?';

  @override
  String get run_discard => 'ବାଦ ଦିଅନ୍ତୁ';

  @override
  String get run_discardBody => 'ଦୌଡ଼ ସେଭ ହେବ ନାହିଁ।';

  @override
  String get run_slideToStop => 'ଅଟକାଇବାକୁ ସ୍ଲାଇଡ କରନ୍ତୁ';

  @override
  String get run_stop => 'ଅଟକନ୍ତୁ';

  @override
  String get stat_time => 'ସମୟ';

  @override
  String get stat_pace => 'ପେସ';

  @override
  String get stat_average => 'ହାରାହାରି';

  @override
  String get stat_distance => 'ଦୂରତା';

  @override
  String get stat_elevation => 'ଉଚ୍ଚତା ବୃଦ୍ଧି ମି.';

  @override
  String get detail_imported => 'GPX ରୁ ଇମ୍ପୋର୍ଟ';

  @override
  String get detail_splits => 'ସ୍ପ୍ଲିଟ';

  @override
  String get detail_pace => 'ପେସ';

  @override
  String get detail_elevation => 'ଉଚ୍ଚତା';

  @override
  String get detail_exportGpx => 'GPX ଏକ୍ସପୋର୍ଟ';

  @override
  String get detail_trim => 'ଆରମ୍ଭ / ଶେଷ କାଟନ୍ତୁ';

  @override
  String get detail_deleteTitle => 'ଦୌଡ଼ ଡିଲିଟ କରିବେ?';

  @override
  String get detail_delete => 'ଡିଲିଟ';

  @override
  String get detail_deleteBody =>
      'ଦୌଡ଼ ଓ ଏହାର ରୁଟ ଆପଣଙ୍କ ଫୋନରୁ ହଟିଯିବ। ଏହାକୁ ଫେରାଇ ହେବ ନାହିଁ।';

  @override
  String get detail_deleteRun => 'ଦୌଡ଼ ଡିଲିଟ କରନ୍ତୁ';

  @override
  String get detail_tooShort => 'ଗୋଟିଏ ସ୍ପ୍ଲିଟଠାରୁ ଛୋଟ।';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'ଦୌଡ଼ କାଟନ୍ତୁ';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to ରଖନ୍ତୁ';
  }

  @override
  String get trim_save => 'କଟା ସେଭ କରନ୍ତୁ';

  @override
  String get import_title => 'GPX ଇମ୍ପୋର୍ଟ';

  @override
  String get import_intro =>
      'Strava, Garmin କିମ୍ବା ଅନ୍ୟ ଆପରୁ ଆପଣଙ୍କ ଇତିହାସ ଆଣନ୍ତୁ — ଅଲଗା GPX ଫାଇଲ କିମ୍ବା ସମ୍ପୂର୍ଣ୍ଣ ଏକ୍ସପୋର୍ଟ ZIP ବାଛନ୍ତୁ। ପେସର ତୁରନ୍ତ ଆପଣଙ୍କ ଫର୍ମ ଶିଖିଯାଏ।';

  @override
  String get import_pick => 'ଫାଇଲ ବାଛନ୍ତୁ';

  @override
  String get import_pickOther => 'ଅନ୍ୟ ଫାଇଲ ବାଛନ୍ତୁ';

  @override
  String import_done(int count) {
    return '$countଟି ଦୌଡ଼ ଇମ୍ପୋର୍ଟ ହେଲା।';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$countଟି ଦୌଡ଼ ଇମ୍ପୋର୍ଟ ହେଲା, $skippedଟି ପୂର୍ବରୁ ଇତିହାସରେ ଥିଲା।';
  }

  @override
  String import_toImport(int count) {
    return 'ଇମ୍ପୋର୍ଟ ପାଇଁ $countଟି ଦୌଡ଼';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ଇମ୍ପୋର୍ଟ ପାଇଁ $countଟି ଦୌଡ଼ ($skippedଟି ଛାଡ଼ିଦିଆଗଲା)';
  }

  @override
  String get import_duplicate => 'ପୂର୍ବରୁ ଇତିହାସରେ ଅଛି';

  @override
  String import_andMore(int count) {
    return '… ଆଉ $countଟି ଫାଇଲ';
  }

  @override
  String import_importN(int count) {
    return '$countଟି ଦୌଡ଼ ଇମ୍ପୋର୍ଟ କରନ୍ତୁ';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek ରେ କେବଳ ଇମ୍ପୋର୍ଟ ପାଇଁ ଦେୟ ଲାଗେ: ଥରେ $price। ଦୌଡ଼ ଏକ୍ସପୋର୍ଟ ସବୁବେଳେ ମାଗଣା।';
  }

  @override
  String import_unlock(String price) {
    return 'ଇମ୍ପୋର୍ଟ ଅନଲକ କରନ୍ତୁ — $price';
  }

  @override
  String get import_restore => 'କ୍ରୟ ପୁନରୁଦ୍ଧାର';

  @override
  String get import_storeUnavailable => 'ଷ୍ଟୋର ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get import_purchaseFailed => 'କ୍ରୟ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା ନାହିଁ।';

  @override
  String get import_errZip => 'ZIP ଖୋଲି ହେଉନାହିଁ।';

  @override
  String get import_errInvalid => 'ଫାଇଲଟି ବୈଧ GPX ନୁହେଁ।';

  @override
  String get import_errNoPoints => 'GPX ରେ ଟ୍ରାକ ପଏଣ୍ଟ ନାହିଁ।';

  @override
  String get import_errNoTimes =>
      'GPX ରେ ଟାଇମଷ୍ଟାମ୍ପ ନାହିଁ — ପେସ ଗଣନା ହୋଇପାରିବ ନାହିଁ।';

  @override
  String get report_total => 'ମୋଟ';

  @override
  String get report_runs => 'ଦୌଡ଼';

  @override
  String get report_longest => 'ସବୁଠାରୁ ଲମ୍ବା';

  @override
  String report_perWeek(String unit) {
    return 'ସପ୍ତାହ ପ୍ରତି $unit';
  }

  @override
  String get report_paceTrend => 'ପେସର ଧାରା';

  @override
  String get report_fewRuns => 'ଧାରା ପାଇଁ ଯଥେଷ୍ଟ ଦୌଡ଼ ନାହିଁ।';

  @override
  String get notif_recording => 'ଆପଣଙ୍କ ଦୌଡ଼ ରେକର୍ଡ ହେଉଛି';

  @override
  String get notif_channel => 'ଦୌଡ଼ ରେକର୍ଡିଂ';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count କିଲୋମିଟର',
      one: '$count କିଲୋମିଟର',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value କିଲୋମିଟର';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ମାଇଲ',
      one: '$count ମାଇଲ',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value ମାଇଲ';
  }

  @override
  String cue_pace(String clock) {
    return 'ପେସ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'ସମୟ $clock';
  }

  @override
  String get cue_onTarget => 'ଲକ୍ଷ୍ୟରେ';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସେକେଣ୍ଡ ଦ୍ରୁତ',
      one: '$count ସେକେଣ୍ଡ ଦ୍ରୁତ',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସେକେଣ୍ଡ ଧୀର',
      one: '$count ସେକେଣ୍ଡ ଧୀର',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count ମିଟର ଆଗରେ';
  }

  @override
  String cue_behind(int count) {
    return '$count ମିଟର ପଛରେ';
  }
}
