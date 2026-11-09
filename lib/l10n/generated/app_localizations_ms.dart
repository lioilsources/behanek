// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get back => 'Kembali';

  @override
  String get history_import => 'Import';

  @override
  String get history_settings => 'Tetapan';

  @override
  String get history_empty => 'Belum ada larian.\nPakai kasut dan ketik Lari.';

  @override
  String get history_run => 'Lari';

  @override
  String get history_report => 'Laporan';

  @override
  String get history_paceSame => 'rentak sama';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds saat lebih laju';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds saat lebih perlahan';
  }

  @override
  String get settings_title => 'Tetapan';

  @override
  String get settings_units => 'Unit';

  @override
  String get settings_voiceLanguage => 'Bahasa suara';

  @override
  String get settings_cues => 'Pengumuman';

  @override
  String get settings_cueVoice => 'Suara';

  @override
  String get settings_cueTones => 'Nada';

  @override
  String get settings_cueBoth => 'Kedua-duanya';

  @override
  String get settings_cueOff => 'Tiada';

  @override
  String get settings_tonesHelp =>
      'Nada: dua pendek = laju lagi, satu panjang = perlahan, senyap = ikut sasaran.';

  @override
  String get settings_cueInterval => 'Selang pengumuman';

  @override
  String get settings_pacerGoal => 'Sasaran daripada prestasi anda';

  @override
  String get settings_pacerHold => 'Kekalkan sahaja';

  @override
  String get settings_pacerImprove => '2 % lebih laju';

  @override
  String get settings_autoPause => 'Jeda automatik apabila berhenti';

  @override
  String get settings_metronome => 'Metronom kadens';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps langkah/min';
  }

  @override
  String get settings_mapLayer => 'Peta';

  @override
  String get settings_backup => 'Sandarkan semua larian (ZIP GPX)';

  @override
  String get settings_privacy =>
      'Tiada data yang pernah keluar dari telefon anda. Běhánek tiada akaun, pelayan, analitik atau iklan.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Luar';

  @override
  String get run_title => 'Larian';

  @override
  String get run_locationOff =>
      'Lokasi dimatikan pada telefon anda. Tanpanya larian tidak dapat dirakam.';

  @override
  String get run_locationNeeded =>
      'Běhánek memerlukan lokasi “semasa menggunakan apl” untuk merakam laluan anda. Ia tidak dihantar ke mana-mana; ia kekal dalam telefon anda.';

  @override
  String get run_allowLocation => 'Benarkan lokasi';

  @override
  String get run_gpsSearching => 'Mencari GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS cemerlang (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS baik (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS lemah (±$meters m) — tunggu sebentar';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Hantu: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: larian belum mencukupi — hanya masa dan jarak diumumkan';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: prestasi anda daripada $count larian';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: prestasi anda daripada $count larian, 2 % lebih laju';
  }

  @override
  String get run_form => 'Prestasi';

  @override
  String get run_ghost => 'Hantu';

  @override
  String get run_start => 'MULA';

  @override
  String get run_noGhost =>
      'Anda belum pernah berlari dari sini — hantu memerlukan larian yang bermula dalam lingkungan 300 m.';

  @override
  String get run_cancel => 'Batal';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m di hadapan hantu';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m di belakang hantu';
  }

  @override
  String run_onTarget(String pace) {
    return 'ikut sasaran ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds saat lebih laju daripada $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds saat lebih perlahan daripada $pace';
  }

  @override
  String get run_autoPaused => 'JEDA AUTOMATIK';

  @override
  String get run_paused => 'DIJEDA';

  @override
  String get run_weakGps => 'Isyarat GPS lemah';

  @override
  String get run_resume => 'Sambung';

  @override
  String get run_pause => 'Jeda';

  @override
  String get run_numbers => 'Angka';

  @override
  String get run_map => 'Peta';

  @override
  String get run_waitingForLocation => 'Menunggu lokasi…';

  @override
  String get run_stopped => 'Larian dihentikan';

  @override
  String get run_save => 'Simpan';

  @override
  String get run_continue => 'Terus berlari';

  @override
  String get run_discardTitle => 'Buang larian?';

  @override
  String get run_discard => 'Buang';

  @override
  String get run_discardBody => 'Larian tidak akan disimpan.';

  @override
  String get run_slideToStop => 'Leret untuk berhenti';

  @override
  String get run_stop => 'HENTI';

  @override
  String get stat_time => 'masa';

  @override
  String get stat_pace => 'rentak';

  @override
  String get stat_average => 'purata';

  @override
  String get stat_distance => 'jarak';

  @override
  String get stat_elevation => 'pendakian m';

  @override
  String get detail_imported => 'Diimport daripada GPX';

  @override
  String get detail_splits => 'Split';

  @override
  String get detail_pace => 'Rentak';

  @override
  String get detail_elevation => 'Ketinggian';

  @override
  String get detail_exportGpx => 'Eksport GPX';

  @override
  String get detail_trim => 'Pangkas mula / akhir';

  @override
  String get detail_deleteTitle => 'Padam larian?';

  @override
  String get detail_delete => 'Padam';

  @override
  String get detail_deleteBody =>
      'Larian dan laluannya akan hilang dari telefon anda. Ini tidak boleh dibuat asal.';

  @override
  String get detail_deleteRun => 'Padam larian';

  @override
  String get detail_tooShort => 'Lebih pendek daripada satu split.';

  @override
  String get detail_startMarker => 'M';

  @override
  String get detail_finishMarker => 'T';

  @override
  String get trim_title => 'Pangkas larian';

  @override
  String trim_keep(String from, String to) {
    return 'Simpan $from – $to';
  }

  @override
  String get trim_save => 'Simpan pangkasan';

  @override
  String get import_title => 'Import GPX';

  @override
  String get import_intro =>
      'Bawa sejarah anda daripada Strava, Garmin atau apl lain — pilih fail GPX tunggal atau keseluruhan ZIP eksport. Pacer terus mempelajari prestasi anda.';

  @override
  String get import_pick => 'Pilih fail';

  @override
  String get import_pickOther => 'Pilih fail lain';

  @override
  String import_done(int count) {
    return '$count larian diimport.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count larian diimport, $skipped sudah ada dalam sejarah anda.';
  }

  @override
  String import_toImport(int count) {
    return '$count larian untuk diimport';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count larian untuk diimport ($skipped dilangkau)';
  }

  @override
  String get import_duplicate => 'Sudah ada dalam sejarah';

  @override
  String import_andMore(int count) {
    return '… dan $count fail lagi';
  }

  @override
  String import_importN(int count) {
    return 'Import $count larian';
  }

  @override
  String import_paid(String price) {
    return 'Import ialah satu-satunya perkara berbayar dalam Běhánek: sekali bayar $price. Mengeksport larian sentiasa percuma.';
  }

  @override
  String import_unlock(String price) {
    return 'Buka import — $price';
  }

  @override
  String get import_restore => 'Pulihkan pembelian';

  @override
  String get import_storeUnavailable => 'Kedai tidak tersedia sekarang.';

  @override
  String get import_purchaseFailed => 'Pembelian tidak berjaya.';

  @override
  String get import_errZip => 'ZIP tidak dapat dibuka.';

  @override
  String get import_errInvalid => 'Fail bukan GPX yang sah.';

  @override
  String get import_errNoPoints => 'GPX tiada titik jejak.';

  @override
  String get import_errNoTimes =>
      'GPX tiada cap masa — rentak tidak dapat dikira.';

  @override
  String get report_total => 'jumlah';

  @override
  String get report_runs => 'larian';

  @override
  String get report_longest => 'terpanjang';

  @override
  String report_perWeek(String unit) {
    return '$unit seminggu';
  }

  @override
  String get report_paceTrend => 'Trend rentak';

  @override
  String get report_fewRuns => 'Larian tidak mencukupi untuk trend.';

  @override
  String get notif_recording => 'Merakam larian anda';

  @override
  String get notif_channel => 'Rakaman larian';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometer';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count batu',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value batu';
  }

  @override
  String cue_pace(String clock) {
    return 'rentak $clock';
  }

  @override
  String cue_time(String clock) {
    return 'masa $clock';
  }

  @override
  String get cue_onTarget => 'ikut sasaran';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat lebih laju',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat lebih perlahan',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter di hadapan';
  }

  @override
  String cue_behind(int count) {
    return '$count meter di belakang';
  }
}
