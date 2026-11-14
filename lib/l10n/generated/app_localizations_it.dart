// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get back => 'Indietro';

  @override
  String get history_import => 'Importa';

  @override
  String get history_settings => 'Impostazioni';

  @override
  String get history_empty =>
      'Ancora nessuna corsa.\nMettiti le scarpe e tocca Corri.';

  @override
  String get history_run => 'Corri';

  @override
  String get history_report => 'Report';

  @override
  String get history_paceSame => 'stesso passo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s più veloce';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s più lento';
  }

  @override
  String get settings_title => 'Impostazioni';

  @override
  String get settings_units => 'Unità';

  @override
  String get settings_voiceLanguage => 'Lingua della voce';

  @override
  String get settings_cues => 'Annunci';

  @override
  String get settings_cueVoice => 'Voce';

  @override
  String get settings_cueTones => 'Toni';

  @override
  String get settings_cueBoth => 'Entrambi';

  @override
  String get settings_cueOff => 'Nessuno';

  @override
  String get settings_tonesHelp =>
      'Toni: due brevi = accelera, uno lungo = rallenta, silenzio = sei in linea.';

  @override
  String get settings_cueInterval => 'Intervallo degli annunci';

  @override
  String get settings_pacerGoal => 'Obiettivo dalla tua forma';

  @override
  String get settings_pacerHold => 'Mantieni';

  @override
  String get settings_pacerImprove => '2 % più veloce';

  @override
  String get settings_autoPause => 'Pausa automatica quando ti fermi';

  @override
  String get settings_metronome => 'Metronomo di cadenza';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps passi/min';
  }

  @override
  String get settings_mapLayer => 'Mappa';

  @override
  String get settings_backup => 'Backup di tutte le corse (ZIP di GPX)';

  @override
  String get settings_privacy =>
      'Corse, percorsi e posizione restano sul tuo telefono. Běhánek non ha account né pubblicità e non usa analisi di terze parti.';

  @override
  String get settings_stats => 'Statistiche d\'uso anonime';

  @override
  String get settings_statsHelp =>
      'Quali schermate e funzioni vengono usate, mai la tua posizione o i tuoi percorsi. Aiuta a migliorare Běhánek.';

  @override
  String get map_satellite => 'Satellite';

  @override
  String get map_topo => 'Topografica';

  @override
  String get run_title => 'Corsa';

  @override
  String get run_locationOff =>
      'La posizione è disattivata sul telefono. Senza non posso registrare la corsa.';

  @override
  String get run_locationNeeded =>
      'Běhánek ha bisogno della posizione «mentre usi l\'app» per registrare il percorso. Non la invia da nessuna parte: resta sul tuo telefono.';

  @override
  String get run_allowLocation => 'Consenti posizione';

  @override
  String get run_gpsSearching => 'Cerco il GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ottimo (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS buono (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS debole (±$meters m) — aspetta un attimo';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantasma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Lepre: ancora poche corse — annuncerò solo tempo e distanza';

  @override
  String run_pacerForm(int count) {
    return 'Lepre: la tua forma da $count corse';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Lepre: la tua forma da $count corse, 2 % più veloce';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Fantasma';

  @override
  String get run_start => 'VIA';

  @override
  String get run_noGhost =>
      'Da qui non hai ancora corso — il fantasma ha bisogno di una corsa partita entro 300 m.';

  @override
  String get run_cancel => 'Annulla';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m davanti al fantasma';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m dietro al fantasma';
  }

  @override
  String run_onTarget(String pace) {
    return 'in linea ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s più veloce di $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s più lento di $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUSA';

  @override
  String get run_paused => 'IN PAUSA';

  @override
  String get run_weakGps => 'Segnale GPS debole';

  @override
  String get run_resume => 'Riprendi';

  @override
  String get run_pause => 'Pausa';

  @override
  String get run_numbers => 'Dati';

  @override
  String get run_map => 'Mappa';

  @override
  String get run_waitingForLocation => 'In attesa della posizione…';

  @override
  String get run_stopped => 'Corsa fermata';

  @override
  String get run_save => 'Salva';

  @override
  String get run_continue => 'Continua a correre';

  @override
  String get run_discardTitle => 'Scartare la corsa?';

  @override
  String get run_discard => 'Scarta';

  @override
  String get run_discardBody => 'La corsa non verrà salvata.';

  @override
  String get run_slideToStop => 'Scorri per fermare';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'tempo';

  @override
  String get stat_pace => 'passo';

  @override
  String get stat_average => 'media';

  @override
  String get stat_distance => 'distanza';

  @override
  String get stat_elevation => 'dislivello m';

  @override
  String get detail_imported => 'Importata da GPX';

  @override
  String get detail_splits => 'Parziali';

  @override
  String get detail_pace => 'Passo';

  @override
  String get detail_elevation => 'Altitudine';

  @override
  String get detail_exportGpx => 'Esporta GPX';

  @override
  String get detail_trim => 'Taglia inizio / fine';

  @override
  String get detail_deleteTitle => 'Eliminare la corsa?';

  @override
  String get detail_delete => 'Elimina';

  @override
  String get detail_deleteBody =>
      'La corsa e il suo percorso spariranno dal telefono. Non si può annullare.';

  @override
  String get detail_deleteRun => 'Elimina corsa';

  @override
  String get detail_tooShort => 'Più corta di un parziale.';

  @override
  String get detail_startMarker => 'P';

  @override
  String get detail_finishMarker => 'A';

  @override
  String get trim_title => 'Taglia la corsa';

  @override
  String trim_keep(String from, String to) {
    return 'Tieni $from – $to';
  }

  @override
  String get trim_save => 'Salva il taglio';

  @override
  String get import_title => 'Importa GPX';

  @override
  String get import_intro =>
      'Porta qui la tua cronologia da Strava, Garmin o un\'altra app — scegli singoli file GPX o un intero ZIP di esportazione. La lepre impara subito la tua forma.';

  @override
  String get import_pick => 'Scegli file';

  @override
  String get import_pickOther => 'Scegli altri file';

  @override
  String import_done(int count) {
    return '$count corse importate.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count corse importate, $skipped erano già nella cronologia.';
  }

  @override
  String import_toImport(int count) {
    return '$count corse da importare';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count corse da importare ($skipped saltate)';
  }

  @override
  String get import_duplicate => 'Già nella cronologia';

  @override
  String import_andMore(int count) {
    return '… e altri $count file';
  }

  @override
  String import_importN(int count) {
    return 'Importa $count corse';
  }

  @override
  String import_paid(String price) {
    return 'L\'importazione è l\'unica cosa a pagamento in Běhánek: $price una volta sola. Esportare le tue corse è sempre gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Sblocca l\'importazione — $price';
  }

  @override
  String get import_restore => 'Ripristina acquisto';

  @override
  String get import_storeUnavailable =>
      'Lo store non è disponibile in questo momento.';

  @override
  String get import_purchaseFailed => 'L\'acquisto non è andato a buon fine.';

  @override
  String get import_errZip => 'Impossibile aprire lo ZIP.';

  @override
  String get import_errInvalid => 'Il file non è un GPX valido.';

  @override
  String get import_errNoPoints => 'Il GPX non contiene punti traccia.';

  @override
  String get import_errNoTimes =>
      'Il GPX non ha orari — impossibile calcolare il passo.';

  @override
  String get report_total => 'totale';

  @override
  String get report_runs => 'corse';

  @override
  String get report_longest => 'la più lunga';

  @override
  String report_perWeek(String unit) {
    return '$unit a settimana';
  }

  @override
  String get report_paceTrend => 'Andamento del passo';

  @override
  String get report_fewRuns => 'Troppe poche corse per un andamento.';

  @override
  String get notif_recording => 'Sto registrando la corsa';

  @override
  String get notif_channel => 'Registrazione corsa';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chilometri',
      many: '$count di chilometri',
      one: '1 chilometro',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value chilometri';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count miglia',
      many: '$count di miglia',
      one: '1 miglio',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value miglia';
  }

  @override
  String cue_pace(String clock) {
    return 'passo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tempo $clock';
  }

  @override
  String get cue_onTarget => 'in linea';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count secondi più veloce',
      many: '$count di secondi più veloce',
      one: '1 secondo più veloce',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count secondi più lento',
      many: '$count di secondi più lento',
      one: '1 secondo più lento',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metri avanti',
      many: '$count di metri avanti',
      one: '1 metro avanti',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metri indietro',
      many: '$count di metri indietro',
      one: '1 metro indietro',
    );
    return '$_temp0';
  }
}
