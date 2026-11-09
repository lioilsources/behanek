// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get back => 'પાછા';

  @override
  String get history_import => 'ઇમ્પોર્ટ';

  @override
  String get history_settings => 'સેટિંગ્સ';

  @override
  String get history_empty =>
      'હજી સુધી કોઈ દોડ નથી.\nશૂઝ પહેરો અને ‘દોડો’ પર ટૅપ કરો.';

  @override
  String get history_run => 'દોડો';

  @override
  String get history_report => 'રિપોર્ટ';

  @override
  String get history_paceSame => 'એ જ પેસ';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds સે. ઝડપી';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds સે. ધીમું';
  }

  @override
  String get settings_title => 'સેટિંગ્સ';

  @override
  String get settings_units => 'એકમો';

  @override
  String get settings_voiceLanguage => 'અવાજની ભાષા';

  @override
  String get settings_cues => 'જાહેરાતો';

  @override
  String get settings_cueVoice => 'અવાજ';

  @override
  String get settings_cueTones => 'ટોન';

  @override
  String get settings_cueBoth => 'બંને';

  @override
  String get settings_cueOff => 'કંઈ નહીં';

  @override
  String get settings_tonesHelp =>
      'ટોન: બે ટૂંકા = ઝડપ વધારો, એક લાંબો = ધીમા પડો, મૌન = લક્ષ્ય પર.';

  @override
  String get settings_cueInterval => 'જાહેરાતનો અંતરાલ';

  @override
  String get settings_pacerGoal => 'તમારા ફોર્મ પરથી લક્ષ્ય';

  @override
  String get settings_pacerHold => 'બસ જાળવી રાખો';

  @override
  String get settings_pacerImprove => '2 % ઝડપી';

  @override
  String get settings_autoPause => 'અટકો ત્યારે આપમેળે વિરામ';

  @override
  String get settings_metronome => 'કેડન્સ મેટ્રોનોમ';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps પગલાં/મિનિટ';
  }

  @override
  String get settings_mapLayer => 'નકશો';

  @override
  String get settings_backup => 'બધી દોડનો બેકઅપ (GPX નો ZIP)';

  @override
  String get settings_privacy =>
      'કોઈ ડેટા ક્યારેય તમારા ફોનની બહાર જતો નથી. Běhánek માં એકાઉન્ટ, સર્વર, એનાલિટિક્સ કે જાહેરાતો નથી.';

  @override
  String get map_satellite => 'સેટેલાઇટ';

  @override
  String get map_topo => 'આઉટડોર';

  @override
  String get run_title => 'દોડ';

  @override
  String get run_locationOff =>
      'તમારા ફોનમાં લોકેશન બંધ છે. તેના વિના દોડ રેકોર્ડ થઈ શકતી નથી.';

  @override
  String get run_locationNeeded =>
      'તમારો રૂટ રેકોર્ડ કરવા Běhánek ને “ઍપ વાપરતી વખતે” લોકેશન જોઈએ. તે ક્યાંય મોકલાતું નથી; તમારા ફોનમાં જ રહે છે.';

  @override
  String get run_allowLocation => 'લોકેશનની મંજૂરી આપો';

  @override
  String get run_gpsSearching => 'GPS શોધી રહ્યા છીએ…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ઉત્તમ (±$meters મી.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS સારું (±$meters મી.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS નબળું (±$meters મી.) — થોડી રાહ જુઓ';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ઘોસ્ટ: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'પેસર: હજી પૂરતી દોડ નથી — ફક્ત સમય અને અંતર જણાવીશ';

  @override
  String run_pacerForm(int count) {
    return 'પેસર: $count દોડ પરથી તમારું ફોર્મ';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'પેસર: $count દોડ પરથી તમારું ફોર્મ, 2 % ઝડપી';
  }

  @override
  String get run_form => 'ફોર્મ';

  @override
  String get run_ghost => 'ઘોસ્ટ';

  @override
  String get run_start => 'શરૂ';

  @override
  String get run_noGhost =>
      'તમે અહીંથી હજી દોડ્યા નથી — ઘોસ્ટને 300 મી.ની અંદર શરૂ થયેલી દોડ જોઈએ.';

  @override
  String get run_cancel => 'રદ કરો';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ઘોસ્ટથી $meters મી. આગળ';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ઘોસ્ટથી $meters મી. પાછળ';
  }

  @override
  String run_onTarget(String pace) {
    return 'લક્ષ્ય પર ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace કરતાં $seconds સે. ઝડપી';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace કરતાં $seconds સે. ધીમું';
  }

  @override
  String get run_autoPaused => 'આપમેળે વિરામ';

  @override
  String get run_paused => 'વિરામ';

  @override
  String get run_weakGps => 'નબળું GPS સિગ્નલ';

  @override
  String get run_resume => 'ફરી શરૂ';

  @override
  String get run_pause => 'વિરામ';

  @override
  String get run_numbers => 'આંકડા';

  @override
  String get run_map => 'નકશો';

  @override
  String get run_waitingForLocation => 'લોકેશનની રાહ…';

  @override
  String get run_stopped => 'દોડ અટકી';

  @override
  String get run_save => 'સેવ કરો';

  @override
  String get run_continue => 'દોડતા રહો';

  @override
  String get run_discardTitle => 'દોડ રદ કરવી છે?';

  @override
  String get run_discard => 'રદ કરો';

  @override
  String get run_discardBody => 'દોડ સેવ નહીં થાય.';

  @override
  String get run_slideToStop => 'રોકવા માટે સ્લાઇડ કરો';

  @override
  String get run_stop => 'રોકો';

  @override
  String get stat_time => 'સમય';

  @override
  String get stat_pace => 'પેસ';

  @override
  String get stat_average => 'સરેરાશ';

  @override
  String get stat_distance => 'અંતર';

  @override
  String get stat_elevation => 'ચઢાણ મી.';

  @override
  String get detail_imported => 'GPX માંથી ઇમ્પોર્ટ';

  @override
  String get detail_splits => 'સ્પ્લિટ';

  @override
  String get detail_pace => 'પેસ';

  @override
  String get detail_elevation => 'ઊંચાઈ';

  @override
  String get detail_exportGpx => 'GPX એક્સપોર્ટ';

  @override
  String get detail_trim => 'શરૂઆત / અંત કાપો';

  @override
  String get detail_deleteTitle => 'દોડ ડિલીટ કરવી છે?';

  @override
  String get detail_delete => 'ડિલીટ કરો';

  @override
  String get detail_deleteBody =>
      'દોડ અને તેનો રૂટ તમારા ફોનમાંથી ગાયબ થઈ જશે. આ પાછું ફેરવી શકાતું નથી.';

  @override
  String get detail_deleteRun => 'દોડ ડિલીટ કરો';

  @override
  String get detail_tooShort => 'એક સ્પ્લિટ કરતાં ટૂંકી.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'દોડ કાપો';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to રાખો';
  }

  @override
  String get trim_save => 'કાપ સેવ કરો';

  @override
  String get import_title => 'GPX ઇમ્પોર્ટ';

  @override
  String get import_intro =>
      'Strava, Garmin અથવા બીજી ઍપમાંથી તમારો ઇતિહાસ લાવો — અલગ GPX ફાઇલો અથવા આખો એક્સપોર્ટ ZIP પસંદ કરો. પેસર તરત જ તેમાંથી તમારું ફોર્મ શીખી લે છે.';

  @override
  String get import_pick => 'ફાઇલો પસંદ કરો';

  @override
  String get import_pickOther => 'બીજી ફાઇલો પસંદ કરો';

  @override
  String import_done(int count) {
    return '$count દોડ ઇમ્પોર્ટ થઈ.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count દોડ ઇમ્પોર્ટ થઈ, $skipped પહેલેથી ઇતિહાસમાં હતી.';
  }

  @override
  String import_toImport(int count) {
    return 'ઇમ્પોર્ટ માટે $count દોડ';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ઇમ્પોર્ટ માટે $count દોડ ($skipped છોડી)';
  }

  @override
  String get import_duplicate => 'પહેલેથી ઇતિહાસમાં';

  @override
  String import_andMore(int count) {
    return '… અને વધુ $count ફાઇલો';
  }

  @override
  String import_importN(int count) {
    return '$count દોડ ઇમ્પોર્ટ કરો';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek માં ફક્ત ઇમ્પોર્ટ જ પેઇડ છે: એક વાર $price. દોડ એક્સપોર્ટ કરવી હંમેશાં મફત છે.';
  }

  @override
  String import_unlock(String price) {
    return 'ઇમ્પોર્ટ અનલૉક કરો — $price';
  }

  @override
  String get import_restore => 'ખરીદી પુનઃસ્થાપિત કરો';

  @override
  String get import_storeUnavailable => 'સ્ટોર હાલમાં ઉપલબ્ધ નથી.';

  @override
  String get import_purchaseFailed => 'ખરીદી પૂર્ણ ન થઈ.';

  @override
  String get import_errZip => 'ZIP ખોલી શકાતો નથી.';

  @override
  String get import_errInvalid => 'ફાઇલ માન્ય GPX નથી.';

  @override
  String get import_errNoPoints => 'GPX માં ટ્રૅક પૉઇન્ટ નથી.';

  @override
  String get import_errNoTimes =>
      'GPX માં ટાઇમસ્ટેમ્પ નથી — પેસની ગણતરી થઈ શકતી નથી.';

  @override
  String get report_total => 'કુલ';

  @override
  String get report_runs => 'દોડ';

  @override
  String get report_longest => 'સૌથી લાંબી';

  @override
  String report_perWeek(String unit) {
    return 'દર અઠવાડિયે $unit';
  }

  @override
  String get report_paceTrend => 'પેસનો વલણ';

  @override
  String get report_fewRuns => 'વલણ માટે પૂરતી દોડ નથી.';

  @override
  String get notif_recording => 'તમારી દોડ રેકોર્ડ થઈ રહી છે';

  @override
  String get notif_channel => 'દોડ રેકોર્ડિંગ';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count કિલોમીટર',
      one: '$count કિલોમીટર',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value કિલોમીટર';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count માઇલ',
      one: '$count માઇલ',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value માઇલ';
  }

  @override
  String cue_pace(String clock) {
    return 'પેસ $clock';
  }

  @override
  String cue_time(String clock) {
    return 'સમય $clock';
  }

  @override
  String get cue_onTarget => 'લક્ષ્ય પર';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count સેકન્ડ ઝડપી',
      one: '$count સેકન્ડ ઝડપી',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count સેકન્ડ ધીમું',
      one: '$count સેકન્ડ ધીમું',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count મીટર આગળ';
  }

  @override
  String cue_behind(int count) {
    return '$count મીટર પાછળ';
  }
}
