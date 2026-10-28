import 'dart:async';
import 'dart:io';

import 'package:audio_session/audio_session.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:just_audio/just_audio.dart';

import '../core/settings.dart';
import '../pacer/cue.dart';

/// Hlas, tóny a metronom. Ostatní appky (Spotify…) se při cue jen ztlumí, nepauznou.
class AudioCues {
  final _tts = FlutterTts();
  late final AudioSession _session;
  final _short = AudioPlayer(handleAudioSessionActivation: false, handleInterruptions: false);
  final _long = AudioPlayer(handleAudioSessionActivation: false, handleInterruptions: false);
  final _click = AudioPlayer(handleAudioSessionActivation: false, handleInterruptions: false);
  Timer? _metronome;
  bool _busy = false;

  Future<void> init() async {
    _session = await AudioSession.instance;
    await _session.configure(const AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playback,
      avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions(
          0x2 /* duckOthers */ | 0x11 /* interruptSpokenAudioAndMixWithOthers (+mix) */),
      avAudioSessionMode: AVAudioSessionMode.voicePrompt,
      androidAudioAttributes: AndroidAudioAttributes(
        contentType: AndroidAudioContentType.speech,
        usage: AndroidAudioUsage.assistanceNavigationGuidance,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientMayDuck,
    ));

    await _tts.awaitSpeakCompletion(true);
    if (Platform.isIOS) {
      await _tts.setSharedInstance(true);
      await _tts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.playback,
        [
          IosTextToSpeechAudioCategoryOptions.duckOthers,
          IosTextToSpeechAudioCategoryOptions.interruptSpokenAudioAndMixWithOthers,
        ],
        IosTextToSpeechAudioMode.voicePrompt,
      );
    } else {
      await _tts.setAudioAttributesForNavigation();
    }

    await _short.setAsset('assets/sounds/beep_short.wav');
    await _long.setAsset('assets/sounds/beep_long.wav');
    await _click.setAsset('assets/sounds/click.wav');
  }

  Future<void> setLanguage(CueLang lang) async {
    await _tts.setLanguage(lang == CueLang.cs ? 'cs-CZ' : 'en-US');
  }

  Future<void> _play(AudioPlayer p) async {
    await p.seek(Duration.zero);
    await p.play();
  }

  Future<void> _tone(ToneSignal t) async {
    switch (t) {
      case ToneSignal.none:
        return;
      case ToneSignal.speedUp: // dva krátké = zrychli
        await _play(_short);
        await Future.delayed(const Duration(milliseconds: 180));
        await _play(_short);
      case ToneSignal.slowDown: // jeden dlouhý = zpomal
        await _play(_long);
    }
  }

  /// Ztlumí ostatní, řekne cue, vrátí hlasitost. Překrývající se cue zahodí.
  Future<void> play(Cue cue, CueMode mode) async {
    if (mode == CueMode.off || _busy) return;
    _busy = true;
    try {
      await _session.setActive(true);
      if (mode == CueMode.tones || mode == CueMode.both) await _tone(cue.tone);
      if (mode == CueMode.voice || mode == CueMode.both) {
        if (mode == CueMode.both && cue.tone != ToneSignal.none) {
          await Future.delayed(const Duration(milliseconds: 300));
        }
        await _tts.speak(cue.text);
      } else {
        await Future.delayed(const Duration(milliseconds: 700));
      }
    } finally {
      await _session.setActive(false,
          avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation);
      _busy = false;
    }
  }

  Future<void> say(String text) => play(Cue(text, ToneSignal.none), CueMode.voice);

  Future<void> countdownBeep({bool last = false}) async {
    await _session.setActive(true);
    await _play(last ? _long : _short);
  }

  Future<void> releaseFocus() => _session.setActive(false,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation);

  /// Kadenční metronom. Jediný "přehrávač" v appce.
  void startMetronome(int bpm) {
    stopMetronome();
    _metronome = Timer.periodic(Duration(microseconds: 60000000 ~/ bpm), (_) {
      if (!_busy) _play(_click);
    });
  }

  void stopMetronome() {
    _metronome?.cancel();
    _metronome = null;
  }

  bool get metronomeRunning => _metronome != null;
}
