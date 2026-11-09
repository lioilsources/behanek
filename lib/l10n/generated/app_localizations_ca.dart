// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get back => 'Enrere';

  @override
  String get history_import => 'Importa';

  @override
  String get history_settings => 'Configuració';

  @override
  String get history_empty =>
      'Encara no hi ha cap cursa.\nCalça\'t les sabatilles i toca Corre.';

  @override
  String get history_run => 'Corre';

  @override
  String get history_report => 'Informe';

  @override
  String get history_paceSame => 'mateix ritme';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s més ràpid';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s més lent';
  }

  @override
  String get settings_title => 'Configuració';

  @override
  String get settings_units => 'Unitats';

  @override
  String get settings_voiceLanguage => 'Idioma de la veu';

  @override
  String get settings_cues => 'Avisos';

  @override
  String get settings_cueVoice => 'Veu';

  @override
  String get settings_cueTones => 'Tons';

  @override
  String get settings_cueBoth => 'Tots dos';

  @override
  String get settings_cueOff => 'Cap';

  @override
  String get settings_tonesHelp =>
      'Tons: dos de curts = accelera, un de llarg = afluixa, silenci = al ritme.';

  @override
  String get settings_cueInterval => 'Interval dels avisos';

  @override
  String get settings_pacerGoal => 'Objectiu segons la teva forma';

  @override
  String get settings_pacerHold => 'Només mantenir-la';

  @override
  String get settings_pacerImprove => 'Un 2 % més ràpid';

  @override
  String get settings_autoPause => 'Pausa automàtica quan t\'aturis';

  @override
  String get settings_metronome => 'Metrònom de cadència';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps passes/min';
  }

  @override
  String get settings_mapLayer => 'Mapa';

  @override
  String get settings_backup => 'Còpia de totes les curses (ZIP de GPX)';

  @override
  String get settings_privacy =>
      'Cap dada surt mai del teu telèfon. Běhánek no té compte, ni servidor, ni analítica, ni anuncis.';

  @override
  String get map_satellite => 'Satèl·lit';

  @override
  String get map_topo => 'Muntanya';

  @override
  String get run_title => 'Cursa';

  @override
  String get run_locationOff =>
      'La ubicació està desactivada al telèfon. Sense ella no puc enregistrar la cursa.';

  @override
  String get run_locationNeeded =>
      'Běhánek necessita la ubicació «mentre s\'utilitza l\'app» per enregistrar la teva ruta. No l\'envia enlloc; es queda al teu telèfon.';

  @override
  String get run_allowLocation => 'Permet la ubicació';

  @override
  String get run_gpsSearching => 'Cercant GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excel·lent (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bo (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS feble (±$meters m) — espera un moment';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantasma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Llebre: encara no hi ha prou curses — només anunciaré temps i distància';

  @override
  String run_pacerForm(int count) {
    return 'Llebre: la teva forma de $count curses';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Llebre: la teva forma de $count curses, un 2 % més ràpid';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Fantasma';

  @override
  String get run_start => 'COMENÇA';

  @override
  String get run_noGhost =>
      'Encara no has corregut des d\'aquí — el fantasma necessita una cursa que comencés a menys de 300 m.';

  @override
  String get run_cancel => 'Cancel·la';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m per davant del fantasma';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m per darrere del fantasma';
  }

  @override
  String run_onTarget(String pace) {
    return 'al ritme ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s més ràpid que $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s més lent que $pace';
  }

  @override
  String get run_autoPaused => 'PAUSA AUTOMÀTICA';

  @override
  String get run_paused => 'EN PAUSA';

  @override
  String get run_weakGps => 'Senyal GPS feble';

  @override
  String get run_resume => 'Reprèn';

  @override
  String get run_pause => 'Pausa';

  @override
  String get run_numbers => 'Xifres';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Esperant la ubicació…';

  @override
  String get run_stopped => 'Cursa aturada';

  @override
  String get run_save => 'Desa';

  @override
  String get run_continue => 'Continua corrent';

  @override
  String get run_discardTitle => 'Descartar la cursa?';

  @override
  String get run_discard => 'Descarta';

  @override
  String get run_discardBody => 'La cursa no es desarà.';

  @override
  String get run_slideToStop => 'Llisca per aturar';

  @override
  String get run_stop => 'PARA';

  @override
  String get stat_time => 'temps';

  @override
  String get stat_pace => 'ritme';

  @override
  String get stat_average => 'mitjana';

  @override
  String get stat_distance => 'distància';

  @override
  String get stat_elevation => 'desnivell m';

  @override
  String get detail_imported => 'Importada de GPX';

  @override
  String get detail_splits => 'Parcials';

  @override
  String get detail_pace => 'Ritme';

  @override
  String get detail_elevation => 'Altitud';

  @override
  String get detail_exportGpx => 'Exporta GPX';

  @override
  String get detail_trim => 'Retalla inici / final';

  @override
  String get detail_deleteTitle => 'Eliminar la cursa?';

  @override
  String get detail_delete => 'Elimina';

  @override
  String get detail_deleteBody =>
      'La cursa i la seva ruta desapareixeran del telèfon. No es pot desfer.';

  @override
  String get detail_deleteRun => 'Elimina la cursa';

  @override
  String get detail_tooShort => 'Més curta que un parcial.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'A';

  @override
  String get trim_title => 'Retalla la cursa';

  @override
  String trim_keep(String from, String to) {
    return 'Conserva $from – $to';
  }

  @override
  String get trim_save => 'Desa el retall';

  @override
  String get import_title => 'Importa GPX';

  @override
  String get import_intro =>
      'Porta el teu historial de Strava, Garmin o una altra app — tria fitxers GPX solts o un ZIP d\'exportació sencer. La llebre aprèn la teva forma a l\'instant.';

  @override
  String get import_pick => 'Tria fitxers';

  @override
  String get import_pickOther => 'Tria altres fitxers';

  @override
  String import_done(int count) {
    return 'S\'han importat $count curses.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'S\'han importat $count curses; $skipped ja eren a l\'historial.';
  }

  @override
  String import_toImport(int count) {
    return '$count curses per importar';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count curses per importar ($skipped omeses)';
  }

  @override
  String get import_duplicate => 'Ja és a l\'historial';

  @override
  String import_andMore(int count) {
    return '… i $count fitxers més';
  }

  @override
  String import_importN(int count) {
    return 'Importa $count curses';
  }

  @override
  String import_paid(String price) {
    return 'La importació és l\'única cosa de pagament de Běhánek: un sol pagament de $price. Exportar les curses sempre és gratuït.';
  }

  @override
  String import_unlock(String price) {
    return 'Desbloqueja la importació — $price';
  }

  @override
  String get import_restore => 'Restaura la compra';

  @override
  String get import_storeUnavailable =>
      'La botiga no està disponible ara mateix.';

  @override
  String get import_purchaseFailed => 'La compra no s\'ha completat.';

  @override
  String get import_errZip => 'No es pot obrir el ZIP.';

  @override
  String get import_errInvalid => 'El fitxer no és un GPX vàlid.';

  @override
  String get import_errNoPoints => 'El GPX no té punts de traça.';

  @override
  String get import_errNoTimes =>
      'El GPX no té marques de temps — no es pot calcular el ritme.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'curses';

  @override
  String get report_longest => 'la més llarga';

  @override
  String report_perWeek(String unit) {
    return '$unit per setmana';
  }

  @override
  String get report_paceTrend => 'Tendència del ritme';

  @override
  String get report_fewRuns => 'No hi ha prou curses per a una tendència.';

  @override
  String get notif_recording => 'Enregistrant la teva cursa';

  @override
  String get notif_channel => 'Enregistrament de curses';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count quilòmetres',
      one: '1 quilòmetre',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value quilòmetres';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count milles',
      one: '1 milla',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value milles';
  }

  @override
  String cue_pace(String clock) {
    return 'ritme $clock';
  }

  @override
  String cue_time(String clock) {
    return 'temps $clock';
  }

  @override
  String get cue_onTarget => 'al ritme';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segons més ràpid',
      one: '1 segon més ràpid',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segons més lent',
      one: '1 segon més lent',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count metres per davant';
  }

  @override
  String cue_behind(int count) {
    return '$count metres per darrere';
  }
}
