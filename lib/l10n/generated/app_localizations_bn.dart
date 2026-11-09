// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get back => 'ফিরে যান';

  @override
  String get history_import => 'ইমপোর্ট';

  @override
  String get history_settings => 'সেটিংস';

  @override
  String get history_empty =>
      'এখনও কোনো দৌড় নেই।\nজুতো পরে ‘দৌড়ান’ ট্যাপ করুন।';

  @override
  String get history_run => 'দৌড়ান';

  @override
  String get history_report => 'রিপোর্ট';

  @override
  String get history_paceSame => 'একই পেস';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds সে. দ্রুত';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds সে. ধীর';
  }

  @override
  String get settings_title => 'সেটিংস';

  @override
  String get settings_units => 'একক';

  @override
  String get settings_voiceLanguage => 'কণ্ঠের ভাষা';

  @override
  String get settings_cues => 'ঘোষণা';

  @override
  String get settings_cueVoice => 'কণ্ঠ';

  @override
  String get settings_cueTones => 'টোন';

  @override
  String get settings_cueBoth => 'দুটোই';

  @override
  String get settings_cueOff => 'কিছু না';

  @override
  String get settings_tonesHelp =>
      'টোন: দুটি ছোট = গতি বাড়ান, একটি লম্বা = গতি কমান, নীরবতা = লক্ষ্যে আছেন।';

  @override
  String get settings_cueInterval => 'ঘোষণার ব্যবধান';

  @override
  String get settings_pacerGoal => 'আপনার ফর্ম থেকে লক্ষ্য';

  @override
  String get settings_pacerHold => 'শুধু ধরে রাখুন';

  @override
  String get settings_pacerImprove => '2 % দ্রুত';

  @override
  String get settings_autoPause => 'থামলে স্বয়ংক্রিয় বিরতি';

  @override
  String get settings_metronome => 'ক্যাডেন্স মেট্রোনোম';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps পদক্ষেপ/মিনিট';
  }

  @override
  String get settings_mapLayer => 'মানচিত্র';

  @override
  String get settings_backup => 'সব দৌড়ের ব্যাকআপ (GPX-এর ZIP)';

  @override
  String get settings_privacy =>
      'কোনো ডেটা কখনও আপনার ফোন ছেড়ে যায় না। Běhánek-এ কোনো অ্যাকাউন্ট, সার্ভার, অ্যানালিটিক্স বা বিজ্ঞাপন নেই।';

  @override
  String get map_satellite => 'স্যাটেলাইট';

  @override
  String get map_topo => 'আউটডোর';

  @override
  String get run_title => 'দৌড়';

  @override
  String get run_locationOff =>
      'আপনার ফোনে লোকেশন বন্ধ। এটি ছাড়া দৌড় রেকর্ড করা যাবে না।';

  @override
  String get run_locationNeeded =>
      'আপনার রুট রেকর্ড করতে Běhánek-এর “অ্যাপ ব্যবহারের সময়” লোকেশন দরকার। এটি কোথাও পাঠানো হয় না; আপনার ফোনেই থাকে।';

  @override
  String get run_allowLocation => 'লোকেশনের অনুমতি দিন';

  @override
  String get run_gpsSearching => 'GPS খোঁজা হচ্ছে…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS চমৎকার (±$meters মি.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS ভালো (±$meters মি.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS দুর্বল (±$meters মি.) — একটু অপেক্ষা করুন';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'ঘোস্ট: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'পেসার: এখনও যথেষ্ট দৌড় নেই — শুধু সময় ও দূরত্ব জানাব';

  @override
  String run_pacerForm(int count) {
    return 'পেসার: $countটি দৌড় থেকে আপনার ফর্ম';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'পেসার: $countটি দৌড় থেকে আপনার ফর্ম, 2 % দ্রুত';
  }

  @override
  String get run_form => 'ফর্ম';

  @override
  String get run_ghost => 'ঘোস্ট';

  @override
  String get run_start => 'শুরু';

  @override
  String get run_noGhost =>
      'আপনি এখান থেকে এখনও দৌড়াননি — ঘোস্টের জন্য 300 মি.-এর মধ্যে শুরু হওয়া একটি দৌড় দরকার।';

  @override
  String get run_cancel => 'বাতিল';

  @override
  String run_aheadOfGhost(int meters) {
    return 'ঘোস্টের $meters মি. আগে';
  }

  @override
  String run_behindGhost(int meters) {
    return 'ঘোস্টের $meters মি. পিছনে';
  }

  @override
  String run_onTarget(String pace) {
    return 'লক্ষ্যে ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace-এর চেয়ে $seconds সে. দ্রুত';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace-এর চেয়ে $seconds সে. ধীর';
  }

  @override
  String get run_autoPaused => 'স্বয়ংক্রিয় বিরতি';

  @override
  String get run_paused => 'বিরতি';

  @override
  String get run_weakGps => 'দুর্বল GPS সিগন্যাল';

  @override
  String get run_resume => 'আবার শুরু';

  @override
  String get run_pause => 'বিরতি';

  @override
  String get run_numbers => 'সংখ্যা';

  @override
  String get run_map => 'মানচিত্র';

  @override
  String get run_waitingForLocation => 'লোকেশনের অপেক্ষা…';

  @override
  String get run_stopped => 'দৌড় থেমেছে';

  @override
  String get run_save => 'সেভ করুন';

  @override
  String get run_continue => 'দৌড়াতে থাকুন';

  @override
  String get run_discardTitle => 'দৌড় বাদ দেবেন?';

  @override
  String get run_discard => 'বাদ দিন';

  @override
  String get run_discardBody => 'দৌড়টি সেভ হবে না।';

  @override
  String get run_slideToStop => 'থামাতে স্লাইড করুন';

  @override
  String get run_stop => 'থামুন';

  @override
  String get stat_time => 'সময়';

  @override
  String get stat_pace => 'পেস';

  @override
  String get stat_average => 'গড়';

  @override
  String get stat_distance => 'দূরত্ব';

  @override
  String get stat_elevation => 'চড়াই মি.';

  @override
  String get detail_imported => 'GPX থেকে ইমপোর্ট';

  @override
  String get detail_splits => 'স্প্লিট';

  @override
  String get detail_pace => 'পেস';

  @override
  String get detail_elevation => 'উচ্চতা';

  @override
  String get detail_exportGpx => 'GPX এক্সপোর্ট';

  @override
  String get detail_trim => 'শুরু / শেষ ছাঁটুন';

  @override
  String get detail_deleteTitle => 'দৌড় মুছবেন?';

  @override
  String get detail_delete => 'মুছুন';

  @override
  String get detail_deleteBody =>
      'দৌড় ও তার রুট আপনার ফোন থেকে মুছে যাবে। এটি ফেরানো যাবে না।';

  @override
  String get detail_deleteRun => 'দৌড় মুছুন';

  @override
  String get detail_tooShort => 'একটি স্প্লিটের চেয়ে ছোট।';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'দৌড় ছাঁটুন';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to রাখুন';
  }

  @override
  String get trim_save => 'ছাঁটাই সেভ করুন';

  @override
  String get import_title => 'GPX ইমপোর্ট';

  @override
  String get import_intro =>
      'Strava, Garmin বা অন্য অ্যাপ থেকে আপনার ইতিহাস আনুন — আলাদা GPX ফাইল বা পুরো এক্সপোর্ট ZIP বেছে নিন। পেসার সঙ্গে সঙ্গে আপনার ফর্ম শিখে নেয়।';

  @override
  String get import_pick => 'ফাইল বেছে নিন';

  @override
  String get import_pickOther => 'অন্য ফাইল বেছে নিন';

  @override
  String import_done(int count) {
    return '$countটি দৌড় ইমপোর্ট হয়েছে।';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$countটি দৌড় ইমপোর্ট হয়েছে, $skippedটি আগে থেকেই ইতিহাসে ছিল।';
  }

  @override
  String import_toImport(int count) {
    return 'ইমপোর্টের জন্য $countটি দৌড়';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'ইমপোর্টের জন্য $countটি দৌড় ($skippedটি বাদ)';
  }

  @override
  String get import_duplicate => 'আগে থেকেই ইতিহাসে আছে';

  @override
  String import_andMore(int count) {
    return '… এবং আরও $countটি ফাইল';
  }

  @override
  String import_importN(int count) {
    return '$countটি দৌড় ইমপোর্ট করুন';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek-এ শুধু ইমপোর্টই পেইড: এককালীন $price। দৌড় এক্সপোর্ট সবসময় ফ্রি।';
  }

  @override
  String import_unlock(String price) {
    return 'ইমপোর্ট আনলক করুন — $price';
  }

  @override
  String get import_restore => 'কেনাকাটা পুনরুদ্ধার';

  @override
  String get import_storeUnavailable => 'স্টোর এখন পাওয়া যাচ্ছে না।';

  @override
  String get import_purchaseFailed => 'কেনাকাটা সম্পন্ন হয়নি।';

  @override
  String get import_errZip => 'ZIP খোলা যাচ্ছে না।';

  @override
  String get import_errInvalid => 'ফাইলটি বৈধ GPX নয়।';

  @override
  String get import_errNoPoints => 'GPX-এ কোনো ট্র্যাক পয়েন্ট নেই।';

  @override
  String get import_errNoTimes =>
      'GPX-এ টাইমস্ট্যাম্প নেই — পেস হিসাব করা যাবে না।';

  @override
  String get report_total => 'মোট';

  @override
  String get report_runs => 'দৌড়';

  @override
  String get report_longest => 'দীর্ঘতম';

  @override
  String report_perWeek(String unit) {
    return 'সপ্তাহে $unit';
  }

  @override
  String get report_paceTrend => 'পেসের প্রবণতা';

  @override
  String get report_fewRuns => 'প্রবণতার জন্য যথেষ্ট দৌড় নেই।';

  @override
  String get notif_recording => 'আপনার দৌড় রেকর্ড হচ্ছে';

  @override
  String get notif_channel => 'দৌড় রেকর্ডিং';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count কিলোমিটার',
      one: '$count কিলোমিটার',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value কিলোমিটার';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মাইল',
      one: '$count মাইল',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value মাইল';
  }

  @override
  String cue_pace(String clock) {
    return 'পেস $clock';
  }

  @override
  String cue_time(String clock) {
    return 'সময় $clock';
  }

  @override
  String get cue_onTarget => 'লক্ষ্যে';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সেকেন্ড দ্রুত',
      one: '$count সেকেন্ড দ্রুত',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সেকেন্ড ধীর',
      one: '$count সেকেন্ড ধীর',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count মিটার আগে';
  }

  @override
  String cue_behind(int count) {
    return '$count মিটার পিছনে';
  }
}
