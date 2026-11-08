// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get back => 'Wstecz';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Ustawienia';

  @override
  String get history_empty =>
      'Jeszcze żadnego biegu.\nZałóż buty i stuknij Biegnij.';

  @override
  String get history_run => 'Biegnij';

  @override
  String get history_report => 'Raport';

  @override
  String get history_paceSame => 'tempo bez zmian';

  @override
  String history_paceFaster(int seconds) {
    return 'o $seconds s szybciej';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'o $seconds s wolniej';
  }

  @override
  String get settings_title => 'Ustawienia';

  @override
  String get settings_units => 'Jednostki';

  @override
  String get settings_voiceLanguage => 'Język głosu';

  @override
  String get settings_cues => 'Komunikaty';

  @override
  String get settings_cueVoice => 'Głos';

  @override
  String get settings_cueTones => 'Sygnały';

  @override
  String get settings_cueBoth => 'Oba';

  @override
  String get settings_cueOff => 'Brak';

  @override
  String get settings_tonesHelp =>
      'Sygnały: dwa krótkie = przyspiesz, jeden długi = zwolnij, cisza = zgodnie z planem.';

  @override
  String get settings_cueInterval => 'Odstęp komunikatów';

  @override
  String get settings_pacerGoal => 'Cel według formy';

  @override
  String get settings_pacerHold => 'Utrzymaj';

  @override
  String get settings_pacerImprove => '2% szybciej';

  @override
  String get settings_autoPause => 'Auto-pauza przy zatrzymaniu';

  @override
  String get settings_metronome => 'Metronom kadencji';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps kr./min';
  }

  @override
  String get settings_mapLayer => 'Podkład mapy';

  @override
  String get settings_backup => 'Kopia wszystkich biegów (ZIP z GPX)';

  @override
  String get settings_privacy =>
      'Żadne dane nie opuszczają telefonu. Běhánek nie ma konta, serwera, analityki ani reklam.';

  @override
  String get map_satellite => 'Satelita';

  @override
  String get map_topo => 'Turystyczna';

  @override
  String get run_title => 'Bieg';

  @override
  String get run_locationOff =>
      'Lokalizacja w telefonie jest wyłączona. Bez niej nie zapiszę biegu.';

  @override
  String get run_locationNeeded =>
      'Běhánek potrzebuje lokalizacji „podczas używania aplikacji”, żeby zapisać trasę. Nigdzie jej nie wysyła, zostaje w telefonie.';

  @override
  String get run_allowLocation => 'Zezwól na lokalizację';

  @override
  String get run_gpsSearching => 'Szukam GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS świetny (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS dobry (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS słaby (±$meters m) — poczekaj chwilę';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Duch: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: na razie za mało biegów — podam tylko czas i dystans';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: twoja forma z $count biegów';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: twoja forma z $count biegów, 2% szybciej';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Duch';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Nie masz jeszcze biegu stąd — duch potrzebuje biegu ze startem w promieniu 300 m.';

  @override
  String get run_cancel => 'Anuluj';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m przed duchem';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m za duchem';
  }

  @override
  String run_onTarget(String pace) {
    return 'zgodnie z planem ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s szybciej niż $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s wolniej niż $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUZA';

  @override
  String get run_paused => 'PAUZA';

  @override
  String get run_weakGps => 'Słaby sygnał GPS';

  @override
  String get run_resume => 'Wznów';

  @override
  String get run_pause => 'Pauza';

  @override
  String get run_numbers => 'Liczby';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Czekam na lokalizację…';

  @override
  String get run_stopped => 'Bieg zatrzymany';

  @override
  String get run_save => 'Zapisz';

  @override
  String get run_continue => 'Biegnij dalej';

  @override
  String get run_discardTitle => 'Odrzucić bieg?';

  @override
  String get run_discard => 'Odrzuć';

  @override
  String get run_discardBody => 'Bieg nie zostanie zapisany.';

  @override
  String get run_slideToStop => 'Przesuń, by zatrzymać';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'czas';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'średnia';

  @override
  String get stat_distance => 'dystans';

  @override
  String get stat_elevation => 'przewyższenie m';

  @override
  String get detail_imported => 'Zaimportowano z GPX';

  @override
  String get detail_splits => 'Międzyczasy';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Wysokość';

  @override
  String get detail_exportGpx => 'Eksportuj GPX';

  @override
  String get detail_trim => 'Przytnij początek / koniec';

  @override
  String get detail_deleteTitle => 'Usunąć bieg?';

  @override
  String get detail_delete => 'Usuń';

  @override
  String get detail_deleteBody =>
      'Bieg i jego trasa znikną z telefonu. Tego nie da się cofnąć.';

  @override
  String get detail_deleteRun => 'Usuń bieg';

  @override
  String get detail_tooShort => 'Krótszy niż jeden odcinek.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Przytnij bieg';

  @override
  String trim_keep(String from, String to) {
    return 'Zostaw $from – $to';
  }

  @override
  String get trim_save => 'Zapisz przycięcie';

  @override
  String get import_title => 'Import GPX';

  @override
  String get import_intro =>
      'Przenieś historię ze Stravy, Garmina albo innej aplikacji — wybierz pojedyncze pliki GPX albo cały ZIP z eksportem. Pacer od razu nauczy się z niej twojej formy.';

  @override
  String get import_pick => 'Wybierz pliki';

  @override
  String get import_pickOther => 'Wybierz inne';

  @override
  String import_done(int count) {
    return 'Zaimportowane biegi: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Zaimportowane biegi: $count, już w historii: $skipped.';
  }

  @override
  String import_toImport(int count) {
    return 'Biegi do importu: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Biegi do importu: $count (pominięte: $skipped)';
  }

  @override
  String get import_duplicate => 'Już jest w historii';

  @override
  String import_andMore(int count) {
    return '… i dalsze pliki: $count';
  }

  @override
  String import_importN(int count) {
    return 'Importuj ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Import to jedyna płatna rzecz w Běhánku: jednorazowo $price. Eksport twoich biegów jest zawsze darmowy.';
  }

  @override
  String import_unlock(String price) {
    return 'Odblokuj import — $price';
  }

  @override
  String get import_restore => 'Przywróć zakup';

  @override
  String get import_storeUnavailable => 'Sklep jest teraz niedostępny.';

  @override
  String get import_purchaseFailed => 'Zakup się nie udał.';

  @override
  String get import_errZip => 'Nie da się otworzyć ZIP-a.';

  @override
  String get import_errInvalid => 'Plik nie jest prawidłowym GPX.';

  @override
  String get import_errNoPoints => 'GPX nie zawiera żadnych punktów trasy.';

  @override
  String get import_errNoTimes =>
      'GPX nie ma punktów z czasem — nie da się policzyć tempa.';

  @override
  String get report_total => 'łącznie';

  @override
  String get report_runs => 'biegi';

  @override
  String get report_longest => 'najdłuższy';

  @override
  String report_perWeek(String unit) {
    return '$unit na tydzień';
  }

  @override
  String get report_paceTrend => 'Trend tempa';

  @override
  String get report_fewRuns => 'Za mało biegów na trend.';

  @override
  String get notif_recording => 'Zapisuję bieg';

  @override
  String get notif_channel => 'Zapis biegu';

  @override
  String get notif_liveChannel => 'Bieg na żywo';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometra',
      many: '$count kilometrów',
      few: '$count kilometry',
      one: '1 kilometr',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometra';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mili',
      many: '$count mil',
      few: '$count mile',
      one: '1 mila',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mili';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'czas $clock';
  }

  @override
  String get cue_onTarget => 'zgodnie z planem';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekundy szybciej',
      many: 'o $count sekund szybciej',
      few: 'o $count sekundy szybciej',
      one: 'o sekundę szybciej',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'o $count sekundy wolniej',
      many: 'o $count sekund wolniej',
      few: 'o $count sekundy wolniej',
      one: 'o sekundę wolniej',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metra z przodu',
      many: '$count metrów z przodu',
      few: '$count metry z przodu',
      one: '1 metr z przodu',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metra z tyłu',
      many: '$count metrów z tyłu',
      few: '$count metry z tyłu',
      one: '1 metr z tyłu',
    );
    return '$_temp0';
  }
}
