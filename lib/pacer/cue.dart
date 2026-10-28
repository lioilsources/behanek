import '../core/units.dart';

enum CueLang { cs, en }

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

  String _num(double v, int decimals) {
    final s = v.toStringAsFixed(decimals);
    return lang == CueLang.cs ? s.replaceAll('.', ',') : s;
  }

  String _distance(double m) {
    final v = m / unit.meters;
    final rounded = double.parse(v.toStringAsFixed(1));
    final whole = rounded == rounded.roundToDouble();
    final n = whole ? _num(rounded, 0) : _num(rounded, 1);
    if (lang == CueLang.en) {
      final w = unit == DistanceUnit.km ? 'kilometer' : 'mile';
      return '$n ${rounded == 1 ? w : '${w}s'}';
    }
    if (unit == DistanceUnit.km) {
      return '$n ${whole ? _csPlural(rounded.toInt(), 'kilometr', 'kilometry', 'kilometrů') : 'kilometru'}';
    }
    return '$n ${whole ? _csPlural(rounded.toInt(), 'míle', 'míle', 'mil') : 'míle'}';
  }

  /// "5 10" čte TTS přirozeně jako "pět deset"; "5:10" by četl jako čas.
  String _clock(double seconds) {
    final s = seconds.round();
    final h = s ~/ 3600, m = (s % 3600) ~/ 60, sec = s % 60;
    final ss = sec.toString().padLeft(2, '0');
    return h > 0 ? '$h ${m.toString().padLeft(2, '0')} $ss' : '$m $ss';
  }

  String _pace(double sPerKm) {
    final perUnit = sPerKm * unit.meters / 1000.0;
    return lang == CueLang.cs ? 'tempo ${_clock(perUnit)}' : 'pace ${_clock(perUnit)}';
  }

  String _time(double s) => lang == CueLang.cs ? 'čas ${_clock(s)}' : 'time ${_clock(s)}';

  String _onTarget() => lang == CueLang.cs ? 'v plánu' : 'on target';

  String _delta(int s, {required bool faster}) {
    if (lang == CueLang.en) {
      return '$s ${s == 1 ? 'second' : 'seconds'} ${faster ? 'faster' : 'slower'}';
    }
    return 'o $s ${_csPlural(s, 'sekundu', 'sekundy', 'sekund')} ${faster ? 'rychleji' : 'pomaleji'}';
  }

  String _ghost(int m, bool ahead) {
    if (lang == CueLang.en) return '$m meters ${ahead ? 'ahead' : 'behind'}';
    return '$m ${_csPlural(m, 'metr', 'metry', 'metrů')} ${ahead ? 'napřed' : 'pozadu'}';
  }

  static String _csPlural(int n, String one, String few, String many) {
    if (n == 1) return one;
    if (n >= 2 && n <= 4) return few;
    return many;
  }
}
