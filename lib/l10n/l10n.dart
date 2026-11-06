import 'package:flutter/widgets.dart';

import 'generated/app_localizations.dart';

export 'generated/app_localizations.dart';

/// Jazyk appky pro kód bez BuildContextu (report, notifikace, formát čísel a dat).
/// Nastavuje ho MaterialApp podle jazyka telefonu.
Locale appLocale = const Locale('cs');

AppLocalizations get l10n => lookupAppLocalizations(appLocale);

String get localeTag => appLocale.toLanguageTag();

extension L10nContext on BuildContext {
  AppLocalizations get l => AppLocalizations.of(this);
}
