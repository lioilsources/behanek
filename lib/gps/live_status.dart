import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../core/units.dart';
import '../l10n/l10n.dart';

/// Živý stav běhu mimo appku: iOS Live Activity (zamčená obrazovka + Dynamic Island),
/// Android trvalá notifikace (na Androidu 16+ jako Live Update ve stavovém řádku).
///
/// Čas tiká systém sám (posíláme čistý čas, nativní strana z něj spočte start stopek),
/// takže stačí posílat změny vzdálenosti/tempa jednou za pár sekund a hned při pauze.
class LiveRunStatus {
  static const _channel = MethodChannel('behanek/live');

  /// Mezi dvěma aktualizacemi bez změny pauzy — šetří baterii i limity systému.
  static const minInterval = Duration(seconds: 5);

  final bool enabled;
  LiveRunStatus({bool? enabled}) : enabled = enabled ?? (!kIsWeb && (Platform.isIOS || Platform.isAndroid));

  DateTime? _lastSent;
  bool? _lastPaused;
  bool _active = false;

  /// Před startem (obrazovka Běh): na Androidu 13+ si řekne o povolení notifikací.
  Future<void> prepare() => _call('prepare');

  Future<void> update({
    required double distanceM,
    required double movingTimeS,
    required double? paceSPerKm,
    required bool paused,
    required DistanceUnit unit,
    bool force = false,
  }) async {
    if (!enabled) return;
    final now = DateTime.now();
    final last = _lastSent;
    if (!force && _active && paused == _lastPaused && last != null && now.difference(last) < minInterval) {
      return;
    }
    _lastSent = now;
    _lastPaused = paused;
    _active = true;
    await _call('update', {
      'elapsedS': movingTimeS.round(),
      'paused': paused,
      'distance': formatDistance(distanceM, unit),
      'distanceUnit': unit.label,
      'pace': formatPace(paceSPerKm, unit),
      'paceUnit': unit.paceLabel,
      'paceLabel': l10n.stat_pace,
      'pausedLabel': l10n.run_paused,
      'channelName': l10n.notif_liveChannel,
    });
  }

  Future<void> end() async {
    if (!_active) return;
    _active = false;
    _lastSent = null;
    _lastPaused = null;
    await _call('end');
  }

  Future<void> _call(String method, [Object? args]) async {
    if (!enabled) return;
    try {
      await _channel.invokeMethod<void>(method, args);
    } catch (e) {
      // Live Activity / notifikace jsou bonus — záznam běhu kvůli nim nesmí spadnout.
      debugPrint('LiveRunStatus.$method: $e');
    }
  }
}
