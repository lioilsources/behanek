// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get back => 'Назад';

  @override
  String get history_import => 'Импорт';

  @override
  String get history_settings => 'Настройки';

  @override
  String get history_empty => 'Пробежек пока нет.\nОбувайся и жми «Бежать».';

  @override
  String get history_run => 'Бежать';

  @override
  String get history_report => 'Отчёт';

  @override
  String get history_paceSame => 'темп тот же';

  @override
  String history_paceFaster(int seconds) {
    return 'на $seconds с быстрее';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'на $seconds с медленнее';
  }

  @override
  String get settings_title => 'Настройки';

  @override
  String get settings_units => 'Единицы';

  @override
  String get settings_voiceLanguage => 'Язык голоса';

  @override
  String get settings_cues => 'Подсказки';

  @override
  String get settings_cueVoice => 'Голос';

  @override
  String get settings_cueTones => 'Сигналы';

  @override
  String get settings_cueBoth => 'Оба';

  @override
  String get settings_cueOff => 'Нет';

  @override
  String get settings_tonesHelp =>
      'Сигналы: два коротких = быстрее, один длинный = медленнее, тишина = по плану.';

  @override
  String get settings_cueInterval => 'Интервал подсказок';

  @override
  String get settings_pacerGoal => 'Цель по форме';

  @override
  String get settings_pacerHold => 'Держать';

  @override
  String get settings_pacerImprove => 'На 2 % быстрее';

  @override
  String get settings_autoPause => 'Автопауза при остановке';

  @override
  String get settings_metronome => 'Метроном каденса';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps шаг/мин';
  }

  @override
  String get settings_mapLayer => 'Подложка карты';

  @override
  String get settings_backup => 'Сохранить все пробежки (ZIP с GPX)';

  @override
  String get settings_privacy =>
      'Пробежки, маршруты и местоположение остаются в телефоне. У Běhánek нет аккаунта и рекламы, и он не использует стороннюю аналитику.';

  @override
  String get settings_stats => 'Анонимная статистика использования';

  @override
  String get settings_statsHelp =>
      'Какие экраны и функции используются, но никогда не местоположение и не маршруты. Помогает улучшать Běhánek.';

  @override
  String get map_satellite => 'Спутник';

  @override
  String get map_topo => 'Топокарта';

  @override
  String get run_title => 'Пробежка';

  @override
  String get run_locationOff =>
      'Геопозиция на телефоне выключена. Без неё пробежку не записать.';

  @override
  String get run_locationNeeded =>
      'Běhánek нужен доступ к геопозиции «при использовании приложения», чтобы записать маршрут. Он никуда её не отправляет, она остаётся на телефоне.';

  @override
  String get run_allowLocation => 'Разрешить геопозицию';

  @override
  String get run_gpsSearching => 'Ищу GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS отличный (±$meters м)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS хороший (±$meters м)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS слабый (±$meters м) — подожди немного';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Призрак: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Пейсер: пока мало пробежек — буду называть только время и дистанцию';

  @override
  String run_pacerForm(int count) {
    return 'Пейсер: твоя форма по $count пробежкам';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Пейсер: твоя форма по $count пробежкам, на 2 % быстрее';
  }

  @override
  String get run_form => 'Форма';

  @override
  String get run_ghost => 'Призрак';

  @override
  String get run_start => 'СТАРТ';

  @override
  String get run_noGhost =>
      'Отсюда пробежек ещё не было — призраку нужна пробежка со стартом в пределах 300 м.';

  @override
  String get run_cancel => 'Отмена';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters м впереди призрака';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters м позади призрака';
  }

  @override
  String run_onTarget(String pace) {
    return 'по плану ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'на $seconds с быстрее $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'на $seconds с медленнее $pace';
  }

  @override
  String get run_autoPaused => 'АВТОПАУЗА';

  @override
  String get run_paused => 'ПАУЗА';

  @override
  String get run_weakGps => 'Слабый сигнал GPS';

  @override
  String get run_resume => 'Продолжить';

  @override
  String get run_pause => 'Пауза';

  @override
  String get run_numbers => 'Цифры';

  @override
  String get run_map => 'Карта';

  @override
  String get run_waitingForLocation => 'Жду геопозицию…';

  @override
  String get run_stopped => 'Пробежка остановлена';

  @override
  String get run_save => 'Сохранить';

  @override
  String get run_continue => 'Бежать дальше';

  @override
  String get run_discardTitle => 'Выбросить пробежку?';

  @override
  String get run_discard => 'Выбросить';

  @override
  String get run_discardBody => 'Пробежка не сохранится.';

  @override
  String get run_slideToStop => 'Сдвинь, чтобы остановить';

  @override
  String get run_stop => 'СТОП';

  @override
  String get stat_time => 'время';

  @override
  String get stat_pace => 'темп';

  @override
  String get stat_average => 'средний';

  @override
  String get stat_distance => 'дистанция';

  @override
  String get stat_elevation => 'набор м';

  @override
  String get detail_imported => 'Импортировано из GPX';

  @override
  String get detail_splits => 'Сплиты';

  @override
  String get detail_pace => 'Темп';

  @override
  String get detail_elevation => 'Высота';

  @override
  String get detail_exportGpx => 'Экспорт GPX';

  @override
  String get detail_trim => 'Обрезать начало / конец';

  @override
  String get detail_deleteTitle => 'Удалить пробежку?';

  @override
  String get detail_delete => 'Удалить';

  @override
  String get detail_deleteBody =>
      'Пробежка и её маршрут исчезнут с телефона. Отменить это нельзя.';

  @override
  String get detail_deleteRun => 'Удалить пробежку';

  @override
  String get detail_tooShort => 'Короче одного отрезка.';

  @override
  String get detail_startMarker => 'С';

  @override
  String get detail_finishMarker => 'Ф';

  @override
  String get trim_title => 'Обрезать пробежку';

  @override
  String trim_keep(String from, String to) {
    return 'Оставить $from – $to';
  }

  @override
  String get trim_save => 'Сохранить обрезку';

  @override
  String get import_title => 'Импорт GPX';

  @override
  String get import_intro =>
      'Перенеси историю из Strava, Garmin или другого приложения — выбери отдельные GPX или целый ZIP экспорта. Пейсер сразу узнает по ней твою форму.';

  @override
  String get import_pick => 'Выбрать файлы';

  @override
  String get import_pickOther => 'Выбрать другие';

  @override
  String import_done(int count) {
    return 'Импортировано пробежек: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Импортировано пробежек: $count, уже были в истории: $skipped.';
  }

  @override
  String import_toImport(int count) {
    return 'Пробежек к импорту: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Пробежек к импорту: $count (пропущено: $skipped)';
  }

  @override
  String get import_duplicate => 'Уже есть в истории';

  @override
  String import_andMore(int count) {
    return '… и ещё файлов: $count';
  }

  @override
  String import_importN(int count) {
    return 'Импорт ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Импорт — единственное платное в Běhánek: разово $price. Экспорт твоих пробежек всегда бесплатный.';
  }

  @override
  String import_unlock(String price) {
    return 'Открыть импорт — $price';
  }

  @override
  String get import_restore => 'Восстановить покупку';

  @override
  String get import_storeUnavailable => 'Магазин сейчас недоступен.';

  @override
  String get import_purchaseFailed => 'Покупка не прошла.';

  @override
  String get import_errZip => 'Не удаётся открыть ZIP.';

  @override
  String get import_errInvalid => 'Файл не является корректным GPX.';

  @override
  String get import_errNoPoints => 'В GPX нет точек трека.';

  @override
  String get import_errNoTimes =>
      'В GPX нет точек со временем — темп не посчитать.';

  @override
  String get report_total => 'всего';

  @override
  String get report_runs => 'пробежки';

  @override
  String get report_longest => 'самая длинная';

  @override
  String report_perWeek(String unit) {
    return '$unit в неделю';
  }

  @override
  String get report_paceTrend => 'Тренд темпа';

  @override
  String get report_fewRuns => 'Мало пробежек для тренда.';

  @override
  String get notif_recording => 'Записываю пробежку';

  @override
  String get notif_channel => 'Запись пробежки';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count километра',
      many: '$count километров',
      few: '$count километра',
      one: '$count километр',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value километра';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мили',
      many: '$count миль',
      few: '$count мили',
      one: '$count миля',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value мили';
  }

  @override
  String cue_pace(String clock) {
    return 'темп $clock';
  }

  @override
  String cue_time(String clock) {
    return 'время $clock';
  }

  @override
  String get cue_onTarget => 'по плану';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'на $count секунды быстрее',
      many: 'на $count секунд быстрее',
      few: 'на $count секунды быстрее',
      one: 'на $count секунду быстрее',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'на $count секунды медленнее',
      many: 'на $count секунд медленнее',
      few: 'на $count секунды медленнее',
      one: 'на $count секунду медленнее',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count метра впереди',
      many: '$count метров впереди',
      few: '$count метра впереди',
      one: '$count метр впереди',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count метра позади',
      many: '$count метров позади',
      few: '$count метра позади',
      one: '$count метр позади',
    );
    return '$_temp0';
  }
}
