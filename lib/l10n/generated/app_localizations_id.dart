// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get back => 'Kembali';

  @override
  String get history_import => 'Impor';

  @override
  String get history_settings => 'Pengaturan';

  @override
  String get history_empty => 'Belum ada lari.\nPakai sepatumu dan ketuk Lari.';

  @override
  String get history_run => 'Lari';

  @override
  String get history_report => 'Laporan';

  @override
  String get history_paceSame => 'pace sama';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds dtk lebih cepat';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds dtk lebih lambat';
  }

  @override
  String get settings_title => 'Pengaturan';

  @override
  String get settings_units => 'Satuan';

  @override
  String get settings_voiceLanguage => 'Bahasa suara';

  @override
  String get settings_cues => 'Pengumuman';

  @override
  String get settings_cueVoice => 'Suara';

  @override
  String get settings_cueTones => 'Nada';

  @override
  String get settings_cueBoth => 'Keduanya';

  @override
  String get settings_cueOff => 'Tidak ada';

  @override
  String get settings_tonesHelp =>
      'Nada: dua pendek = percepat, satu panjang = perlambat, hening = sesuai target.';

  @override
  String get settings_cueInterval => 'Interval pengumuman';

  @override
  String get settings_pacerGoal => 'Target dari performamu';

  @override
  String get settings_pacerHold => 'Pertahankan saja';

  @override
  String get settings_pacerImprove => '2 % lebih cepat';

  @override
  String get settings_autoPause => 'Jeda otomatis saat berhenti';

  @override
  String get settings_metronome => 'Metronom kadens';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps langkah/mnt';
  }

  @override
  String get settings_mapLayer => 'Peta';

  @override
  String get settings_backup => 'Cadangkan semua lari (ZIP berisi GPX)';

  @override
  String get settings_privacy =>
      'Tidak ada data yang pernah keluar dari ponselmu. Běhánek tidak punya akun, server, analitik, maupun iklan.';

  @override
  String get map_satellite => 'Satelit';

  @override
  String get map_topo => 'Alam';

  @override
  String get run_title => 'Lari';

  @override
  String get run_locationOff =>
      'Lokasi di ponselmu mati. Tanpa lokasi, lari tidak bisa direkam.';

  @override
  String get run_locationNeeded =>
      'Běhánek memerlukan lokasi “saat aplikasi digunakan” untuk merekam rutemu. Lokasi tidak pernah dikirim ke mana pun; tetap di ponselmu.';

  @override
  String get run_allowLocation => 'Izinkan lokasi';

  @override
  String get run_gpsSearching => 'Mencari GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS sangat baik (±$meters m)';
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
      'Pacer: lari belum cukup — hanya waktu dan jarak yang akan diumumkan';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: performamu dari $count lari';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: performamu dari $count lari, 2 % lebih cepat';
  }

  @override
  String get run_form => 'Performa';

  @override
  String get run_ghost => 'Hantu';

  @override
  String get run_start => 'MULAI';

  @override
  String get run_noGhost =>
      'Kamu belum pernah lari dari sini — hantu memerlukan lari yang dimulai dalam radius 300 m.';

  @override
  String get run_cancel => 'Batal';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m di depan hantu';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m di belakang hantu';
  }

  @override
  String run_onTarget(String pace) {
    return 'sesuai target ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds dtk lebih cepat dari $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds dtk lebih lambat dari $pace';
  }

  @override
  String get run_autoPaused => 'JEDA OTOMATIS';

  @override
  String get run_paused => 'DIJEDA';

  @override
  String get run_weakGps => 'Sinyal GPS lemah';

  @override
  String get run_resume => 'Lanjutkan';

  @override
  String get run_pause => 'Jeda';

  @override
  String get run_numbers => 'Angka';

  @override
  String get run_map => 'Peta';

  @override
  String get run_waitingForLocation => 'Menunggu lokasi…';

  @override
  String get run_stopped => 'Lari dihentikan';

  @override
  String get run_save => 'Simpan';

  @override
  String get run_continue => 'Lanjut lari';

  @override
  String get run_discardTitle => 'Buang lari ini?';

  @override
  String get run_discard => 'Buang';

  @override
  String get run_discardBody => 'Lari ini tidak akan disimpan.';

  @override
  String get run_slideToStop => 'Geser untuk berhenti';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'waktu';

  @override
  String get stat_pace => 'pace';

  @override
  String get stat_average => 'rata-rata';

  @override
  String get stat_distance => 'jarak';

  @override
  String get stat_elevation => 'tanjakan m';

  @override
  String get detail_imported => 'Diimpor dari GPX';

  @override
  String get detail_splits => 'Split';

  @override
  String get detail_pace => 'Pace';

  @override
  String get detail_elevation => 'Elevasi';

  @override
  String get detail_exportGpx => 'Ekspor GPX';

  @override
  String get detail_trim => 'Pangkas awal / akhir';

  @override
  String get detail_deleteTitle => 'Hapus lari ini?';

  @override
  String get detail_delete => 'Hapus';

  @override
  String get detail_deleteBody =>
      'Lari dan rutenya akan hilang dari ponselmu. Ini tidak bisa dibatalkan.';

  @override
  String get detail_deleteRun => 'Hapus lari';

  @override
  String get detail_tooShort => 'Lebih pendek dari satu split.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Pangkas lari';

  @override
  String trim_keep(String from, String to) {
    return 'Simpan $from – $to';
  }

  @override
  String get trim_save => 'Simpan pangkasan';

  @override
  String get import_title => 'Impor GPX';

  @override
  String get import_intro =>
      'Bawa riwayatmu dari Strava, Garmin, atau aplikasi lain — pilih file GPX satu per satu atau seluruh ZIP ekspor. Pacer langsung mempelajari performamu.';

  @override
  String get import_pick => 'Pilih file';

  @override
  String get import_pickOther => 'Pilih file lain';

  @override
  String import_done(int count) {
    return '$count lari diimpor.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count lari diimpor, $skipped sudah ada di riwayatmu.';
  }

  @override
  String import_toImport(int count) {
    return '$count lari untuk diimpor';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count lari untuk diimpor ($skipped dilewati)';
  }

  @override
  String get import_duplicate => 'Sudah ada di riwayatmu';

  @override
  String import_andMore(int count) {
    return '… dan $count file lainnya';
  }

  @override
  String import_importN(int count) {
    return 'Impor $count lari';
  }

  @override
  String import_paid(String price) {
    return 'Impor adalah satu-satunya fitur berbayar di Běhánek: sekali bayar $price. Ekspor lari selalu gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Buka impor — $price';
  }

  @override
  String get import_restore => 'Pulihkan pembelian';

  @override
  String get import_storeUnavailable => 'Toko sedang tidak tersedia.';

  @override
  String get import_purchaseFailed => 'Pembelian gagal.';

  @override
  String get import_errZip => 'ZIP tidak bisa dibuka.';

  @override
  String get import_errInvalid => 'File bukan GPX yang valid.';

  @override
  String get import_errNoPoints => 'GPX tidak punya titik jejak.';

  @override
  String get import_errNoTimes =>
      'GPX tidak punya stempel waktu — pace tidak bisa dihitung.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'lari';

  @override
  String get report_longest => 'terpanjang';

  @override
  String report_perWeek(String unit) {
    return '$unit per minggu';
  }

  @override
  String get report_paceTrend => 'Tren pace';

  @override
  String get report_fewRuns => 'Lari belum cukup untuk tren.';

  @override
  String get notif_recording => 'Merekam larimu';

  @override
  String get notif_channel => 'Perekaman lari';

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
      other: '$count mil',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mil';
  }

  @override
  String cue_pace(String clock) {
    return 'pace $clock';
  }

  @override
  String cue_time(String clock) {
    return 'waktu $clock';
  }

  @override
  String get cue_onTarget => 'sesuai target';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detik lebih cepat',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detik lebih lambat',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter di depan';
  }

  @override
  String cue_behind(int count) {
    return '$count meter di belakang';
  }
}
