// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get back => 'Πίσω';

  @override
  String get history_import => 'Εισαγωγή';

  @override
  String get history_settings => 'Ρυθμίσεις';

  @override
  String get history_empty =>
      'Δεν υπάρχουν ακόμα τρεξίματα.\nΦόρεσε τα παπούτσια σου και πάτα Τρέξε.';

  @override
  String get history_run => 'Τρέξε';

  @override
  String get history_report => 'Αναφορά';

  @override
  String get history_paceSame => 'ίδιος ρυθμός';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds δ. ταχύτερα';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds δ. πιο αργά';
  }

  @override
  String get settings_title => 'Ρυθμίσεις';

  @override
  String get settings_units => 'Μονάδες';

  @override
  String get settings_voiceLanguage => 'Γλώσσα φωνής';

  @override
  String get settings_cues => 'Ανακοινώσεις';

  @override
  String get settings_cueVoice => 'Φωνή';

  @override
  String get settings_cueTones => 'Ήχοι';

  @override
  String get settings_cueBoth => 'Και τα δύο';

  @override
  String get settings_cueOff => 'Κανένα';

  @override
  String get settings_tonesHelp =>
      'Ήχοι: δύο σύντομοι = επιτάχυνε, ένας μακρύς = επιβράδυνε, σιωπή = στον στόχο.';

  @override
  String get settings_cueInterval => 'Διάστημα ανακοινώσεων';

  @override
  String get settings_pacerGoal => 'Στόχος από τη φόρμα σου';

  @override
  String get settings_pacerHold => 'Απλώς κράτα τη';

  @override
  String get settings_pacerImprove => '2 % ταχύτερα';

  @override
  String get settings_autoPause => 'Αυτόματη παύση όταν σταματάς';

  @override
  String get settings_metronome => 'Μετρονόμος βηματισμού';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps βήματα/λεπτό';
  }

  @override
  String get settings_mapLayer => 'Χάρτης';

  @override
  String get settings_backup => 'Αντίγραφο όλων των τρεξιμάτων (ZIP με GPX)';

  @override
  String get settings_privacy =>
      'Κανένα δεδομένο δεν φεύγει ποτέ από το τηλέφωνό σου. Το Běhánek δεν έχει λογαριασμό, διακομιστή, αναλυτικά στοιχεία ούτε διαφημίσεις.';

  @override
  String get map_satellite => 'Δορυφόρος';

  @override
  String get map_topo => 'Ύπαιθρος';

  @override
  String get run_title => 'Τρέξιμο';

  @override
  String get run_locationOff =>
      'Η τοποθεσία είναι απενεργοποιημένη στο τηλέφωνο. Χωρίς αυτήν δεν μπορώ να καταγράψω το τρέξιμο.';

  @override
  String get run_locationNeeded =>
      'Το Běhánek χρειάζεται την τοποθεσία «κατά τη χρήση της εφαρμογής» για να καταγράψει τη διαδρομή σου. Δεν τη στέλνει πουθενά· μένει στο τηλέφωνό σου.';

  @override
  String get run_allowLocation => 'Να επιτρέπεται η τοποθεσία';

  @override
  String get run_gpsSearching => 'Αναζήτηση GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS εξαιρετικό (±$meters μ.)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS καλό (±$meters μ.)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS αδύναμο (±$meters μ.) — περίμενε λίγο';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Φάντασμα: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: δεν υπάρχουν ακόμα αρκετά τρεξίματα — θα ανακοινώνω μόνο χρόνο και απόσταση';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: η φόρμα σου από $count τρεξίματα';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: η φόρμα σου από $count τρεξίματα, 2 % ταχύτερα';
  }

  @override
  String get run_form => 'Φόρμα';

  @override
  String get run_ghost => 'Φάντασμα';

  @override
  String get run_start => 'ΕΝΑΡΞΗ';

  @override
  String get run_noGhost =>
      'Δεν έχεις τρέξει ακόμα από εδώ — το φάντασμα χρειάζεται τρέξιμο που ξεκίνησε σε απόσταση έως 300 μ.';

  @override
  String get run_cancel => 'Ακύρωση';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters μ. μπροστά από το φάντασμα';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters μ. πίσω από το φάντασμα';
  }

  @override
  String run_onTarget(String pace) {
    return 'στον στόχο ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds δ. ταχύτερα από $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds δ. πιο αργά από $pace';
  }

  @override
  String get run_autoPaused => 'ΑΥΤΟΜΑΤΗ ΠΑΥΣΗ';

  @override
  String get run_paused => 'ΣΕ ΠΑΥΣΗ';

  @override
  String get run_weakGps => 'Αδύναμο σήμα GPS';

  @override
  String get run_resume => 'Συνέχεια';

  @override
  String get run_pause => 'Παύση';

  @override
  String get run_numbers => 'Νούμερα';

  @override
  String get run_map => 'Χάρτης';

  @override
  String get run_waitingForLocation => 'Αναμονή για τοποθεσία…';

  @override
  String get run_stopped => 'Το τρέξιμο σταμάτησε';

  @override
  String get run_save => 'Αποθήκευση';

  @override
  String get run_continue => 'Συνέχισε να τρέχεις';

  @override
  String get run_discardTitle => 'Απόρριψη τρεξίματος;';

  @override
  String get run_discard => 'Απόρριψη';

  @override
  String get run_discardBody => 'Το τρέξιμο δεν θα αποθηκευτεί.';

  @override
  String get run_slideToStop => 'Σύρε για διακοπή';

  @override
  String get run_stop => 'ΣΤΟΠ';

  @override
  String get stat_time => 'χρόνος';

  @override
  String get stat_pace => 'ρυθμός';

  @override
  String get stat_average => 'μέσος όρος';

  @override
  String get stat_distance => 'απόσταση';

  @override
  String get stat_elevation => 'ανάβαση μ.';

  @override
  String get detail_imported => 'Εισαγωγή από GPX';

  @override
  String get detail_splits => 'Ενδιάμεσοι';

  @override
  String get detail_pace => 'Ρυθμός';

  @override
  String get detail_elevation => 'Υψόμετρο';

  @override
  String get detail_exportGpx => 'Εξαγωγή GPX';

  @override
  String get detail_trim => 'Περικοπή αρχής / τέλους';

  @override
  String get detail_deleteTitle => 'Διαγραφή τρεξίματος;';

  @override
  String get detail_delete => 'Διαγραφή';

  @override
  String get detail_deleteBody =>
      'Το τρέξιμο και η διαδρομή του θα εξαφανιστούν από το τηλέφωνο. Δεν μπορεί να αναιρεθεί.';

  @override
  String get detail_deleteRun => 'Διαγραφή τρεξίματος';

  @override
  String get detail_tooShort => 'Μικρότερο από ένα ενδιάμεσο.';

  @override
  String get detail_startMarker => 'Α';

  @override
  String get detail_finishMarker => 'Τ';

  @override
  String get trim_title => 'Περικοπή τρεξίματος';

  @override
  String trim_keep(String from, String to) {
    return 'Διατήρηση $from – $to';
  }

  @override
  String get trim_save => 'Αποθήκευση περικοπής';

  @override
  String get import_title => 'Εισαγωγή GPX';

  @override
  String get import_intro =>
      'Φέρε το ιστορικό σου από Strava, Garmin ή άλλη εφαρμογή — διάλεξε μεμονωμένα αρχεία GPX ή ολόκληρο ZIP εξαγωγής. Ο pacer μαθαίνει αμέσως τη φόρμα σου.';

  @override
  String get import_pick => 'Επιλογή αρχείων';

  @override
  String get import_pickOther => 'Επιλογή άλλων αρχείων';

  @override
  String import_done(int count) {
    return 'Εισήχθησαν $count τρεξίματα.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Εισήχθησαν $count τρεξίματα, $skipped υπήρχαν ήδη στο ιστορικό.';
  }

  @override
  String import_toImport(int count) {
    return '$count τρεξίματα για εισαγωγή';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count τρεξίματα για εισαγωγή ($skipped παραλείφθηκαν)';
  }

  @override
  String get import_duplicate => 'Υπάρχει ήδη στο ιστορικό';

  @override
  String import_andMore(int count) {
    return '… και $count ακόμα αρχεία';
  }

  @override
  String import_importN(int count) {
    return 'Εισαγωγή $count τρεξιμάτων';
  }

  @override
  String import_paid(String price) {
    return 'Η εισαγωγή είναι το μόνο επί πληρωμή στο Běhánek: εφάπαξ $price. Η εξαγωγή των τρεξιμάτων είναι πάντα δωρεάν.';
  }

  @override
  String import_unlock(String price) {
    return 'Ξεκλείδωμα εισαγωγής — $price';
  }

  @override
  String get import_restore => 'Επαναφορά αγοράς';

  @override
  String get import_storeUnavailable =>
      'Το κατάστημα δεν είναι διαθέσιμο αυτή τη στιγμή.';

  @override
  String get import_purchaseFailed => 'Η αγορά δεν ολοκληρώθηκε.';

  @override
  String get import_errZip => 'Το ZIP δεν ανοίγει.';

  @override
  String get import_errInvalid => 'Το αρχείο δεν είναι έγκυρο GPX.';

  @override
  String get import_errNoPoints => 'Το GPX δεν έχει σημεία διαδρομής.';

  @override
  String get import_errNoTimes =>
      'Το GPX δεν έχει χρονοσημάνσεις — ο ρυθμός δεν μπορεί να υπολογιστεί.';

  @override
  String get report_total => 'σύνολο';

  @override
  String get report_runs => 'τρεξίματα';

  @override
  String get report_longest => 'μεγαλύτερο';

  @override
  String report_perWeek(String unit) {
    return '$unit ανά εβδομάδα';
  }

  @override
  String get report_paceTrend => 'Τάση ρυθμού';

  @override
  String get report_fewRuns => 'Δεν υπάρχουν αρκετά τρεξίματα για τάση.';

  @override
  String get notif_recording => 'Καταγραφή του τρεξίματός σου';

  @override
  String get notif_channel => 'Καταγραφή τρεξίματος';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count χιλιόμετρα',
      one: '1 χιλιόμετρο',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value χιλιόμετρα';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count μίλια',
      one: '1 μίλι',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value μίλια';
  }

  @override
  String cue_pace(String clock) {
    return 'ρυθμός $clock';
  }

  @override
  String cue_time(String clock) {
    return 'χρόνος $clock';
  }

  @override
  String get cue_onTarget => 'στον στόχο';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count δευτερόλεπτα ταχύτερα',
      one: '1 δευτερόλεπτο ταχύτερα',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count δευτερόλεπτα πιο αργά',
      one: '1 δευτερόλεπτο πιο αργά',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count μέτρα μπροστά';
  }

  @override
  String cue_behind(int count) {
    return '$count μέτρα πίσω';
  }
}
