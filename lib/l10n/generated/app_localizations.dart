import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fi'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('nb'),
    Locale('nl'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @history_import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get history_import;

  /// No description provided for @history_settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get history_settings;

  /// No description provided for @history_empty.
  ///
  /// In en, this message translates to:
  /// **'No runs yet.\nPut your shoes on and tap Run.'**
  String get history_empty;

  /// No description provided for @history_run.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get history_run;

  /// No description provided for @history_report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get history_report;

  /// No description provided for @history_paceSame.
  ///
  /// In en, this message translates to:
  /// **'same pace'**
  String get history_paceSame;

  /// No description provided for @history_paceFaster.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s faster'**
  String history_paceFaster(int seconds);

  /// No description provided for @history_paceSlower.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s slower'**
  String history_paceSlower(int seconds);

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @settings_units.
  ///
  /// In en, this message translates to:
  /// **'Units'**
  String get settings_units;

  /// No description provided for @settings_voiceLanguage.
  ///
  /// In en, this message translates to:
  /// **'Voice language'**
  String get settings_voiceLanguage;

  /// No description provided for @settings_cues.
  ///
  /// In en, this message translates to:
  /// **'Announcements'**
  String get settings_cues;

  /// No description provided for @settings_cueVoice.
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get settings_cueVoice;

  /// No description provided for @settings_cueTones.
  ///
  /// In en, this message translates to:
  /// **'Tones'**
  String get settings_cueTones;

  /// No description provided for @settings_cueBoth.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get settings_cueBoth;

  /// No description provided for @settings_cueOff.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get settings_cueOff;

  /// No description provided for @settings_tonesHelp.
  ///
  /// In en, this message translates to:
  /// **'Tones: two short = speed up, one long = slow down, silence = on target.'**
  String get settings_tonesHelp;

  /// No description provided for @settings_cueInterval.
  ///
  /// In en, this message translates to:
  /// **'Announcement interval'**
  String get settings_cueInterval;

  /// No description provided for @settings_pacerGoal.
  ///
  /// In en, this message translates to:
  /// **'Goal from your form'**
  String get settings_pacerGoal;

  /// No description provided for @settings_pacerHold.
  ///
  /// In en, this message translates to:
  /// **'Just hold it'**
  String get settings_pacerHold;

  /// No description provided for @settings_pacerImprove.
  ///
  /// In en, this message translates to:
  /// **'2 % faster'**
  String get settings_pacerImprove;

  /// No description provided for @settings_autoPause.
  ///
  /// In en, this message translates to:
  /// **'Auto-pause when you stop'**
  String get settings_autoPause;

  /// No description provided for @settings_metronome.
  ///
  /// In en, this message translates to:
  /// **'Cadence metronome'**
  String get settings_metronome;

  /// No description provided for @settings_stepsPerMin.
  ///
  /// In en, this message translates to:
  /// **'{steps} steps/min'**
  String settings_stepsPerMin(int steps);

  /// No description provided for @settings_mapLayer.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get settings_mapLayer;

  /// No description provided for @settings_backup.
  ///
  /// In en, this message translates to:
  /// **'Back up all runs (ZIP of GPX)'**
  String get settings_backup;

  /// No description provided for @settings_privacy.
  ///
  /// In en, this message translates to:
  /// **'No data ever leaves your phone. Běhánek has no account, no server, no analytics and no ads.'**
  String get settings_privacy;

  /// No description provided for @map_satellite.
  ///
  /// In en, this message translates to:
  /// **'Satellite'**
  String get map_satellite;

  /// No description provided for @map_topo.
  ///
  /// In en, this message translates to:
  /// **'Outdoor'**
  String get map_topo;

  /// No description provided for @run_title.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get run_title;

  /// No description provided for @run_locationOff.
  ///
  /// In en, this message translates to:
  /// **'Location is turned off on your phone. Without it I can\'t record the run.'**
  String get run_locationOff;

  /// No description provided for @run_locationNeeded.
  ///
  /// In en, this message translates to:
  /// **'Běhánek needs location “while using the app” to record your route. It never sends it anywhere; it stays on your phone.'**
  String get run_locationNeeded;

  /// No description provided for @run_allowLocation.
  ///
  /// In en, this message translates to:
  /// **'Allow location'**
  String get run_allowLocation;

  /// No description provided for @run_gpsSearching.
  ///
  /// In en, this message translates to:
  /// **'Looking for GPS…'**
  String get run_gpsSearching;

  /// No description provided for @run_gpsExcellent.
  ///
  /// In en, this message translates to:
  /// **'GPS excellent (±{meters} m)'**
  String run_gpsExcellent(int meters);

  /// No description provided for @run_gpsGood.
  ///
  /// In en, this message translates to:
  /// **'GPS good (±{meters} m)'**
  String run_gpsGood(int meters);

  /// No description provided for @run_gpsWeak.
  ///
  /// In en, this message translates to:
  /// **'GPS weak (±{meters} m) — wait a moment'**
  String run_gpsWeak(int meters);

  /// No description provided for @run_ghostPacer.
  ///
  /// In en, this message translates to:
  /// **'Ghost: {date}, {distance}'**
  String run_ghostPacer(String date, String distance);

  /// No description provided for @run_pacerFewRuns.
  ///
  /// In en, this message translates to:
  /// **'Pacer: not enough runs yet — I\'ll only announce time and distance'**
  String get run_pacerFewRuns;

  /// No description provided for @run_pacerForm.
  ///
  /// In en, this message translates to:
  /// **'Pacer: your form from {count} runs'**
  String run_pacerForm(int count);

  /// No description provided for @run_pacerFormImprove.
  ///
  /// In en, this message translates to:
  /// **'Pacer: your form from {count} runs, 2 % faster'**
  String run_pacerFormImprove(int count);

  /// No description provided for @run_form.
  ///
  /// In en, this message translates to:
  /// **'Form'**
  String get run_form;

  /// No description provided for @run_ghost.
  ///
  /// In en, this message translates to:
  /// **'Ghost'**
  String get run_ghost;

  /// No description provided for @run_start.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get run_start;

  /// No description provided for @run_noGhost.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t run from here yet — the ghost needs a run that started within 300 m.'**
  String get run_noGhost;

  /// No description provided for @run_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get run_cancel;

  /// No description provided for @run_aheadOfGhost.
  ///
  /// In en, this message translates to:
  /// **'{meters} m ahead of the ghost'**
  String run_aheadOfGhost(int meters);

  /// No description provided for @run_behindGhost.
  ///
  /// In en, this message translates to:
  /// **'{meters} m behind the ghost'**
  String run_behindGhost(int meters);

  /// No description provided for @run_onTarget.
  ///
  /// In en, this message translates to:
  /// **'on target ({pace})'**
  String run_onTarget(String pace);

  /// No description provided for @run_fasterThan.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s faster than {pace}'**
  String run_fasterThan(int seconds, String pace);

  /// No description provided for @run_slowerThan.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s slower than {pace}'**
  String run_slowerThan(int seconds, String pace);

  /// No description provided for @run_autoPaused.
  ///
  /// In en, this message translates to:
  /// **'AUTO-PAUSE'**
  String get run_autoPaused;

  /// No description provided for @run_paused.
  ///
  /// In en, this message translates to:
  /// **'PAUSED'**
  String get run_paused;

  /// No description provided for @run_weakGps.
  ///
  /// In en, this message translates to:
  /// **'Weak GPS signal'**
  String get run_weakGps;

  /// No description provided for @run_resume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get run_resume;

  /// No description provided for @run_pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get run_pause;

  /// No description provided for @run_numbers.
  ///
  /// In en, this message translates to:
  /// **'Numbers'**
  String get run_numbers;

  /// No description provided for @run_map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get run_map;

  /// No description provided for @run_waitingForLocation.
  ///
  /// In en, this message translates to:
  /// **'Waiting for location…'**
  String get run_waitingForLocation;

  /// No description provided for @run_stopped.
  ///
  /// In en, this message translates to:
  /// **'Run stopped'**
  String get run_stopped;

  /// No description provided for @run_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get run_save;

  /// No description provided for @run_continue.
  ///
  /// In en, this message translates to:
  /// **'Keep running'**
  String get run_continue;

  /// No description provided for @run_discardTitle.
  ///
  /// In en, this message translates to:
  /// **'Discard run?'**
  String get run_discardTitle;

  /// No description provided for @run_discard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get run_discard;

  /// No description provided for @run_discardBody.
  ///
  /// In en, this message translates to:
  /// **'The run won\'t be saved.'**
  String get run_discardBody;

  /// No description provided for @run_slideToStop.
  ///
  /// In en, this message translates to:
  /// **'Slide to stop'**
  String get run_slideToStop;

  /// No description provided for @run_stop.
  ///
  /// In en, this message translates to:
  /// **'STOP'**
  String get run_stop;

  /// No description provided for @stat_time.
  ///
  /// In en, this message translates to:
  /// **'time'**
  String get stat_time;

  /// No description provided for @stat_pace.
  ///
  /// In en, this message translates to:
  /// **'pace'**
  String get stat_pace;

  /// No description provided for @stat_average.
  ///
  /// In en, this message translates to:
  /// **'average'**
  String get stat_average;

  /// No description provided for @stat_distance.
  ///
  /// In en, this message translates to:
  /// **'distance'**
  String get stat_distance;

  /// No description provided for @stat_elevation.
  ///
  /// In en, this message translates to:
  /// **'elevation m'**
  String get stat_elevation;

  /// No description provided for @detail_imported.
  ///
  /// In en, this message translates to:
  /// **'Imported from GPX'**
  String get detail_imported;

  /// No description provided for @detail_splits.
  ///
  /// In en, this message translates to:
  /// **'Splits'**
  String get detail_splits;

  /// No description provided for @detail_pace.
  ///
  /// In en, this message translates to:
  /// **'Pace'**
  String get detail_pace;

  /// No description provided for @detail_elevation.
  ///
  /// In en, this message translates to:
  /// **'Elevation'**
  String get detail_elevation;

  /// No description provided for @detail_exportGpx.
  ///
  /// In en, this message translates to:
  /// **'Export GPX'**
  String get detail_exportGpx;

  /// No description provided for @detail_trim.
  ///
  /// In en, this message translates to:
  /// **'Trim start / end'**
  String get detail_trim;

  /// No description provided for @detail_deleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete run?'**
  String get detail_deleteTitle;

  /// No description provided for @detail_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get detail_delete;

  /// No description provided for @detail_deleteBody.
  ///
  /// In en, this message translates to:
  /// **'The run and its route will disappear from your phone. This can\'t be undone.'**
  String get detail_deleteBody;

  /// No description provided for @detail_deleteRun.
  ///
  /// In en, this message translates to:
  /// **'Delete run'**
  String get detail_deleteRun;

  /// No description provided for @detail_tooShort.
  ///
  /// In en, this message translates to:
  /// **'Shorter than one split.'**
  String get detail_tooShort;

  /// No description provided for @detail_startMarker.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get detail_startMarker;

  /// No description provided for @detail_finishMarker.
  ///
  /// In en, this message translates to:
  /// **'F'**
  String get detail_finishMarker;

  /// No description provided for @trim_title.
  ///
  /// In en, this message translates to:
  /// **'Trim run'**
  String get trim_title;

  /// No description provided for @trim_keep.
  ///
  /// In en, this message translates to:
  /// **'Keep {from} – {to}'**
  String trim_keep(String from, String to);

  /// No description provided for @trim_save.
  ///
  /// In en, this message translates to:
  /// **'Save trim'**
  String get trim_save;

  /// No description provided for @import_title.
  ///
  /// In en, this message translates to:
  /// **'Import GPX'**
  String get import_title;

  /// No description provided for @import_intro.
  ///
  /// In en, this message translates to:
  /// **'Bring over your history from Strava, Garmin or another app — pick single GPX files or a whole export ZIP. The pacer learns your form from it right away.'**
  String get import_intro;

  /// No description provided for @import_pick.
  ///
  /// In en, this message translates to:
  /// **'Choose files'**
  String get import_pick;

  /// No description provided for @import_pickOther.
  ///
  /// In en, this message translates to:
  /// **'Choose other files'**
  String get import_pickOther;

  /// No description provided for @import_done.
  ///
  /// In en, this message translates to:
  /// **'Imported {count} runs.'**
  String import_done(int count);

  /// No description provided for @import_doneSkipped.
  ///
  /// In en, this message translates to:
  /// **'Imported {count} runs, {skipped} were already in your history.'**
  String import_doneSkipped(int count, int skipped);

  /// No description provided for @import_toImport.
  ///
  /// In en, this message translates to:
  /// **'{count} runs to import'**
  String import_toImport(int count);

  /// No description provided for @import_toImportSkipped.
  ///
  /// In en, this message translates to:
  /// **'{count} runs to import ({skipped} skipped)'**
  String import_toImportSkipped(int count, int skipped);

  /// No description provided for @import_duplicate.
  ///
  /// In en, this message translates to:
  /// **'Already in your history'**
  String get import_duplicate;

  /// No description provided for @import_andMore.
  ///
  /// In en, this message translates to:
  /// **'… and {count} more files'**
  String import_andMore(int count);

  /// No description provided for @import_importN.
  ///
  /// In en, this message translates to:
  /// **'Import {count} runs'**
  String import_importN(int count);

  /// No description provided for @import_paid.
  ///
  /// In en, this message translates to:
  /// **'Import is the only paid thing in Běhánek: a one-time {price}. Exporting your runs is always free.'**
  String import_paid(String price);

  /// No description provided for @import_unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock import — {price}'**
  String import_unlock(String price);

  /// No description provided for @import_restore.
  ///
  /// In en, this message translates to:
  /// **'Restore purchase'**
  String get import_restore;

  /// No description provided for @import_storeUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The store isn\'t available right now.'**
  String get import_storeUnavailable;

  /// No description provided for @import_purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'The purchase didn\'t go through.'**
  String get import_purchaseFailed;

  /// No description provided for @import_errZip.
  ///
  /// In en, this message translates to:
  /// **'The ZIP can\'t be opened.'**
  String get import_errZip;

  /// No description provided for @import_errInvalid.
  ///
  /// In en, this message translates to:
  /// **'The file isn\'t valid GPX.'**
  String get import_errInvalid;

  /// No description provided for @import_errNoPoints.
  ///
  /// In en, this message translates to:
  /// **'The GPX has no track points.'**
  String get import_errNoPoints;

  /// No description provided for @import_errNoTimes.
  ///
  /// In en, this message translates to:
  /// **'The GPX has no timestamps — pace can\'t be calculated.'**
  String get import_errNoTimes;

  /// No description provided for @report_total.
  ///
  /// In en, this message translates to:
  /// **'total'**
  String get report_total;

  /// No description provided for @report_runs.
  ///
  /// In en, this message translates to:
  /// **'runs'**
  String get report_runs;

  /// No description provided for @report_longest.
  ///
  /// In en, this message translates to:
  /// **'longest'**
  String get report_longest;

  /// No description provided for @report_perWeek.
  ///
  /// In en, this message translates to:
  /// **'{unit} per week'**
  String report_perWeek(String unit);

  /// No description provided for @report_paceTrend.
  ///
  /// In en, this message translates to:
  /// **'Pace trend'**
  String get report_paceTrend;

  /// No description provided for @report_fewRuns.
  ///
  /// In en, this message translates to:
  /// **'Not enough runs for a trend.'**
  String get report_fewRuns;

  /// No description provided for @notif_recording.
  ///
  /// In en, this message translates to:
  /// **'Recording your run'**
  String get notif_recording;

  /// No description provided for @notif_channel.
  ///
  /// In en, this message translates to:
  /// **'Run recording'**
  String get notif_channel;

  /// No description provided for @cue_km.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 kilometer} other{{count} kilometers}}'**
  String cue_km(int count);

  /// No description provided for @cue_kmDecimal.
  ///
  /// In en, this message translates to:
  /// **'{value} kilometers'**
  String cue_kmDecimal(String value);

  /// No description provided for @cue_mi.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 mile} other{{count} miles}}'**
  String cue_mi(int count);

  /// No description provided for @cue_miDecimal.
  ///
  /// In en, this message translates to:
  /// **'{value} miles'**
  String cue_miDecimal(String value);

  /// No description provided for @cue_pace.
  ///
  /// In en, this message translates to:
  /// **'pace {clock}'**
  String cue_pace(String clock);

  /// No description provided for @cue_time.
  ///
  /// In en, this message translates to:
  /// **'time {clock}'**
  String cue_time(String clock);

  /// No description provided for @cue_onTarget.
  ///
  /// In en, this message translates to:
  /// **'on target'**
  String get cue_onTarget;

  /// No description provided for @cue_faster.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 second faster} other{{count} seconds faster}}'**
  String cue_faster(int count);

  /// No description provided for @cue_slower.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 second slower} other{{count} seconds slower}}'**
  String cue_slower(int count);

  /// No description provided for @cue_ahead.
  ///
  /// In en, this message translates to:
  /// **'{count} meters ahead'**
  String cue_ahead(int count);

  /// No description provided for @cue_behind.
  ///
  /// In en, this message translates to:
  /// **'{count} meters behind'**
  String cue_behind(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fi',
    'fr',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'kn',
    'ko',
    'ml',
    'mr',
    'ms',
    'nb',
    'nl',
    'or',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sl',
    'sv',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nb':
      return AppLocalizationsNb();
    case 'nl':
      return AppLocalizationsNl();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sv':
      return AppLocalizationsSv();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
