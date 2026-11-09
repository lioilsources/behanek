// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get back => 'వెనుకకు';

  @override
  String get history_import => 'దిగుమతి';

  @override
  String get history_settings => 'సెట్టింగ్‌లు';

  @override
  String get history_empty =>
      'ఇంకా పరుగులు లేవు.\nషూస్ వేసుకుని ‘పరుగెత్తు’ నొక్కండి.';

  @override
  String get history_run => 'పరుగెత్తు';

  @override
  String get history_report => 'నివేదిక';

  @override
  String get history_paceSame => 'అదే వేగం';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds సె. వేగంగా';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds సె. నెమ్మదిగా';
  }

  @override
  String get settings_title => 'సెట్టింగ్‌లు';

  @override
  String get settings_units => 'యూనిట్లు';

  @override
  String get settings_voiceLanguage => 'వాయిస్ భాష';

  @override
  String get settings_cues => 'ప్రకటనలు';

  @override
  String get settings_cueVoice => 'వాయిస్';

  @override
  String get settings_cueTones => 'టోన్లు';

  @override
  String get settings_cueBoth => 'రెండూ';

  @override
  String get settings_cueOff => 'ఏదీ లేదు';

  @override
  String get settings_tonesHelp =>
      'టోన్లు: రెండు చిన్నవి = వేగం పెంచు, ఒక పొడవైనది = వేగం తగ్గించు, నిశ్శబ్దం = లక్ష్యంలో.';

  @override
  String get settings_cueInterval => 'ప్రకటనల వ్యవధి';

  @override
  String get settings_pacerGoal => 'మీ ఫామ్ నుండి లక్ష్యం';

  @override
  String get settings_pacerHold => 'అలాగే కొనసాగించు';

  @override
  String get settings_pacerImprove => '2 % వేగంగా';

  @override
  String get settings_autoPause => 'ఆగినప్పుడు ఆటో-పాజ్';

  @override
  String get settings_metronome => 'కేడెన్స్ మెట్రోనోమ్';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps అడుగులు/నిమి';
  }

  @override
  String get settings_mapLayer => 'మ్యాప్';

  @override
  String get settings_backup => 'అన్ని పరుగుల బ్యాకప్ (GPX ZIP)';

  @override
  String get settings_privacy =>
      'ఏ డేటా కూడా మీ ఫోన్ దాటి వెళ్లదు. Běhánek‌లో ఖాతా, సర్వర్, అనలిటిక్స్, ప్రకటనలు ఏవీ లేవు.';

  @override
  String get map_satellite => 'ఉపగ్రహం';

  @override
  String get map_topo => 'అవుట్‌డోర్';

  @override
  String get run_title => 'పరుగు';

  @override
  String get run_locationOff =>
      'మీ ఫోన్‌లో లొకేషన్ ఆఫ్‌లో ఉంది. అది లేకుండా పరుగును రికార్డ్ చేయలేను.';

  @override
  String get run_locationNeeded =>
      'మీ మార్గాన్ని రికార్డ్ చేయడానికి Běhánek‌కు “యాప్ ఉపయోగిస్తున్నప్పుడు” లొకేషన్ అవసరం. అది ఎక్కడికీ పంపబడదు; మీ ఫోన్‌లోనే ఉంటుంది.';

  @override
  String get run_allowLocation => 'లొకేషన్‌ను అనుమతించు';

  @override
  String get run_gpsSearching => 'GPS కోసం వెతుకుతోంది…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS అద్భుతం (±$meters మీ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS బాగుంది (±$meters మీ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS బలహీనం (±$meters మీ.) — కొంచెం ఆగండి';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ఘోస్ట్: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'పేసర్: ఇంకా సరిపడా పరుగులు లేవు — సమయం, దూరం మాత్రమే చెబుతాను';

  @override
  String run_pacerForm(int count) {
    return 'పేసర్: $count పరుగుల నుండి మీ ఫామ్';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'పేసర్: $count పరుగుల నుండి మీ ఫామ్, 2 % వేగంగా';
  }

  @override
  String get run_form => 'ఫామ్';

  @override
  String get run_ghost => 'ఘోస్ట్';

  @override
  String get run_start => 'ప్రారంభం';

  @override
  String get run_noGhost =>
      'మీరు ఇక్కడి నుండి ఇంకా పరుగెత్తలేదు — ఘోస్ట్‌కు 300 మీ. లోపల ప్రారంభమైన పరుగు కావాలి.';

  @override
  String get run_cancel => 'రద్దు చేయి';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ఘోస్ట్ కంటే $meters మీ. ముందు';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ఘోస్ట్ కంటే $meters మీ. వెనుక';
  }

  @override
  String run_onTarget(String pace) {
    return 'లక్ష్యంలో ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace కంటే $seconds సె. వేగంగా';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace కంటే $seconds సె. నెమ్మదిగా';
  }

  @override
  String get run_autoPaused => 'ఆటో-పాజ్';

  @override
  String get run_paused => 'పాజ్ చేయబడింది';

  @override
  String get run_weakGps => 'బలహీనమైన GPS సిగ్నల్';

  @override
  String get run_resume => 'కొనసాగించు';

  @override
  String get run_pause => 'పాజ్';

  @override
  String get run_numbers => 'సంఖ్యలు';

  @override
  String get run_map => 'మ్యాప్';

  @override
  String get run_waitingForLocation => 'లొకేషన్ కోసం వేచి ఉంది…';

  @override
  String get run_stopped => 'పరుగు ఆగింది';

  @override
  String get run_save => 'సేవ్ చేయి';

  @override
  String get run_continue => 'పరుగు కొనసాగించు';

  @override
  String get run_discardTitle => 'పరుగును విస్మరించాలా?';

  @override
  String get run_discard => 'విస్మరించు';

  @override
  String get run_discardBody => 'పరుగు సేవ్ చేయబడదు.';

  @override
  String get run_slideToStop => 'ఆపడానికి స్లైడ్ చేయండి';

  @override
  String get run_stop => 'ఆపు';

  @override
  String get stat_time => 'సమయం';

  @override
  String get stat_pace => 'వేగం';

  @override
  String get stat_average => 'సగటు';

  @override
  String get stat_distance => 'దూరం';

  @override
  String get stat_elevation => 'ఎత్తు పెరుగుదల మీ.';

  @override
  String get detail_imported => 'GPX నుండి దిగుమతి';

  @override
  String get detail_splits => 'స్ప్లిట్‌లు';

  @override
  String get detail_pace => 'వేగం';

  @override
  String get detail_elevation => 'ఎత్తు';

  @override
  String get detail_exportGpx => 'GPX ఎగుమతి';

  @override
  String get detail_trim => 'ప్రారంభం / ముగింపు కత్తిరించు';

  @override
  String get detail_deleteTitle => 'పరుగును తొలగించాలా?';

  @override
  String get detail_delete => 'తొలగించు';

  @override
  String get detail_deleteBody =>
      'పరుగు, దాని మార్గం మీ ఫోన్ నుండి మాయమవుతాయి. దీన్ని రద్దు చేయలేరు.';

  @override
  String get detail_deleteRun => 'పరుగును తొలగించు';

  @override
  String get detail_tooShort => 'ఒక స్ప్లిట్ కంటే తక్కువ.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'పరుగును కత్తిరించు';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to ఉంచు';
  }

  @override
  String get trim_save => 'కత్తిరింపును సేవ్ చేయి';

  @override
  String get import_title => 'GPX దిగుమతి';

  @override
  String get import_intro =>
      'Strava, Garmin లేదా ఇతర యాప్ నుండి మీ చరిత్రను తీసుకురండి — విడి GPX ఫైళ్లను లేదా పూర్తి ఎగుమతి ZIP‌ను ఎంచుకోండి. పేసర్ వెంటనే మీ ఫామ్‌ను నేర్చుకుంటుంది.';

  @override
  String get import_pick => 'ఫైళ్లను ఎంచుకో';

  @override
  String get import_pickOther => 'ఇతర ఫైళ్లను ఎంచుకో';

  @override
  String import_done(int count) {
    return '$count పరుగులు దిగుమతి అయ్యాయి.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count పరుగులు దిగుమతి అయ్యాయి, $skipped ఇప్పటికే చరిత్రలో ఉన్నాయి.';
  }

  @override
  String import_toImport(int count) {
    return 'దిగుమతికి $count పరుగులు';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'దిగుమతికి $count పరుగులు ($skipped దాటవేయబడ్డాయి)';
  }

  @override
  String get import_duplicate => 'ఇప్పటికే చరిత్రలో ఉంది';

  @override
  String import_andMore(int count) {
    return '… మరియు మరో $count ఫైళ్లు';
  }

  @override
  String import_importN(int count) {
    return '$count పరుగులను దిగుమతి చేయి';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek‌లో చెల్లింపు ఉన్నది దిగుమతి ఒక్కటే: ఒకసారి $price. పరుగులను ఎగుమతి చేయడం ఎప్పుడూ ఉచితం.';
  }

  @override
  String import_unlock(String price) {
    return 'దిగుమతిని అన్‌లాక్ చేయి — $price';
  }

  @override
  String get import_restore => 'కొనుగోలును పునరుద్ధరించు';

  @override
  String get import_storeUnavailable => 'స్టోర్ ప్రస్తుతం అందుబాటులో లేదు.';

  @override
  String get import_purchaseFailed => 'కొనుగోలు పూర్తి కాలేదు.';

  @override
  String get import_errZip => 'ZIP తెరవడం సాధ్యం కాదు.';

  @override
  String get import_errInvalid => 'ఫైల్ చెల్లుబాటయ్యే GPX కాదు.';

  @override
  String get import_errNoPoints => 'GPX‌లో ట్రాక్ పాయింట్లు లేవు.';

  @override
  String get import_errNoTimes =>
      'GPX‌లో టైమ్‌స్టాంప్‌లు లేవు — వేగాన్ని లెక్కించలేము.';

  @override
  String get report_total => 'మొత్తం';

  @override
  String get report_runs => 'పరుగులు';

  @override
  String get report_longest => 'అతి పొడవైనది';

  @override
  String report_perWeek(String unit) {
    return 'వారానికి $unit';
  }

  @override
  String get report_paceTrend => 'వేగం ధోరణి';

  @override
  String get report_fewRuns => 'ధోరణికి సరిపడా పరుగులు లేవు.';

  @override
  String get notif_recording => 'మీ పరుగు రికార్డ్ అవుతోంది';

  @override
  String get notif_channel => 'పరుగు రికార్డింగ్';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count కిలోమీటర్లు',
      one: '1 కిలోమీటర్',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value కిలోమీటర్లు';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count మైళ్లు',
      one: '1 మైలు',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value మైళ్లు';
  }

  @override
  String cue_pace(String clock) {
    return 'వేగం $clock';
  }

  @override
  String cue_time(String clock) {
    return 'సమయం $clock';
  }

  @override
  String get cue_onTarget => 'లక్ష్యంలో';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count సెకన్లు వేగంగా',
      one: '1 సెకను వేగంగా',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count సెకన్లు నెమ్మదిగా',
      one: '1 సెకను నెమ్మదిగా',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count మీటర్లు ముందు';
  }

  @override
  String cue_behind(int count) {
    return '$count మీటర్లు వెనుక';
  }
}
