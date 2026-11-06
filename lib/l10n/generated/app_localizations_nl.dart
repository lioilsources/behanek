// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get back => 'Terug';

  @override
  String get history_import => 'Importeren';

  @override
  String get history_settings => 'Instellingen';

  @override
  String get history_empty =>
      'Nog geen runs.\nTrek je schoenen aan en tik op Lopen.';

  @override
  String get history_run => 'Lopen';

  @override
  String get history_report => 'Rapport';

  @override
  String get history_paceSame => 'zelfde tempo';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s sneller';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s langzamer';
  }

  @override
  String get settings_title => 'Instellingen';

  @override
  String get settings_units => 'Eenheden';

  @override
  String get settings_voiceLanguage => 'Taal van de stem';

  @override
  String get settings_cues => 'Meldingen';

  @override
  String get settings_cueVoice => 'Stem';

  @override
  String get settings_cueTones => 'Tonen';

  @override
  String get settings_cueBoth => 'Beide';

  @override
  String get settings_cueOff => 'Uit';

  @override
  String get settings_tonesHelp =>
      'Tonen: twee korte = versnellen, één lange = vertragen, stilte = op schema.';

  @override
  String get settings_cueInterval => 'Interval van meldingen';

  @override
  String get settings_pacerGoal => 'Doel op basis van je vorm';

  @override
  String get settings_pacerHold => 'Vasthouden';

  @override
  String get settings_pacerImprove => '2 % sneller';

  @override
  String get settings_autoPause => 'Auto-pauze als je stilstaat';

  @override
  String get settings_metronome => 'Cadansmetronoom';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps stappen/min';
  }

  @override
  String get settings_mapLayer => 'Kaart';

  @override
  String get settings_backup => 'Back-up van alle runs (ZIP met GPX)';

  @override
  String get settings_privacy =>
      'Er verlaat nooit data je telefoon. Běhánek heeft geen account, geen server, geen analytics en geen advertenties.';

  @override
  String get map_satellite => 'Satelliet';

  @override
  String get map_topo => 'Wandelkaart';

  @override
  String get run_title => 'Run';

  @override
  String get run_locationOff =>
      'Locatie staat uit op je telefoon. Zonder locatie kan ik je run niet vastleggen.';

  @override
  String get run_locationNeeded =>
      'Běhánek heeft je locatie nodig „tijdens gebruik van de app” om je route vast te leggen. Die wordt nergens heen gestuurd en blijft op je telefoon.';

  @override
  String get run_allowLocation => 'Locatie toestaan';

  @override
  String get run_gpsSearching => 'GPS zoeken…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS uitstekend (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS goed (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS zwak (±$meters m) — wacht even';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Geest: $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Pacer: nog te weinig runs — ik meld alleen tijd en afstand';

  @override
  String run_pacerForm(int count) {
    return 'Pacer: je vorm uit $count runs';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Pacer: je vorm uit $count runs, 2 % sneller';
  }

  @override
  String get run_form => 'Vorm';

  @override
  String get run_ghost => 'Geest';

  @override
  String get run_start => 'START';

  @override
  String get run_noGhost =>
      'Je hebt hier nog niet gelopen — de geest heeft een run nodig die binnen 300 m begon.';

  @override
  String get run_cancel => 'Annuleren';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m voor op de geest';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m achter de geest';
  }

  @override
  String run_onTarget(String pace) {
    return 'op schema ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s sneller dan $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s langzamer dan $pace';
  }

  @override
  String get run_autoPaused => 'AUTO-PAUZE';

  @override
  String get run_paused => 'GEPAUZEERD';

  @override
  String get run_weakGps => 'Zwak GPS-signaal';

  @override
  String get run_resume => 'Hervatten';

  @override
  String get run_pause => 'Pauze';

  @override
  String get run_numbers => 'Cijfers';

  @override
  String get run_map => 'Kaart';

  @override
  String get run_waitingForLocation => 'Wachten op locatie…';

  @override
  String get run_stopped => 'Run gestopt';

  @override
  String get run_save => 'Opslaan';

  @override
  String get run_continue => 'Doorlopen';

  @override
  String get run_discardTitle => 'Run weggooien?';

  @override
  String get run_discard => 'Weggooien';

  @override
  String get run_discardBody => 'De run wordt niet opgeslagen.';

  @override
  String get run_slideToStop => 'Schuif om te stoppen';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'tijd';

  @override
  String get stat_pace => 'tempo';

  @override
  String get stat_average => 'gemiddeld';

  @override
  String get stat_distance => 'afstand';

  @override
  String get stat_elevation => 'stijging m';

  @override
  String get detail_imported => 'Geïmporteerd uit GPX';

  @override
  String get detail_splits => 'Splits';

  @override
  String get detail_pace => 'Tempo';

  @override
  String get detail_elevation => 'Hoogte';

  @override
  String get detail_exportGpx => 'GPX exporteren';

  @override
  String get detail_trim => 'Begin / einde inkorten';

  @override
  String get detail_deleteTitle => 'Run verwijderen?';

  @override
  String get detail_delete => 'Verwijderen';

  @override
  String get detail_deleteBody =>
      'De run en de route verdwijnen van je telefoon. Dit kun je niet ongedaan maken.';

  @override
  String get detail_deleteRun => 'Run verwijderen';

  @override
  String get detail_tooShort => 'Korter dan één split.';

  @override
  String get detail_startMarker => 'S';

  @override
  String get detail_finishMarker => 'F';

  @override
  String get trim_title => 'Run inkorten';

  @override
  String trim_keep(String from, String to) {
    return '$from – $to bewaren';
  }

  @override
  String get trim_save => 'Inkorting opslaan';

  @override
  String get import_title => 'GPX importeren';

  @override
  String get import_intro =>
      'Haal je geschiedenis over uit Strava, Garmin of een andere app — kies losse GPX-bestanden of een hele export-ZIP. De pacer leert er meteen je vorm van.';

  @override
  String get import_pick => 'Bestanden kiezen';

  @override
  String get import_pickOther => 'Andere kiezen';

  @override
  String import_done(int count) {
    return '$count runs geïmporteerd.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count runs geïmporteerd, $skipped stonden al in je geschiedenis.';
  }

  @override
  String import_toImport(int count) {
    return '$count runs om te importeren';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count runs om te importeren ($skipped overgeslagen)';
  }

  @override
  String get import_duplicate => 'Staat al in je geschiedenis';

  @override
  String import_andMore(int count) {
    return '… en nog $count bestanden';
  }

  @override
  String import_importN(int count) {
    return '$count runs importeren';
  }

  @override
  String import_paid(String price) {
    return 'Importeren is het enige betaalde in Běhánek: eenmalig $price. Je runs exporteren is altijd gratis.';
  }

  @override
  String import_unlock(String price) {
    return 'Import ontgrendelen — $price';
  }

  @override
  String get import_restore => 'Aankoop herstellen';

  @override
  String get import_storeUnavailable => 'De store is nu niet beschikbaar.';

  @override
  String get import_purchaseFailed => 'De aankoop is niet gelukt.';

  @override
  String get import_errZip => 'De ZIP kan niet worden geopend.';

  @override
  String get import_errInvalid => 'Het bestand is geen geldige GPX.';

  @override
  String get import_errNoPoints => 'De GPX bevat geen trackpunten.';

  @override
  String get import_errNoTimes =>
      'De GPX heeft geen tijdstempels — het tempo kan niet worden berekend.';

  @override
  String get report_total => 'totaal';

  @override
  String get report_runs => 'runs';

  @override
  String get report_longest => 'langste';

  @override
  String report_perWeek(String unit) {
    return '$unit per week';
  }

  @override
  String get report_paceTrend => 'Tempotrend';

  @override
  String get report_fewRuns => 'Te weinig runs voor een trend.';

  @override
  String get notif_recording => 'Je run wordt vastgelegd';

  @override
  String get notif_channel => 'Run vastleggen';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometer',
      one: '1 kilometer',
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
      other: '$count mijl',
      one: '1 mijl',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value mijl';
  }

  @override
  String cue_pace(String clock) {
    return 'tempo $clock';
  }

  @override
  String cue_time(String clock) {
    return 'tijd $clock';
  }

  @override
  String get cue_onTarget => 'op schema';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconden sneller',
      one: '1 seconde sneller',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconden langzamer',
      one: '1 seconde langzamer',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    return '$count meter voor';
  }

  @override
  String cue_behind(int count) {
    return '$count meter achter';
  }
}
