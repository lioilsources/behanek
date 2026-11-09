import 'dart:ui';

import '../core/units.dart';
import '../l10n/l10n.dart';

/// Jazyk hlasu. Název hodnoty je kód jazyka appky (ukládá se do nastavení).
enum CueLang {
  cs('cs-CZ', 'Čeština'),
  en('en-US', 'English'),
  de('de-DE', 'Deutsch'),
  es('es-ES', 'Español'),
  fr('fr-FR', 'Français'),
  it('it-IT', 'Italiano'),
  nl('nl-NL', 'Nederlands'),
  pl('pl-PL', 'Polski'),
  pt('pt-BR', 'Português (Brasil)'),
  hu('hu-HU', 'Magyar'),
  uk('uk-UA', 'Українська'),
  ru('ru-RU', 'Русский'),
  ja('ja-JP', '日本語'),
  ko('ko-KR', '한국어'),
  vi('vi-VN', 'Tiếng Việt'),
  ar('ar-SA', 'العربية'),
  bn('bn-IN', 'বাংলা'),
  ca('ca-ES', 'Català'),
  da('da-DK', 'Dansk'),
  el('el-GR', 'Ελληνικά'),
  fi('fi-FI', 'Suomi'),
  gu('gu-IN', 'ગુજરાતી'),
  he('he-IL', 'עברית'),
  hi('hi-IN', 'हिन्दी'),
  hr('hr-HR', 'Hrvatski'),
  id('id-ID', 'Bahasa Indonesia'),
  kn('kn-IN', 'ಕನ್ನಡ'),
  ml('ml-IN', 'മലയാളം'),
  mr('mr-IN', 'मराठी'),
  ms('ms-MY', 'Bahasa Melayu'),
  nb('nb-NO', 'Norsk bokmål'),
  or('or-IN', 'ଓଡ଼ିଆ'),
  pa('pa-IN', 'ਪੰਜਾਬੀ'),
  ptPT('pt-PT', 'Português (Portugal)'),
  ro('ro-RO', 'Română'),
  sk('sk-SK', 'Slovenčina'),
  sl('sl-SI', 'Slovenščina'),
  sv('sv-SE', 'Svenska'),
  ta('ta-IN', 'தமிழ்'),
  te('te-IN', 'తెలుగు'),
  th('th-TH', 'ไทย'),
  tr('tr-TR', 'Türkçe'),
  ur('ur-PK', 'اردو'),
  zh('zh-CN', '简体中文'),
  zhHant('zh-TW', '繁體中文');

  final String tts;
  final String nativeName;
  const CueLang(this.tts, this.nativeName);

  /// Locale textů hlášení; název hodnoty je kód jazyka appky, kromě variant s regionem/písmem.
  Locale get locale => switch (this) {
        ptPT => const Locale('pt', 'PT'),
        zhHant => const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        _ => Locale(name),
      };

  /// Jazyk telefonu, jinak angličtina.
  static CueLang of(Locale l) {
    switch (l.languageCode) {
      case 'pt':
        return l.countryCode == 'PT' ? ptPT : pt;
      case 'zh':
        final hant = l.scriptCode == 'Hant' ||
            (l.scriptCode == null && const {'TW', 'HK', 'MO'}.contains(l.countryCode));
        return hant ? zhHant : zh;
      case 'no' || 'nn':
        return nb;
    }
    return values.firstWhere((v) => v.name == l.languageCode, orElse: () => CueLang.en);
  }
}

/// Co pacer v intervalu sdělí bez řeči.
enum ToneSignal { none, speedUp, slowDown }

class Cue {
  final String text;
  final ToneSignal tone;
  const Cue(this.text, this.tone);
}

/// Tolerance, ve které je běžec "v cíli" a tóny mlčí.
const paceToleranceS = 3.0;
const ghostToleranceM = 20.0;

/// Krátký cue, max ~3 s řeči: vzdálenost, tempo, odchylka.
class CueBuilder {
  final CueLang lang;
  final DistanceUnit unit;

  const CueBuilder(this.lang, this.unit);

  Cue build({
    required double distanceM,
    required double movingTimeS,
    double? currentPace,
    double? targetPace,
    double? ghostDeltaM,
  }) {
    final parts = <String>[_distance(distanceM)];
    var tone = ToneSignal.none;

    if (targetPace == null && ghostDeltaM == null) {
      // Bez historie: žádné vymyšlené cíle, jen fakta.
      parts.add(_time(movingTimeS));
      return Cue(parts.join(', '), tone);
    }

    if (currentPace != null) parts.add(_pace(currentPace));

    if (ghostDeltaM != null) {
      final m = (ghostDeltaM.abs() / 10).round() * 10;
      if (ghostDeltaM <= -ghostToleranceM) tone = ToneSignal.speedUp;
      if (m >= 10) parts.add(_ghost(m, ghostDeltaM > 0));
    } else if (targetPace != null && currentPace != null) {
      final delta = currentPace - targetPace; // kladné = pomalejší než cíl
      final s = delta.abs().round();
      if (delta > paceToleranceS) tone = ToneSignal.speedUp;
      if (delta < -paceToleranceS) tone = ToneSignal.slowDown;
      parts.add(s <= paceToleranceS ? _onTarget() : _delta(s, faster: delta < 0));
    }
    return Cue(parts.join(', '), tone);
  }

  AppLocalizations get _l => lookupAppLocalizations(lang.locale);

  String _distance(double m) {
    final v = m / unit.meters;
    final rounded = double.parse(v.toStringAsFixed(1));
    final km = unit == DistanceUnit.km;
    if (rounded == rounded.roundToDouble()) {
      return km ? _l.cue_km(rounded.toInt()) : _l.cue_mi(rounded.toInt());
    }
    final n = formatDecimal(rounded, 1, lang.locale.toLanguageTag());
    return km ? _l.cue_kmDecimal(n) : _l.cue_miDecimal(n);
  }

  /// "5 10" čte TTS přirozeně jako "pět deset"; "5:10" by četl jako čas.
  String _clock(double seconds) {
    final s = seconds.round();
    final h = s ~/ 3600, m = (s % 3600) ~/ 60, sec = s % 60;
    final ss = sec.toString().padLeft(2, '0');
    return h > 0 ? '$h ${m.toString().padLeft(2, '0')} $ss' : '$m $ss';
  }

  String _pace(double sPerKm) => _l.cue_pace(_clock(sPerKm * unit.meters / 1000.0));

  String _time(double s) => _l.cue_time(_clock(s));

  String _onTarget() => _l.cue_onTarget;

  String _delta(int s, {required bool faster}) => faster ? _l.cue_faster(s) : _l.cue_slower(s);

  String _ghost(int m, bool ahead) => ahead ? _l.cue_ahead(m) : _l.cue_behind(m);
}
