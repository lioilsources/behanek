// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get back => 'Geri';

  @override
  String get history_import => 'İçe aktar';

  @override
  String get history_settings => 'Ayarlar';

  @override
  String get history_empty =>
      'Henüz koşu yok.\nAyakkabılarını giy ve Koş\'a dokun.';

  @override
  String get history_run => 'Koş';

  @override
  String get history_report => 'Rapor';

  @override
  String get history_paceSame => 'aynı tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds sn daha hızlı';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds sn daha yavaş';
  }

  @override
  String get settings_title => 'Ayarlar';

  @override
  String get settings_units => 'Birimler';

  @override
  String get settings_voiceLanguage => 'Ses dili';

  @override
  String get settings_cues => 'Anonslar';

  @override
  String get settings_cueVoice => 'Ses';

  @override
  String get settings_cueTones => 'Tonlar';

  @override
  String get settings_cueBoth => 'İkisi de';

  @override
  String get settings_cueOff => 'Hiçbiri';

  @override
  String get settings_tonesHelp =>
      'Tonlar: iki kısa = hızlan, bir uzun = yavaşla, sessizlik = hedefte.';

  @override
  String get settings_cueInterval => 'Anons aralığı';

  @override
  String get settings_pacerGoal => 'Formuna göre hedef';

  @override
  String get settings_pacerHold => 'Sadece koru';

  @override
  String get settings_pacerImprove => '%2 daha hızlı';

  @override
  String get settings_autoPause => 'Durduğunda otomatik duraklat';

  @override
  String get settings_metronome => 'Adım metronomu';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps adım/dk';
  }

  @override
  String get settings_mapLayer => 'Harita';

  @override
  String get settings_backup => 'Tüm koşuları yedekle (GPX içeren ZIP)';

  @override
  String get settings_privacy =>
      'Hiçbir veri telefonundan asla çıkmaz. Běhánek\'in hesabı, sunucusu, analitiği ve reklamı yoktur.';

  @override
  String get map_satellite => 'Uydu';

  @override
  String get map_topo => 'Doğa';

  @override
  String get run_title => 'Koşu';

  @override
  String get run_locationOff =>
      'Telefonunda konum kapalı. Konum olmadan koşuyu kaydedemem.';

  @override
  String get run_locationNeeded =>
      'Běhánek rotanı kaydetmek için “uygulama kullanılırken” konum iznine ihtiyaç duyar. Konumu hiçbir yere göndermez; telefonunda kalır.';

  @override
  String get run_allowLocation => 'Konuma izin ver';

  @override
  String get run_gpsSearching => 'GPS aranıyor…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS mükemmel (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS iyi (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS zayıf (±$meters m) — biraz bekle';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Hayalet: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: henüz yeterli koşu yok — yalnızca süre ve mesafeyi söyleyeceğim';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: $count koşudan formun';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: $count koşudan formun, %2 daha hızlı';
  }

  @override
  String get run_form => 'Form';

  @override
  String get run_ghost => 'Hayalet';

  @override
  String get run_start => 'BAŞLA';

  @override
  String get run_noGhost =>
      'Buradan henüz koşmadın — hayalet için 300 m içinde başlamış bir koşu gerekir.';

  @override
  String get run_cancel => 'İptal';

  @override
  String run_aheadOfGhost(int meters) {
    return 'Hayaletin $meters m önünde';
  }

  @override
  String run_behindGhost(int meters) {
    return 'Hayaletin $meters m gerisinde';
  }

  @override
  String run_onTarget(String pace) {
    return 'hedefte ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$pace temposundan $seconds sn hızlı';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$pace temposundan $seconds sn yavaş';
  }

  @override
  String get run_autoPaused => 'OTOMATİK DURAKLAMA';

  @override
  String get run_paused => 'DURAKLATILDI';

  @override
  String get run_weakGps => 'Zayıf GPS sinyali';

  @override
  String get run_resume => 'Devam et';

  @override
  String get run_pause => 'Duraklat';

  @override
  String get run_numbers => 'Rakamlar';

  @override
  String get run_map => 'Harita';

  @override
  String get run_waitingForLocation => 'Konum bekleniyor…';

  @override
  String get run_stopped => 'Koşu durduruldu';

  @override
  String get run_save => 'Kaydet';

  @override
  String get run_continue => 'Koşmaya devam';

  @override
  String get run_discardTitle => 'Koşu silinsin mi?';

  @override
  String get run_discard => 'Sil';

  @override
  String get run_discardBody => 'Koşu kaydedilmeyecek.';

  @override
  String get run_slideToStop => 'Durdurmak için kaydır';

  @override
  String get run_stop => 'DUR';

  @override
  String get stat_time => 'süre';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'ortalama';

  @override
  String get stat_distance => 'mesafe';

  @override
  String get stat_elevation => 'tırmanış m';

  @override
  String get detail_imported => 'GPX\'ten içe aktarıldı';

  @override
  String get detail_splits => 'Ara dereceler';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Yükseklik';

  @override
  String get detail_exportGpx => 'GPX dışa aktar';

  @override
  String get detail_trim => 'Başı / sonu kırp';

  @override
  String get detail_deleteTitle => 'Koşu silinsin mi?';

  @override
  String get detail_delete => 'Sil';

  @override
  String get detail_deleteBody =>
      'Koşu ve rotası telefonundan silinecek. Bu işlem geri alınamaz.';

  @override
  String get detail_deleteRun => 'Koşuyu sil';

  @override
  String get detail_tooShort => 'Bir ara dereceden kısa.';

  @override
  String get detail_startMarker => 'B';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Koşuyu kırp';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to arasını tut';
  }

  @override
  String get trim_save => 'Kırpmayı kaydet';

  @override
  String get import_title => 'GPX içe aktar';

  @override
  String get import_intro =>
      'Geçmişini Strava, Garmin ya da başka bir uygulamadan getir — tek tek GPX dosyaları veya tam bir dışa aktarma ZIP\'i seç. Pacer formunu hemen öğrenir.';

  @override
  String get import_pick => 'Dosya seç';

  @override
  String get import_pickOther => 'Başka dosyalar seç';

  @override
  String import_done(int count) {
    return '$count koşu içe aktarıldı.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count koşu içe aktarıldı, $skipped tanesi zaten geçmişteydi.';
  }

  @override
  String import_toImport(int count) {
    return 'İçe aktarılacak $count koşu';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return 'İçe aktarılacak $count koşu ($skipped atlandı)';
  }

  @override
  String get import_duplicate => 'Zaten geçmişte';

  @override
  String import_andMore(int count) {
    return '… ve $count dosya daha';
  }

  @override
  String import_importN(int count) {
    return '$count koşuyu içe aktar';
  }

  @override
  String import_paid(String price) {
    return 'Běhánek\'te ücretli olan tek şey içe aktarmadır: tek seferlik $price. Koşularını dışa aktarmak her zaman ücretsizdir.';
  }

  @override
  String import_unlock(String price) {
    return 'İçe aktarmayı aç — $price';
  }

  @override
  String get import_restore => 'Satın alımı geri yükle';

  @override
  String get import_storeUnavailable => 'Mağaza şu anda kullanılamıyor.';

  @override
  String get import_purchaseFailed => 'Satın alma tamamlanamadı.';

  @override
  String get import_errZip => 'ZIP açılamıyor.';

  @override
  String get import_errInvalid => 'Dosya geçerli bir GPX değil.';

  @override
  String get import_errNoPoints => 'GPX\'te iz noktası yok.';

  @override
  String get import_errNoTimes =>
      'GPX\'te zaman damgası yok — tempo hesaplanamaz.';

  @override
  String get report_total => 'toplam';

  @override
  String get report_runs => 'koşu';

  @override
  String get report_longest => 'en uzun';

  @override
  String report_perWeek(String unit) {
    return 'haftada $unit';
  }

  @override
  String get report_paceTrend => 'Tempo eğilimi';

  @override
  String get report_fewRuns => 'Eğilim için yeterli koşu yok.';

  @override
  String get notif_recording => 'Koşun kaydediliyor';

  @override
  String get notif_channel => 'Koşu kaydı';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometre',
      one: '1 kilometre',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometre';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mil',
      one: '1 mil',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mil';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'süre $clock';
  }

  @override
  String get cue_onTarget => 'hedefte';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saniye daha hızlı',
      one: '1 saniye daha hızlı',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saniye daha yavaş',
      one: '1 saniye daha yavaş',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count metre önde';
  }

  @override
  String cue_behind(int count) {
    return '$count metre geride';
  }
}
