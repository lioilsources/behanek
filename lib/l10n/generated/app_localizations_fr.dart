// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get back => 'Retour';

  @override
  String get history_import => 'Importer';

  @override
  String get history_settings => 'Réglages';

  @override
  String get history_empty =>
      'Pas encore de course.\nEnfile tes chaussures et appuie sur Courir.';

  @override
  String get history_run => 'Courir';

  @override
  String get history_report => 'Bilan';

  @override
  String get history_paceSame => 'même allure';

  @override
  String history_paceFaster(int seconds) {
    return '$seconds s plus vite';
  }

  @override
  String history_paceSlower(int seconds) {
    return '$seconds s plus lent';
  }

  @override
  String get settings_title => 'Réglages';

  @override
  String get settings_units => 'Unités';

  @override
  String get settings_voiceLanguage => 'Langue de la voix';

  @override
  String get settings_cues => 'Annonces';

  @override
  String get settings_cueVoice => 'Voix';

  @override
  String get settings_cueTones => 'Bips';

  @override
  String get settings_cueBoth => 'Les deux';

  @override
  String get settings_cueOff => 'Aucune';

  @override
  String get settings_tonesHelp =>
      'Bips : deux courts = accélère, un long = ralentis, silence = tu es dans le rythme.';

  @override
  String get settings_cueInterval => 'Intervalle des annonces';

  @override
  String get settings_pacerGoal => 'Objectif selon ta forme';

  @override
  String get settings_pacerHold => 'Juste tenir';

  @override
  String get settings_pacerImprove => '2 % plus vite';

  @override
  String get settings_autoPause => 'Pause auto quand tu t\'arrêtes';

  @override
  String get settings_metronome => 'Métronome de cadence';

  @override
  String settings_stepsPerMin(int steps) {
    return '$steps pas/min';
  }

  @override
  String get settings_mapLayer => 'Carte';

  @override
  String get settings_backup => 'Sauvegarder toutes les courses (ZIP de GPX)';

  @override
  String get settings_privacy =>
      'Tes courses, tes parcours et ta position restent sur ton téléphone. Běhánek n\'a ni compte ni pub et n\'utilise aucune analyse tierce.';

  @override
  String get settings_stats => 'Statistiques d\'utilisation anonymes';

  @override
  String get settings_statsHelp =>
      'Quels écrans et fonctions sont utilisés, jamais ta position ni tes parcours. Aide à améliorer Běhánek.';

  @override
  String get map_satellite => 'Satellite';

  @override
  String get map_topo => 'Rando';

  @override
  String get run_title => 'Course';

  @override
  String get run_locationOff =>
      'La localisation est désactivée sur ton téléphone. Sans elle, je ne peux pas enregistrer la course.';

  @override
  String get run_locationNeeded =>
      'Běhánek a besoin de la localisation « pendant l\'utilisation de l\'app » pour enregistrer ton parcours. Il ne l\'envoie nulle part : elle reste sur ton téléphone.';

  @override
  String get run_allowLocation => 'Autoriser la localisation';

  @override
  String get run_gpsSearching => 'Recherche du GPS…';

  @override
  String run_gpsExcellent(int meters) {
    return 'GPS excellent (±$meters m)';
  }

  @override
  String run_gpsGood(int meters) {
    return 'GPS bon (±$meters m)';
  }

  @override
  String run_gpsWeak(int meters) {
    return 'GPS faible (±$meters m) — attends un peu';
  }

  @override
  String run_ghostPacer(String date, String distance) {
    return 'Fantôme : $date, $distance';
  }

  @override
  String get run_pacerFewRuns =>
      'Lièvre : pas encore assez de courses — j\'annoncerai seulement le temps et la distance';

  @override
  String run_pacerForm(int count) {
    return 'Lièvre : ta forme sur $count courses';
  }

  @override
  String run_pacerFormImprove(int count) {
    return 'Lièvre : ta forme sur $count courses, 2 % plus vite';
  }

  @override
  String get run_form => 'Forme';

  @override
  String get run_ghost => 'Fantôme';

  @override
  String get run_start => 'DÉPART';

  @override
  String get run_noGhost =>
      'Tu n\'as pas encore couru d\'ici — le fantôme a besoin d\'une course partie à moins de 300 m.';

  @override
  String get run_cancel => 'Annuler';

  @override
  String run_aheadOfGhost(int meters) {
    return '$meters m devant le fantôme';
  }

  @override
  String run_behindGhost(int meters) {
    return '$meters m derrière le fantôme';
  }

  @override
  String run_onTarget(String pace) {
    return 'dans le rythme ($pace)';
  }

  @override
  String run_fasterThan(int seconds, String pace) {
    return '$seconds s plus vite que $pace';
  }

  @override
  String run_slowerThan(int seconds, String pace) {
    return '$seconds s plus lent que $pace';
  }

  @override
  String get run_autoPaused => 'PAUSE AUTO';

  @override
  String get run_paused => 'EN PAUSE';

  @override
  String get run_weakGps => 'Signal GPS faible';

  @override
  String get run_resume => 'Reprendre';

  @override
  String get run_pause => 'Pause';

  @override
  String get run_numbers => 'Chiffres';

  @override
  String get run_map => 'Carte';

  @override
  String get run_waitingForLocation => 'En attente de la position…';

  @override
  String get run_stopped => 'Course arrêtée';

  @override
  String get run_save => 'Enregistrer';

  @override
  String get run_continue => 'Continuer';

  @override
  String get run_discardTitle => 'Jeter la course ?';

  @override
  String get run_discard => 'Jeter';

  @override
  String get run_discardBody => 'La course ne sera pas enregistrée.';

  @override
  String get run_slideToStop => 'Glisse pour arrêter';

  @override
  String get run_stop => 'STOP';

  @override
  String get stat_time => 'temps';

  @override
  String get stat_pace => 'allure';

  @override
  String get stat_average => 'moyenne';

  @override
  String get stat_distance => 'distance';

  @override
  String get stat_elevation => 'dénivelé m';

  @override
  String get detail_imported => 'Importée depuis un GPX';

  @override
  String get detail_splits => 'Temps intermédiaires';

  @override
  String get detail_pace => 'Allure';

  @override
  String get detail_elevation => 'Altitude';

  @override
  String get detail_exportGpx => 'Exporter en GPX';

  @override
  String get detail_trim => 'Couper début / fin';

  @override
  String get detail_deleteTitle => 'Supprimer la course ?';

  @override
  String get detail_delete => 'Supprimer';

  @override
  String get detail_deleteBody =>
      'La course et son parcours vont disparaître de ton téléphone. Impossible d\'annuler.';

  @override
  String get detail_deleteRun => 'Supprimer la course';

  @override
  String get detail_tooShort => 'Trop courte pour un temps intermédiaire.';

  @override
  String get detail_startMarker => 'D';

  @override
  String get detail_finishMarker => 'A';

  @override
  String get trim_title => 'Couper la course';

  @override
  String trim_keep(String from, String to) {
    return 'Garder $from – $to';
  }

  @override
  String get trim_save => 'Enregistrer la coupe';

  @override
  String get import_title => 'Importer des GPX';

  @override
  String get import_intro =>
      'Récupère ton historique depuis Strava, Garmin ou une autre appli — choisis des fichiers GPX ou tout un ZIP d\'export. Le lièvre y apprend ta forme tout de suite.';

  @override
  String get import_pick => 'Choisir des fichiers';

  @override
  String get import_pickOther => 'En choisir d\'autres';

  @override
  String import_done(int count) {
    return '$count courses importées.';
  }

  @override
  String import_doneSkipped(int count, int skipped) {
    return '$count courses importées, $skipped étaient déjà dans ton historique.';
  }

  @override
  String import_toImport(int count) {
    return '$count courses à importer';
  }

  @override
  String import_toImportSkipped(int count, int skipped) {
    return '$count courses à importer ($skipped ignorées)';
  }

  @override
  String get import_duplicate => 'Déjà dans ton historique';

  @override
  String import_andMore(int count) {
    return '… et $count autres fichiers';
  }

  @override
  String import_importN(int count) {
    return 'Importer $count courses';
  }

  @override
  String import_paid(String price) {
    return 'L\'import est la seule chose payante dans Běhánek : $price, une seule fois. Exporter tes courses reste toujours gratuit.';
  }

  @override
  String import_unlock(String price) {
    return 'Débloquer l\'import — $price';
  }

  @override
  String get import_restore => 'Restaurer l\'achat';

  @override
  String get import_storeUnavailable =>
      'La boutique n\'est pas disponible pour le moment.';

  @override
  String get import_purchaseFailed => 'L\'achat n\'a pas abouti.';

  @override
  String get import_errZip => 'Impossible d\'ouvrir le ZIP.';

  @override
  String get import_errInvalid => 'Le fichier n\'est pas un GPX valide.';

  @override
  String get import_errNoPoints => 'Le GPX ne contient aucun point de trace.';

  @override
  String get import_errNoTimes =>
      'Le GPX n\'a pas d\'horodatage — impossible de calculer l\'allure.';

  @override
  String get report_total => 'total';

  @override
  String get report_runs => 'courses';

  @override
  String get report_longest => 'la plus longue';

  @override
  String report_perWeek(String unit) {
    return '$unit par semaine';
  }

  @override
  String get report_paceTrend => 'Évolution de l\'allure';

  @override
  String get report_fewRuns => 'Pas assez de courses pour une tendance.';

  @override
  String get notif_recording => 'Enregistrement de ta course';

  @override
  String get notif_channel => 'Enregistrement de course';

  @override
  String cue_km(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilomètres',
      many: '$count de kilomètres',
      one: '1 kilomètre',
    );
    return '$_temp0';
  }

  @override
  String cue_kmDecimal(String value) {
    return '$value kilomètres';
  }

  @override
  String cue_mi(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count miles',
      many: '$count de miles',
      one: '1 mile',
    );
    return '$_temp0';
  }

  @override
  String cue_miDecimal(String value) {
    return '$value miles';
  }

  @override
  String cue_pace(String clock) {
    return 'allure $clock';
  }

  @override
  String cue_time(String clock) {
    return 'temps $clock';
  }

  @override
  String get cue_onTarget => 'dans le rythme';

  @override
  String cue_faster(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count secondes plus vite',
      many: '$count de secondes plus vite',
      one: '1 seconde plus vite',
    );
    return '$_temp0';
  }

  @override
  String cue_slower(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count secondes plus lent',
      many: '$count de secondes plus lent',
      one: '1 seconde plus lent',
    );
    return '$_temp0';
  }

  @override
  String cue_ahead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mètres devant',
      many: '$count de mètres devant',
      one: '1 mètre devant',
    );
    return '$_temp0';
  }

  @override
  String cue_behind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mètres derrière',
      many: '$count de mètres derrière',
      one: '1 mètre derrière',
    );
    return '$_temp0';
  }
}
