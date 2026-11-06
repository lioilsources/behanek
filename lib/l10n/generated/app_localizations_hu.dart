// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get back => 'Vissza';

  @override
  String get history_import => 'Importálás';

  @override
  String get history_settings => 'Beállítások';

  @override
  String get history_empty =>
      'Még nincs futásod.\nHúzd fel a cipőt, és koppints a Futás gombra.';

  @override
  String get history_run => 'Futás';

  @override
  String get history_report => 'Riport';

  @override
  String get history_paceSame => 'azonos tempó';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds mp-cel gyorsabb';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds mp-cel lassabb';
  }

  @override
  String get settings_title => 'Beállítások';

  @override
  String get settings_units => 'Mértékegységek';

  @override
  String get settings_voiceLanguage => 'A hang nyelve';

  @override
  String get settings_cues => 'Bemondások';

  @override
  String get settings_cueVoice => 'Hang';

  @override
  String get settings_cueTones => 'Hangjelek';

  @override
  String get settings_cueBoth => 'Mindkettő';

  @override
  String get settings_cueOff => 'Nincs';

  @override
  String get settings_tonesHelp =>
      'Hangjelek: két rövid = gyorsíts, egy hosszú = lassíts, csend = terv szerint haladsz.';

  @override
  String get settings_cueInterval => 'Bemondások gyakorisága';

  @override
  String get settings_pacerGoal => 'Cél a formád alapján';

  @override
  String get settings_pacerHold => 'Csak tartsd';

  @override
  String get settings_pacerImprove => '2%-kal gyorsabb';

  @override
  String get settings_autoPause => 'Auto-szünet, ha megállsz';

  @override
  String get settings_metronome => 'Kadencia-metronóm';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps lépés/perc';
  }

  @override
  String get settings_mapLayer => 'Térkép';

  @override
  String get settings_backup => 'Minden futás mentése (ZIP GPX-ekkel)';

  @override
  String get settings_privacy =>
      'Semmilyen adat nem hagyja el a telefonodat. A Běhánekben nincs fiók, szerver, analitika és reklám.';

  @override
  String get map_satellite => 'Műhold';

  @override
  String get map_topo => 'Turista';

  @override
  String get run_title => 'Futás';

  @override
  String get run_locationOff =>
      'A helymeghatározás ki van kapcsolva a telefonodon. Enélkül nem tudom rögzíteni a futást.';

  @override
  String get run_locationNeeded =>
      'A Běhánek „az app használata közben” kéri a helyadatokat, hogy rögzítse az útvonaladat. Sehova nem küldi el őket, a telefonodon maradnak.';

  @override
  String get run_allowLocation => 'Helyadatok engedélyezése';

  @override
  String get run_gpsSearching => 'GPS keresése…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS kiváló (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS jó (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS gyenge (±$meters m) — várj egy kicsit';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Szellem: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: még kevés a futás — csak az időt és a távot mondom be';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: a formád $count futás alapján';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: a formád $count futás alapján, 2%-kal gyorsabban';
  }

  @override
  String get run_form => 'Forma';

  @override
  String get run_ghost => 'Szellem';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Innen még nem futottál — a szellemhez olyan futás kell, ami 300 m-en belül indult.';

  @override
  String get run_cancel => 'Mégse';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m-rel a szellem előtt';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m-rel a szellem mögött';
  }

  @override
  String run_onTarget(String pace) {
    return 'terv szerint ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds mp-cel gyorsabb, mint $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds mp-cel lassabb, mint $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-SZÜNET';

  @override
  String get run_paused => 'SZÜNET';

  @override
  String get run_weakGps => 'Gyenge GPS-jel';

  @override
  String get run_resume => 'Folytatás';

  @override
  String get run_pause => 'Szünet';

  @override
  String get run_numbers => 'Számok';

  @override
  String get run_map => 'Térkép';

  @override
  String get run_waitingForLocation => 'Várok a helyadatokra…';

  @override
  String get run_stopped => 'Futás leállítva';

  @override
  String get run_save => 'Mentés';

  @override
  String get run_continue => 'Futok tovább';

  @override
  String get run_discardTitle => 'Elveted a futást?';

  @override
  String get run_discard => 'Elvetés';

  @override
  String get run_discardBody => 'A futás nem lesz elmentve.';

  @override
  String get run_slideToStop => 'Húzd a leállításhoz';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'idő';

  @override
  String get stat_pace => 'tempó';

  @override
  String get stat_average => 'átlag';

  @override
  String get stat_distance => 'táv';

  @override
  String get stat_elevation => 'emelkedés m';

  @override
  String get detail_imported => 'GPX-ből importálva';

  @override
  String get detail_splits => 'Részidők';

  @override
  String get detail_pace => 'Tempó';

  @override
  String get detail_elevation => 'Magasság';

  @override
  String get detail_exportGpx => 'GPX exportálása';

  @override
  String get detail_trim => 'Eleje / vége levágása';

  @override
  String get detail_deleteTitle => 'Törlöd a futást?';

  @override
  String get detail_delete => 'Törlés';

  @override
  String get detail_deleteBody =>
      'A futás és az útvonala eltűnik a telefonodról. Ez nem vonható vissza.';

  @override
  String get detail_deleteRun => 'Futás törlése';

  @override
  String get detail_tooShort => 'Rövidebb egy szakasznál.';

  @override
  String get detail_startMarker => 'R';

  @override
  String get detail_finishMarker => 'C';

  @override
  String get trim_title => 'Futás vágása';

  @override
  String trim_keep(String from, String to) {
    return 'Megtartva: $from – $to';
  }

  @override
  String get trim_save => 'Vágás mentése';

  @override
  String get import_title => 'GPX importálása';

  @override
  String get import_intro =>
      'Hozd át az előzményeidet a Stravából, a Garminból vagy más appból — válassz egyes GPX-fájlokat vagy egy teljes export ZIP-et. A pacer rögtön megtanulja belőle a formádat.';

  @override
  String get import_pick => 'Fájlok választása';

  @override
  String get import_pickOther => 'Más fájlok';

  @override
  String import_done(int count) {
    return '$count futás importálva.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count futás importálva, $skipped már az előzményeid között volt.';
  }

  @override
  String import_toImport(int count) {
    return '$count futás importálható';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count futás importálható ($skipped kihagyva)';
  }

  @override
  String get import_duplicate => 'Már az előzményeid között van';

  @override
  String import_andMore(int count) {
    return '… és még $count fájl';
  }

  @override
  String import_importN(int count) {
    return '$count futás importálása';
  }

  @override
  String import_paid(String price) {
    return 'Az import az egyetlen fizetős dolog a Běhánekben: egyszeri $price. A futásaid exportálása mindig ingyenes.';
  }

  @override
  String import_unlock(String price) {
    return 'Import feloldása — $price';
  }

  @override
  String get import_restore => 'Vásárlás visszaállítása';

  @override
  String get import_storeUnavailable => 'Az áruház most nem érhető el.';

  @override
  String get import_purchaseFailed => 'A vásárlás nem sikerült.';

  @override
  String get import_errZip => 'A ZIP nem nyitható meg.';

  @override
  String get import_errInvalid => 'A fájl nem érvényes GPX.';

  @override
  String get import_errNoPoints => 'A GPX-ben nincsenek nyomvonalpontok.';

  @override
  String get import_errNoTimes =>
      'A GPX-ben nincsenek időbélyegek — a tempó nem számolható ki.';

  @override
  String get report_total => 'összesen';

  @override
  String get report_runs => 'futás';

  @override
  String get report_longest => 'leghosszabb';

  @override
  String report_perWeek(String unit) {
    return '$unit hetente';
  }

  @override
  String get report_paceTrend => 'Tempótrend';

  @override
  String get report_fewRuns => 'Kevés futás a trendhez.';

  @override
  String get notif_recording => 'Rögzítem a futásodat';

  @override
  String get notif_channel => 'Futás rögzítése';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilométer',
      one: '1 kilométer',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilométer';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mérföld',
      one: '1 mérföld',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mérföld';
  }

  @override
  String cue_pace(String clock) {
    return 'tempó $clock';
  }

  @override
  String cue_time(String clock) {
    return 'idő $clock';
  }

  @override
  String get cue_onTarget => 'terv szerint';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count másodperccel gyorsabb',
      one: '1 másodperccel gyorsabb',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count másodperccel lassabb',
      one: '1 másodperccel lassabb',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count méterrel előrébb';
  }

  @override
  String cue_behind(int count) {
    return '$count méterrel hátrébb';
  }
}
