// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get back => 'Назад';

  @override
  String get history_import => 'Імпорт';

  @override
  String get history_settings => 'Налаштування';

  @override
  String get history_empty => 'Пробіжок ще немає.\nВзувайся й тисни «Бігти».';

  @override
  String get history_run => 'Бігти';

  @override
  String get history_report => 'Звіт';

  @override
  String get history_paceSame => 'темп той самий';

  @override
  String history_paceFaster(int seconds) {
    return 'на $seconds с швидше';
  }

  @override
  String history_paceSlower(int seconds) {
    return 'на $seconds с повільніше';
  }

  @override
  String get settings_title => 'Налаштування';

  @override
  String get settings_units => 'Одиниці';

  @override
  String get settings_voiceLanguage => 'Мова голосу';

  @override
  String get settings_cues => 'Підказки';

  @override
  String get settings_cueVoice => 'Голос';

  @override
  String get settings_cueTones => 'Сигнали';

  @override
  String get settings_cueBoth => 'Обидва';

  @override
  String get settings_cueOff => 'Немає';

  @override
  String get settings_tonesHelp =>
      'Сигнали: два короткі = швидше, один довгий = повільніше, тиша = за планом.';

  @override
  String get settings_cueInterval => 'Інтервал підказок';

  @override
  String get settings_pacerGoal => 'Ціль за формою';

  @override
  String get settings_pacerHold => 'Тримати';

  @override
  String get settings_pacerImprove => 'На 2 % швидше';

  @override
  String get settings_autoPause => 'Автопауза при зупинці';

  @override
  String get settings_metronome => 'Метроном каденсу';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps крок/хв';
  }

  @override
  String get settings_mapLayer => 'Підкладка мапи';

  @override
  String get settings_backup => 'Зберегти всі пробіжки (ZIP з GPX)';

  @override
  String get settings_privacy =>
      'Жодні дані не залишають телефон. У Běhánek немає акаунта, сервера, аналітики й реклами.';

  @override
  String get map_satellite => 'Супутник';

  @override
  String get map_topo => 'Топомапа';

  @override
  String get run_title => 'Пробіжка';

  @override
  String get run_locationOff =>
      'Геолокацію на телефоні вимкнено. Без неї пробіжку не записати.';

  @override
  String get run_locationNeeded =>
      'Běhánek потрібен доступ до геолокації «під час використання застосунку», щоб записати маршрут. Він нікуди її не надсилає, вона лишається на телефоні.';

  @override
  String get run_allowLocation => 'Дозволити геолокацію';

  @override
  String get run_gpsSearching => 'Шукаю GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS відмінний (±$meters м)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS добрий (±$meters м)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS слабкий (±$meters м) — зачекай трохи';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Привид: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Пейсер: поки замало пробіжок — казатиму лише час і дистанцію';

  @override
  String run_pacerForm(int count) {
    return 'Пейсер: твоя форма з $count пробіжок';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Пейсер: твоя форма з $count пробіжок, на 2 % швидше';
  }

  @override
  String get run_form => 'Форма';

  @override
  String get run_ghost => 'Привид';

  @override
  String get run_start => 'СТАРТ';

  @override
  String get run_noGhost =>
      'Звідси ще не було пробіжок — привиду потрібна пробіжка зі стартом у межах 300 м.';

  @override
  String get run_cancel => 'Скасувати';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters м попереду привида';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters м позаду привида';
  }

  @override
  String run_onTarget(String pace) {
    return 'за планом ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return 'на $seconds с швидше за $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return 'на $seconds с повільніше за $pace';
  }

  @override
  String get run_autoPaused => 'АВТОПАУЗА';

  @override
  String get run_paused => 'ПАУЗА';

  @override
  String get run_weakGps => 'Слабкий сигнал GPS';

  @override
  String get run_resume => 'Продовжити';

  @override
  String get run_pause => 'Пауза';

  @override
  String get run_numbers => 'Цифри';

  @override
  String get run_map => 'Мапа';

  @override
  String get run_waitingForLocation => 'Чекаю на геолокацію…';

  @override
  String get run_stopped => 'Пробіжку зупинено';

  @override
  String get run_save => 'Зберегти';

  @override
  String get run_continue => 'Бігти далі';

  @override
  String get run_discardTitle => 'Викинути пробіжку?';

  @override
  String get run_discard => 'Викинути';

  @override
  String get run_discardBody => 'Пробіжку не буде збережено.';

  @override
  String get run_slideToStop => 'Посунь, щоб зупинити';

  @override
  String get run_stop => 'СТОП';

  @override
  String get stat_time => 'час';

  @override
  String get stat_pace => 'темп';

  @override
  String get stat_average => 'середній';

  @override
  String get stat_distance => 'дистанція';

  @override
  String get stat_elevation => 'набір м';

  @override
  String get detail_imported => 'Імпортовано з GPX';

  @override
  String get detail_splits => 'Спліти';

  @override
  String get detail_pace => 'Темп';

  @override
  String get detail_elevation => 'Висота';

  @override
  String get detail_exportGpx => 'Експорт GPX';

  @override
  String get detail_trim => 'Обрізати початок / кінець';

  @override
  String get detail_deleteTitle => 'Видалити пробіжку?';

  @override
  String get detail_delete => 'Видалити';

  @override
  String get detail_deleteBody =>
      'Пробіжка та її маршрут зникнуть з телефону. Скасувати це не можна.';

  @override
  String get detail_deleteRun => 'Видалити пробіжку';

  @override
  String get detail_tooShort => 'Коротша за один відрізок.';

  @override
  String get detail_startMarker => 'С';

  @override
  String get detail_finishMarker => 'Ф';

  @override
  String get trim_title => 'Обрізати пробіжку';

  @override
  String trim_keep(String from, String to) {
    return 'Залишити $from – $to';
  }

  @override
  String get trim_save => 'Зберегти обрізку';

  @override
  String get import_title => 'Імпорт GPX';

  @override
  String get import_intro =>
      'Перенеси історію зі Strava, Garmin чи іншого застосунку — вибери окремі GPX або цілий ZIP експорту. Пейсер одразу дізнається з неї твою форму.';

  @override
  String get import_pick => 'Вибрати файли';

  @override
  String get import_pickOther => 'Вибрати інші';

  @override
  String import_done(int count) {
    return 'Імпортовано пробіжок: $count.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Імпортовано пробіжок: $count, уже були в історії: $skipped.';
  }

  @override
  String import_toImport(int count) {
    return 'Пробіжок до імпорту: $count';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'Пробіжок до імпорту: $count (пропущено: $skipped)';
  }

  @override
  String get import_duplicate => 'Уже є в історії';

  @override
  String import_andMore(int count) {
    return '… і ще файлів: $count';
  }

  @override
  String import_importN(int count) {
    return 'Імпорт ($count)';
  }

  @override
  String import_paid(String price) {
    return 'Імпорт — єдине платне в Běhánek: одноразово $price. Експорт твоїх пробіжок завжди безкоштовний.';
  }

  @override
  String import_unlock(String price) {
    return 'Відкрити імпорт — $price';
  }

  @override
  String get import_restore => 'Відновити покупку';

  @override
  String get import_storeUnavailable => 'Магазин зараз недоступний.';

  @override
  String get import_purchaseFailed => 'Покупка не вдалася.';

  @override
  String get import_errZip => 'Не вдається відкрити ZIP.';

  @override
  String get import_errInvalid => 'Файл не є коректним GPX.';

  @override
  String get import_errNoPoints => 'У GPX немає точок треку.';

  @override
  String get import_errNoTimes =>
      'У GPX немає точок із часом — темп не порахувати.';

  @override
  String get report_total => 'усього';

  @override
  String get report_runs => 'пробіжки';

  @override
  String get report_longest => 'найдовша';

  @override
  String report_perWeek(String unit) {
    return '$unit на тиждень';
  }

  @override
  String get report_paceTrend => 'Тренд темпу';

  @override
  String get report_fewRuns => 'Замало пробіжок для тренду.';

  @override
  String get notif_recording => 'Записую пробіжку';

  @override
  String get notif_channel => 'Запис пробіжки';

  @override
  String get notif_liveChannel => 'Пробіжка в реальному часі';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кілометра',
      many: '$count кілометрів',
      few: '$count кілометри',
      one: '$count кілометр',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value кілометра';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count милі',
      many: '$count миль',
      few: '$count милі',
      one: '$count миля',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value милі';
  }

  @override
  String cue_pace(String clock) {
    return 'темп $clock';
  }

  @override
  String cue_time(String clock) {
    return 'час $clock';
  }

  @override
  String get cue_onTarget => 'за планом';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'на $count секунди швидше',
      many: 'на $count секунд швидше',
      few: 'на $count секунди швидше',
      one: 'на $count секунду швидше',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'на $count секунди повільніше',
      many: 'на $count секунд повільніше',
      few: 'на $count секунди повільніше',
      one: 'на $count секунду повільніше',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count метра попереду',
      many: '$count метрів попереду',
      few: '$count метри попереду',
      one: '$count метр попереду',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count метра позаду',
      many: '$count метрів позаду',
      few: '$count метри позаду',
      one: '$count метр позаду',
    );
    return '$_temp0';
  }
}
