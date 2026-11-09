// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get back => 'Takaisin';

  @override
  String get history_import => 'Tuonti';

  @override
  String get history_settings => 'Asetukset';

  @override
  String get history_empty =>
      'Ei vielä juoksuja.\nLaita kengät jalkaan ja napauta Juokse.';

  @override
  String get history_run => 'Juokse';

  @override
  String get history_report => 'Raportti';

  @override
  String get history_paceSame => 'sama vauhti';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s nopeammin';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s hitaammin';
  }

  @override
  String get settings_title => 'Asetukset';

  @override
  String get settings_units => 'Yksiköt';

  @override
  String get settings_voiceLanguage => 'Äänen kieli';

  @override
  String get settings_cues => 'Ilmoitukset';

  @override
  String get settings_cueVoice => 'Ääni';

  @override
  String get settings_cueTones => 'Merkkiäänet';

  @override
  String get settings_cueBoth => 'Molemmat';

  @override
  String get settings_cueOff => 'Ei mitään';

  @override
  String get settings_tonesHelp =>
      'Merkkiäänet: kaksi lyhyttä = kiristä, yksi pitkä = hidasta, hiljaisuus = tavoitteessa.';

  @override
  String get settings_cueInterval => 'Ilmoitusten väli';

  @override
  String get settings_pacerGoal => 'Tavoite kunnostasi';

  @override
  String get settings_pacerHold => 'Pidä vain yllä';

  @override
  String get settings_pacerImprove => '2 % nopeammin';

  @override
  String get settings_autoPause => 'Automaattinen tauko pysähtyessä';

  @override
  String get settings_metronome => 'Askeltiheyden metronomi';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps askelta/min';
  }

  @override
  String get settings_mapLayer => 'Kartta';

  @override
  String get settings_backup => 'Varmuuskopioi kaikki juoksut (GPX-ZIP)';

  @override
  String get settings_privacy =>
      'Mitään tietoja ei koskaan lähde puhelimestasi. Běhánekissa ei ole tiliä, palvelinta, analytiikkaa eikä mainoksia.';

  @override
  String get map_satellite => 'Satelliitti';

  @override
  String get map_topo => 'Maasto';

  @override
  String get run_title => 'Juoksu';

  @override
  String get run_locationOff =>
      'Sijainti on pois päältä puhelimessa. Ilman sitä en voi tallentaa juoksua.';

  @override
  String get run_locationNeeded =>
      'Běhánek tarvitsee sijainnin ”kun appia käytetään” tallentaakseen reittisi. Sitä ei lähetetä minnekään; se pysyy puhelimessasi.';

  @override
  String get run_allowLocation => 'Salli sijainti';

  @override
  String get run_gpsSearching => 'Etsitään GPS:ää…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS erinomainen (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS hyvä (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS heikko (±$meters m) — odota hetki';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Haamu: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Jänis: juoksuja ei ole vielä tarpeeksi — ilmoitan vain ajan ja matkan';

  @override
  String run_pacerForm(int count) {
    return 'Jänis: kuntosi $count juoksusta';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Jänis: kuntosi $count juoksusta, 2 % nopeammin';
  }

  @override
  String get run_form => 'Kunto';

  @override
  String get run_ghost => 'Haamu';

  @override
  String get run_start => 'ALOITA';

  @override
  String get run_noGhost =>
      'Et ole vielä juossut täältä — haamu tarvitsee juoksun, joka alkoi 300 m:n säteellä.';

  @override
  String get run_cancel => 'Peruuta';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m haamun edellä';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m haamun jäljessä';
  }

  @override
  String run_onTarget(String pace) {
    return 'tavoitteessa ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s nopeammin kuin $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s hitaammin kuin $pace';
  }

  @override
  String get run_autoPaused => 'AUTOM. TAUKO';

  @override
  String get run_paused => 'TAUKO';

  @override
  String get run_weakGps => 'Heikko GPS-signaali';

  @override
  String get run_resume => 'Jatka';

  @override
  String get run_pause => 'Tauko';

  @override
  String get run_numbers => 'Luvut';

  @override
  String get run_map => 'Kartta';

  @override
  String get run_waitingForLocation => 'Odotetaan sijaintia…';

  @override
  String get run_stopped => 'Juoksu pysäytetty';

  @override
  String get run_save => 'Tallenna';

  @override
  String get run_continue => 'Jatka juoksua';

  @override
  String get run_discardTitle => 'Hylätäänkö juoksu?';

  @override
  String get run_discard => 'Hylkää';

  @override
  String get run_discardBody => 'Juoksua ei tallenneta.';

  @override
  String get run_slideToStop => 'Liu\'uta pysäyttääksesi';

  @override
  String get run_stop => 'SEIS';

  @override
  String get stat_time => 'aika';

  @override
  String get stat_pace => 'vauhti';

  @override
  String get stat_average => 'keskiarvo';

  @override
  String get stat_distance => 'matka';

  @override
  String get stat_elevation => 'nousu m';

  @override
  String get detail_imported => 'Tuotu GPX:stä';

  @override
  String get detail_splits => 'Väliajat';

  @override
  String get detail_pace => 'Vauhti';

  @override
  String get detail_elevation => 'Korkeus';

  @override
  String get detail_exportGpx => 'Vie GPX';

  @override
  String get detail_trim => 'Rajaa alku / loppu';

  @override
  String get detail_deleteTitle => 'Poistetaanko juoksu?';

  @override
  String get detail_delete => 'Poista';

  @override
  String get detail_deleteBody =>
      'Juoksu ja sen reitti katoavat puhelimesta. Tätä ei voi kumota.';

  @override
  String get detail_deleteRun => 'Poista juoksu';

  @override
  String get detail_tooShort => 'Lyhyempi kuin yksi väliaika.';

  @override
  String get detail_startMarker => 'L';

  @override
  String get detail_finishMarker => 'M';

  @override
  String get trim_title => 'Rajaa juoksu';

  @override
  String trim_keep(String from, String to) {
    return 'Säilytä $from – $to';
  }

  @override
  String get trim_save => 'Tallenna rajaus';

  @override
  String get import_title => 'Tuo GPX';

  @override
  String get import_intro =>
      'Tuo historiasi Stravasta, Garminista tai muusta appista — valitse yksittäisiä GPX-tiedostoja tai koko vienti-ZIP. Jänis oppii kuntosi siitä heti.';

  @override
  String get import_pick => 'Valitse tiedostot';

  @override
  String get import_pickOther => 'Valitse muut tiedostot';

  @override
  String import_done(int count) {
    return 'Tuotiin $count juoksua.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return 'Tuotiin $count juoksua, $skipped oli jo historiassa.';
  }

  @override
  String import_toImport(int count) {
    return '$count juoksua tuotavana';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count juoksua tuotavana ($skipped ohitettu)';
  }

  @override
  String get import_duplicate => 'Jo historiassa';

  @override
  String import_andMore(int count) {
    return '… ja $count tiedostoa lisää';
  }

  @override
  String import_importN(int count) {
    return 'Tuo $count juoksua';
  }

  @override
  String import_paid(String price) {
    return 'Tuonti on Běhánekin ainoa maksullinen asia: kertamaksu $price. Juoksujen vienti on aina ilmaista.';
  }

  @override
  String import_unlock(String price) {
    return 'Avaa tuonti — $price';
  }

  @override
  String get import_restore => 'Palauta osto';

  @override
  String get import_storeUnavailable =>
      'Kauppa ei ole juuri nyt käytettävissä.';

  @override
  String get import_purchaseFailed => 'Osto ei onnistunut.';

  @override
  String get import_errZip => 'ZIP-tiedostoa ei voi avata.';

  @override
  String get import_errInvalid => 'Tiedosto ei ole kelvollinen GPX.';

  @override
  String get import_errNoPoints => 'GPX-tiedostossa ei ole reittipisteitä.';

  @override
  String get import_errNoTimes =>
      'GPX-tiedostossa ei ole aikaleimoja — vauhtia ei voi laskea.';

  @override
  String get report_total => 'yhteensä';

  @override
  String get report_runs => 'juoksua';

  @override
  String get report_longest => 'pisin';

  @override
  String report_perWeek(String unit) {
    return '$unit viikossa';
  }

  @override
  String get report_paceTrend => 'Vauhdin kehitys';

  @override
  String get report_fewRuns => 'Liian vähän juoksuja kehitykseen.';

  @override
  String get notif_recording => 'Juoksua tallennetaan';

  @override
  String get notif_channel => 'Juoksun tallennus';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometriä',
      one: '1 kilometri',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilometriä';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mailia',
      one: '1 maili',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mailia';
  }

  @override
  String cue_pace(String clock) {
    return 'vauhti $clock';
  }

  @override
  String cue_time(String clock) {
    return 'aika $clock';
  }

  @override
  String get cue_onTarget => 'tavoitteessa';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekuntia nopeammin',
      one: '1 sekunnin nopeammin',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sekuntia hitaammin',
      one: '1 sekunnin hitaammin',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count metriä edellä';
  }

  @override
  String cue_behind(int count) {
    return '$count metriä jäljessä';
  }
}
