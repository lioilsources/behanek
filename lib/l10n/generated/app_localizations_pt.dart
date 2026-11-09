// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get back => 'Voltar';

  @override
  String get history_import => 'Importar';

  @override
  String get history_settings => 'Ajustes';

  @override
  String get history_empty =>
      'Nenhuma corrida ainda.\nCalce o tênis e toque em Correr.';

  @override
  String get history_run => 'Correr';

  @override
  String get history_report => 'Relatório';

  @override
  String get history_paceSame => 'mesmo ritmo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s mais rápido';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s mais lento';
  }

  @override
  String get settings_title => 'Ajustes';

  @override
  String get settings_units => 'Unidades';

  @override
  String get settings_voiceLanguage => 'Idioma da voz';

  @override
  String get settings_cues => 'Avisos';

  @override
  String get settings_cueVoice => 'Voz';

  @override
  String get settings_cueTones => 'Bipes';

  @override
  String get settings_cueBoth => 'Ambos';

  @override
  String get settings_cueOff => 'Nenhum';

  @override
  String get settings_tonesHelp =>
      'Bipes: dois curtos = acelere, um longo = desacelere, silêncio = você está no ritmo.';

  @override
  String get settings_cueInterval => 'Intervalo dos avisos';

  @override
  String get settings_pacerGoal => 'Meta pela sua forma';

  @override
  String get settings_pacerHold => 'Só manter';

  @override
  String get settings_pacerImprove => '2 % mais rápido';

  @override
  String get settings_autoPause => 'Pausa automática quando você para';

  @override
  String get settings_metronome => 'Metrônomo de cadência';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps passos/min';
  }

  @override
  String get settings_mapLayer => 'Mapa';

  @override
  String get settings_backup => 'Backup de todas as corridas (ZIP de GPX)';

  @override
  String get settings_privacy =>
      'Nenhum dado sai do seu celular. O Běhánek não tem conta, servidor, rastreamento nem anúncios.';

  @override
  String get map_satellite => 'Satélite';

  @override
  String get map_topo => 'Topográfico';

  @override
  String get run_title => 'Corrida';

  @override
  String get run_locationOff =>
      'A localização está desligada no celular. Sem ela não consigo gravar a corrida.';

  @override
  String get run_locationNeeded =>
      'O Běhánek precisa da localização “durante o uso do app” para gravar seu percurso. Ele não a envia para lugar nenhum; ela fica no seu celular.';

  @override
  String get run_allowLocation => 'Permitir localização';

  @override
  String get run_gpsSearching => 'Procurando GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS ótimo (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bom (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS fraco (±$meters m) — espere um pouco';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantasma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: ainda poucas corridas — vou avisar só tempo e distância';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: sua forma de $count corridas';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: sua forma de $count corridas, 2 % mais rápido';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Fantasma';

  @override
  String get run_start => 'INICIAR';

  @override
  String get run_noGhost =>
      'Você ainda não correu daqui — o fantasma precisa de uma corrida que começou a até 300 m.';

  @override
  String get run_cancel => 'Cancelar';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m à frente do fantasma';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m atrás do fantasma';
  }

  @override
  String run_onTarget(String pace) {
    return 'no ritmo ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s mais rápido que $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s mais lento que $pace';
  }

  @override
  String get run_autoPaused => 'PAUSA AUTO';

  @override
  String get run_paused => 'PAUSADO';

  @override
  String get run_weakGps => 'Sinal de GPS fraco';

  @override
  String get run_resume => 'Retomar';

  @override
  String get run_pause => 'Pausar';

  @override
  String get run_numbers => 'Dados';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'Aguardando localização…';

  @override
  String get run_stopped => 'Corrida parada';

  @override
  String get run_save => 'Salvar';

  @override
  String get run_continue => 'Continuar correndo';

  @override
  String get run_discardTitle => 'Descartar corrida?';

  @override
  String get run_discard => 'Descartar';

  @override
  String get run_discardBody => 'A corrida não será salva.';

  @override
  String get run_slideToStop => 'Deslize para parar';

  @override
  String get run_stop => 'PARAR';

  @override
  String get stat_time => 'tempo';

  @override
  String get stat_pace => 'ritmo';

  @override
  String get stat_average => 'média';

  @override
  String get stat_distance => 'distância';

  @override
  String get stat_elevation => 'elevação m';

  @override
  String get detail_imported => 'Importada de GPX';

  @override
  String get detail_splits => 'Parciais';

  @override
  String get detail_pace => 'Ritmo';

  @override
  String get detail_elevation => 'Altimetria';

  @override
  String get detail_exportGpx => 'Exportar GPX';

  @override
  String get detail_trim => 'Cortar início / fim';

  @override
  String get detail_deleteTitle => 'Apagar corrida?';

  @override
  String get detail_delete => 'Apagar';

  @override
  String get detail_deleteBody =>
      'A corrida e o percurso vão sumir do seu celular. Não dá para desfazer.';

  @override
  String get detail_deleteRun => 'Apagar corrida';

  @override
  String get detail_tooShort => 'Mais curta que uma parcial.';

  @override
  String get detail_startMarker => 'L';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Cortar corrida';

  @override
  String trim_keep(String from, String to) {
    return 'Manter $from – $to';
  }

  @override
  String get trim_save => 'Salvar corte';

  @override
  String get import_title => 'Importar GPX';

  @override
  String get import_intro =>
      'Traga seu histórico do Strava, Garmin ou outro app — escolha arquivos GPX avulsos ou um ZIP de exportação inteiro. O pacer aprende sua forma com ele na hora.';

  @override
  String get import_pick => 'Escolher arquivos';

  @override
  String get import_pickOther => 'Escolher outros';

  @override
  String import_done(int count) {
    return '$count corridas importadas.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count corridas importadas, $skipped já estavam no seu histórico.';
  }

  @override
  String import_toImport(int count) {
    return '$count corridas para importar';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count corridas para importar ($skipped ignoradas)';
  }

  @override
  String get import_duplicate => 'Já está no seu histórico';

  @override
  String import_andMore(int count) {
    return '… e mais $count arquivos';
  }

  @override
  String import_importN(int count) {
    return 'Importar $count corridas';
  }

  @override
  String import_paid(String price) {
    return 'A importação é a única coisa paga no Běhánek: $price, uma vez só. Exportar suas corridas é sempre grátis.';
  }

  @override
  String import_unlock(String price) {
    return 'Desbloquear importação — $price';
  }

  @override
  String get import_restore => 'Restaurar compra';

  @override
  String get import_storeUnavailable => 'A loja não está disponível agora.';

  @override
  String get import_purchaseFailed => 'A compra não foi concluída.';

  @override
  String get import_errZip => 'Não dá para abrir o ZIP.';

  @override
  String get import_errInvalid => 'O arquivo não é um GPX válido.';

  @override
  String get import_errNoPoints => 'O GPX não tem pontos de trajeto.';

  @override
  String get import_errNoTimes =>
      'O GPX não tem horários — não dá para calcular o ritmo.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'corridas';

  @override
  String get report_longest => 'a mais longa';

  @override
  String report_perWeek(String unit) {
    return '$unit por semana';
  }

  @override
  String get report_paceTrend => 'Tendência do ritmo';

  @override
  String get report_fewRuns => 'Poucas corridas para uma tendência.';

  @override
  String get notif_recording => 'Gravando sua corrida';

  @override
  String get notif_channel => 'Gravação de corrida';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count quilômetros',
      many: '$count de quilômetros',
      one: '1 quilômetro',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value quilômetros';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count milhas',
      many: '$count de milhas',
      one: '1 milha',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value milhas';
  }

  @override
  String cue_pace(String clock) {
    return 'ritmo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tempo $clock';
  }

  @override
  String get cue_onTarget => 'no ritmo';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos mais rápido',
      many: '$count de segundos mais rápido',
      one: '1 segundo mais rápido',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos mais lento',
      many: '$count de segundos mais lento',
      one: '1 segundo mais lento',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metros à frente',
      many: '$count de metros à frente',
      one: '1 metro à frente',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count metros atrás',
      many: '$count de metros atrás',
      one: '1 metro atrás',
    );
    return '$_temp0';
  }
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get back => 'Voltar';

  @override
  String get history_import => 'Importar';

  @override
  String get history_settings => 'Definições';

  @override
  String get history_empty =>
      'Ainda não há corridas.\nCalça as sapatilhas e toca em Correr.';

  @override
  String get history_run => 'Correr';

  @override
  String get history_report => 'Relatório';

  @override
  String get history_paceSame => 'mesmo ritmo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s mais rápido';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s mais lento';
  }

  @override
  String get settings_title => 'Definições';

  @override
  String get settings_units => 'Unidades';

  @override
  String get settings_voiceLanguage => 'Idioma da voz';

  @override
  String get settings_cues => 'Avisos';

  @override
  String get settings_cueVoice => 'Voz';

  @override
  String get settings_cueTones => 'Sinais sonoros';

  @override
  String get settings_cueBoth => 'Ambos';

  @override
  String get settings_cueOff => 'Nenhum';

  @override
  String get settings_tonesHelp =>
      'Sinais: dois curtos = acelera, um longo = abranda, silêncio = no ritmo.';

  @override
  String get settings_cueInterval => 'Intervalo dos avisos';

  @override
  String get settings_pacerGoal => 'Objetivo a partir da tua forma';

  @override
  String get settings_pacerHold => 'Só mantê-la';

  @override
  String get settings_pacerImprove => '2 % mais rápido';

  @override
  String get settings_autoPause => 'Pausa automática quando paras';

  @override
  String get settings_metronome => 'Metrónomo de cadência';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps passos/min';
  }

  @override
  String get settings_mapLayer => 'Mapa';

  @override
  String get settings_backup =>
      'Cópia de segurança de todas as corridas (ZIP de GPX)';

  @override
  String get settings_privacy =>
      'Nenhum dado sai alguma vez do teu telemóvel. O Běhánek não tem conta, servidor, análises nem anúncios.';

  @override
  String get map_satellite => 'Satélite';

  @override
  String get map_topo => 'Trilhos';

  @override
  String get run_title => 'Corrida';

  @override
  String get run_locationOff =>
      'A localização está desligada no telemóvel. Sem ela não consigo gravar a corrida.';

  @override
  String get run_locationNeeded =>
      'O Běhánek precisa da localização «durante a utilização da app» para gravar o teu percurso. Nunca a envia para lado nenhum; fica no teu telemóvel.';

  @override
  String get run_allowLocation => 'Permitir localização';

  @override
  String get run_gpsSearching => 'A procurar GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excelente (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bom (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS fraco (±$meters m) — espera um pouco';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantasma: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Lebre: ainda não há corridas suficientes — só anuncio tempo e distância';

  @override
  String run_pacerForm(int count) {
    return 'Lebre: a tua forma de $count corridas';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Lebre: a tua forma de $count corridas, 2 % mais rápido';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Fantasma';

  @override
  String get run_start => 'INICIAR';

  @override
  String get run_noGhost =>
      'Ainda não correste a partir daqui — o fantasma precisa de uma corrida que tenha começado a menos de 300 m.';

  @override
  String get run_cancel => 'Cancelar';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m à frente do fantasma';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m atrás do fantasma';
  }

  @override
  String run_onTarget(String pace) {
    return 'no ritmo ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s mais rápido que $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s mais lento que $pace';
  }

  @override
  String get run_autoPaused => 'PAUSA AUTOMÁTICA';

  @override
  String get run_paused => 'EM PAUSA';

  @override
  String get run_weakGps => 'Sinal de GPS fraco';

  @override
  String get run_resume => 'Retomar';

  @override
  String get run_pause => 'Pausa';

  @override
  String get run_numbers => 'Números';

  @override
  String get run_map => 'Mapa';

  @override
  String get run_waitingForLocation => 'À espera da localização…';

  @override
  String get run_stopped => 'Corrida parada';

  @override
  String get run_save => 'Guardar';

  @override
  String get run_continue => 'Continuar a correr';

  @override
  String get run_discardTitle => 'Descartar a corrida?';

  @override
  String get run_discard => 'Descartar';

  @override
  String get run_discardBody => 'A corrida não será guardada.';

  @override
  String get run_slideToStop => 'Desliza para parar';

  @override
  String get run_stop => 'PARAR';

  @override
  String get stat_time => 'tempo';

  @override
  String get stat_pace => 'ritmo';

  @override
  String get stat_average => 'média';

  @override
  String get stat_distance => 'distância';

  @override
  String get stat_elevation => 'subida m';

  @override
  String get detail_imported => 'Importada de GPX';

  @override
  String get detail_splits => 'Parciais';

  @override
  String get detail_pace => 'Ritmo';

  @override
  String get detail_elevation => 'Altitude';

  @override
  String get detail_exportGpx => 'Exportar GPX';

  @override
  String get detail_trim => 'Cortar início / fim';

  @override
  String get detail_deleteTitle => 'Eliminar a corrida?';

  @override
  String get detail_delete => 'Eliminar';

  @override
  String get detail_deleteBody =>
      'A corrida e o percurso vão desaparecer do telemóvel. Não é possível anular.';

  @override
  String get detail_deleteRun => 'Eliminar corrida';

  @override
  String get detail_tooShort => 'Mais curta do que um parcial.';

  @override
  String get detail_startMarker => 'I';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Cortar corrida';

  @override
  String trim_keep(String from, String to) {
    return 'Manter $from – $to';
  }

  @override
  String get trim_save => 'Guardar corte';

  @override
  String get import_title => 'Importar GPX';

  @override
  String get import_intro =>
      'Traz o teu histórico do Strava, Garmin ou de outra app — escolhe ficheiros GPX soltos ou um ZIP de exportação completo. A lebre aprende logo a tua forma.';

  @override
  String get import_pick => 'Escolher ficheiros';

  @override
  String get import_pickOther => 'Escolher outros ficheiros';

  @override
  String import_done(int count) {
    return 'Foram importadas $count corridas.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Foram importadas $count corridas; $skipped já estavam no histórico.';
  }

  @override
  String import_toImport(int count) {
    return '$count corridas para importar';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count corridas para importar ($skipped ignoradas)';
  }

  @override
  String get import_duplicate => 'Já está no histórico';

  @override
  String import_andMore(int count) {
    return '… e mais $count ficheiros';
  }

  @override
  String import_importN(int count) {
    return 'Importar $count corridas';
  }

  @override
  String import_paid(String price) {
    return 'A importação é a única coisa paga no Běhánek: $price, uma única vez. Exportar as corridas é sempre gratuito.';
  }

  @override
  String import_unlock(String price) {
    return 'Desbloquear importação — $price';
  }

  @override
  String get import_restore => 'Restaurar compra';

  @override
  String get import_storeUnavailable =>
      'A loja não está disponível neste momento.';

  @override
  String get import_purchaseFailed => 'A compra não foi concluída.';

  @override
  String get import_errZip => 'Não é possível abrir o ZIP.';

  @override
  String get import_errInvalid => 'O ficheiro não é um GPX válido.';

  @override
  String get import_errNoPoints => 'O GPX não tem pontos de percurso.';

  @override
  String get import_errNoTimes =>
      'O GPX não tem marcas de tempo — não é possível calcular o ritmo.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'corridas';

  @override
  String get report_longest => 'mais longa';

  @override
  String report_perWeek(String unit) {
    return '$unit por semana';
  }

  @override
  String get report_paceTrend => 'Tendência do ritmo';

  @override
  String get report_fewRuns =>
      'Não há corridas suficientes para uma tendência.';

  @override
  String get notif_recording => 'A gravar a tua corrida';

  @override
  String get notif_channel => 'Gravação de corrida';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count quilómetros',
      one: '1 quilómetro',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value quilómetros';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count milhas',
      one: '1 milha',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value milhas';
  }

  @override
  String cue_pace(String clock) {
    return 'ritmo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tempo $clock';
  }

  @override
  String get cue_onTarget => 'no ritmo';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos mais rápido',
      one: '1 segundo mais rápido',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count segundos mais lento',
      one: '1 segundo mais lento',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count metros à frente';
  }

  @override
  String cue_behind(int count) {
    return '$count metros atrás';
  }
}
