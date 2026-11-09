import 'package:flutter/widgets.dart';

import 'generated/app_localizations.dart';

export 'generated/app_localizations.dart';

/// Jazyk appky pro kód bez BuildContextu (report, notifikace, formát čísel a dat).
/// Nastavuje ho MaterialApp podle jazyka telefonu.
Locale appLocale = const Locale('cs');

AppLocalizations get l10n => lookupAppLocalizations(appLocale);

/// Tag pro intl (čísla, data). Tradiční čínština nemá v intl `zh_Hant`, jen `zh_TW`.
String get localeTag => appLocale.scriptCode == 'Hant' ? 'zh-TW' : appLocale.toLanguageTag();

extension L10nContext on BuildContext {
  AppLocalizations get l => AppLocalizations.of(this);
}
