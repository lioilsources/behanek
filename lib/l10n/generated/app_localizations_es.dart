// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get back => 'Atrás';

  @override
  String get history_import => 'Importar';

  @override
  String get history_settings => 'Ajustes';

  @override
  String get history_empty =>
      'Aún no hay carreras.\nPonte las zapatillas y pulsa Correr.';

  @override
  String get history_run => 'Correr';

  @override
  String get history_report => 'Informe';

  @override
  String get history_paceSame => 'mismo ritmo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s más rápido';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s más lento';
  }

  @override
  String get settings_title => 'Ajustes';

  @override
  String get settings_units => 'Unidades';

  @override
  String get settings_voiceLanguage => 'Idioma de la voz';

  @override
  String get settings_cues => 'Avisos';

  @override
  String get settings_cueVoice => 'Voz';

  @override
  String get settings_cueTones => 'Tonos';

  @override
  String get settings_cueBoth => 'Ambos';

  @override
  String get settings_cueOff => 'Nada';

  @override
  String get settings_tonesHelp =>
      'Tonos: dos cortos = acelera, uno largo = frena, silencio = vas en ritmo.';

  @override
  String get settings_cueInterval => 'Intervalo de avisos';

  @override
  String get settings_pacerGoal => 'Objetivo según tu forma';

  @override
  String get settings_pacerHold => 'Mantener';

  @override
  String get settings_pacerImprove => '2 % más rápido';

  @override
  String get settings_autoPause => 'Pausa automática al pararte';

  @override
  String get settings_metronome => 'Metrónomo de cadencia';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps pasos/min';
  }

  @override
  String get settings_mapLayer => 'Mapa';

  @override
  String get settings_backup => 'Copia de todas las carreras (ZIP de GPX)';

  @override
  String get settings_privacy =>
      'Tus carreras, rutas y ubicación se quedan en tu móvil. Běhánek no tiene cuenta ni anuncios y no usa analíticas de terceros.';

  @override
  String get settings_stats => 'Estadísticas de uso anónimas';

  @override
  String get settings_statsHelp =>
      'Qué pantallas y funciones se usan, nunca tu ubicación ni tus rutas. Ayuda a mejorar Běhánek.';

  @override
  String get map_satellite => 'Satélite';

  @override
  String get map_topo => 'Topográfico';

  @override
  String get run_title => 'Carrera';

  @override
  String get run_locationOff =>
      'La ubicación está desactivada en tu móvil. Sin ella no puedo grabar la carrera.';

  @override
  String get run_locationNeeded =>
      'Běhánek necesita la ubicación «mientras se usa la app» para grabar tu ruta. No la envía a ningún sitio; se queda en tu móvil.';

  @override
  String get run_allowLocation => 'Permitir ubicación';

  @override
  String get run_gpsSearching => 'Buscando GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excelente (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bueno (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS débil (±$meters m) — espera un momento';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantasma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Liebre: aún hay pocas carreras — solo diré tiempo y distancia';

  @override
  String run_pacerForm(int count) {
    return 'Liebre: tu forma de $count carreras';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Liebre: tu forma de $count carreras, un 2 % más rápido';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Fantasma';

  @override
  String get run_start => 'INICIAR';

  @override
  String get run_noGhost =>
      'Aún no has corrido desde aquí — el fantasma necesita una carrera que empezara a menos de 300 m.';

  @override
  String get run_cancel => 'Cancelar';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m por delante del fantasma';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m por detrás del fantasma';
  }

  @override
  String run_onTarget(String pace) {
    return 'en ritmo ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s más rápido que $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s más lento que $pace';
  }

  @override
  String get run_autoPaused => 'AUTOPAUSA';

  @override
  String get run_paused => 'EN PAUSA';

  @override
  String get run_weakGps => 'Señal GPS débil';

  @override
  String get run_resume => 'Reanudar';

  @override
  String get run_pause => 'Pausa';

  @override
  String get run_numbers => 'Datos';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Esperando ubicación…';

  @override
  String get run_stopped => 'Carrera detenida';

  @override
  String get run_save => 'Guardar';

  @override
  String get run_continue => 'Seguir corriendo';

  @override
  String get run_discardTitle => '¿Descartar la carrera?';

  @override
  String get run_discard => 'Descartar';

  @override
  String get run_discardBody => 'La carrera no se guardará.';

  @override
  String get run_slideToStop => 'Desliza para parar';

  @override
  String get run_stop => 'PARAR';

  @override
  String get stat_time => 'tiempo';

  @override
  String get stat_pace => 'ritmo';

  @override
  String get stat_average => 'media';

  @override
  String get stat_distance => 'distancia';

  @override
  String get stat_elevation => 'desnivel m';

  @override
  String get detail_imported => 'Importada de GPX';

  @override
  String get detail_splits => 'Parciales';

  @override
  String get detail_pace => 'Ritmo';

  @override
  String get detail_elevation => 'Altitud';

  @override
  String get detail_exportGpx => 'Exportar GPX';

  @override
  String get detail_trim => 'Recortar inicio / final';

  @override
  String get detail_deleteTitle => '¿Borrar la carrera?';

  @override
  String get detail_delete => 'Borrar';

  @override
  String get detail_deleteBody =>
      'La carrera y su ruta desaparecerán de tu móvil. No se puede deshacer.';

  @override
  String get detail_deleteRun => 'Borrar carrera';

  @override
  String get detail_tooShort => 'Más corta que un parcial.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Recortar carrera';

  @override
  String trim_keep(String from, String to) {
    return 'Conservar $from – $to';
  }

  @override
  String get trim_save => 'Guardar recorte';

  @override
  String get import_title => 'Importar GPX';

  @override
  String get import_intro =>
      'Trae tu historial de Strava, Garmin u otra app — elige archivos GPX sueltos o un ZIP de exportación entero. La liebre aprende tu forma de él al momento.';

  @override
  String get import_pick => 'Elegir archivos';

  @override
  String get import_pickOther => 'Elegir otros';

  @override
  String import_done(int count) {
    return '$count carreras importadas.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count carreras importadas, $skipped ya estaban en tu historial.';
  }

  @override
  String import_toImport(int count) {
    return '$count carreras para importar';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count carreras para importar ($skipped omitidas)';
  }

  @override
  String get import_duplicate => 'Ya está en tu historial';

  @override
  String import_andMore(int count) {
    return '… y $count archivos más';
  }

  @override
  String import_importN(int count) {
    return 'Importar $count carreras';
  }

  @override
  String import_paid(String price) {
    return 'La importación es lo único de pago en Běhánek: $price, un solo pago. Exportar tus carreras siempre es gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Desbloquear importación — $price';
  }

  @override
  String get import_restore => 'Restaurar compra';

  @override
  String get import_storeUnavailable =>
      'La tienda no está disponible ahora mismo.';

  @override
  String get import_purchaseFailed => 'La compra no se ha completado.';

  @override
  String get import_errZip => 'No se puede abrir el ZIP.';

  @override
  String get import_errInvalid => 'El archivo no es un GPX válido.';

  @override
  String get import_errNoPoints => 'El GPX no tiene puntos de ruta.';

  @override
  String get import_errNoTimes =>
      'El GPX no tiene marcas de tiempo — no se puede calcular el ritmo.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'carreras';

  @override
  String get report_longest => 'la más larga';

  @override
  String report_perWeek(String unit) {
    return '$unit por semana';
  }

  @override
  String get report_paceTrend => 'Tendencia del ritmo';

  @override
  String get report_fewRuns => 'Pocas carreras para ver una tendencia.';

  @override
  String get notif_recording => 'Grabando tu carrera';

  @override
  String get notif_channel => 'Grabación de carrera';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilómetros',
      many: '$count de kilómetros',
      one: '1 kilómetro',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilómetros';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count millas',
      many: '$count de millas',
      one: '1 milla',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value millas';
  }

  @override
  String cue_pace(String clock) {
    return 'ritmo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tiempo $clock';
  }

  @override
  String get cue_onTarget => 'en ritmo';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos más rápido',
      many: '$count de segundos más rápido',
      one: '1 segundo más rápido',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos más lento',
      many: '$count de segundos más lento',
      one: '1 segundo más lento',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metros por delante',
      many: '$count de metros por delante',
      one: '1 metro por delante',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metros por detrás',
      many: '$count de metros por detrás',
      one: '1 metro por detrás',
    );
    return '$_temp0';
  }
}
