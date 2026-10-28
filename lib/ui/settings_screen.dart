import 'package:flutter/material.dart';

import '../core/settings.dart';
import '../core/units.dart';
import '../export/share.dart';
import '../pacer/cue.dart';
import 'app.dart';

/// Jedna krátká obrazovka. Každá volba je text, žádné ikony bez popisku.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final st = s.settings;
    return Scaffold(
      appBar: AppBar(title: const Text('Nastavení')),
      body: ListenableBuilder(
        listenable: st,
        builder: (context, _) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _choice<DistanceUnit>('Jednotky', DistanceUnit.values, st.unit, (v) => v.label,
                (v) => st.set('unit', v, () => st.unit = v)),
            _choice<CueLang>('Jazyk hlasu', CueLang.values, st.cueLang,
                (v) => v == CueLang.cs ? 'Čeština' : 'English',
                (v) => st.set('cueLang', v, () => st.cueLang = v)),
            _choice<CueMode>(
                'Hlášení',
                CueMode.values,
                st.cueMode,
                (v) => switch (v) {
                      CueMode.voice => 'Hlas',
                      CueMode.tones => 'Tóny',
                      CueMode.both => 'Obojí',
                      CueMode.off => 'Nic',
                    },
                (v) => st.set('cueMode', v, () => st.cueMode = v)),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text('Tóny: dva krátké = zrychli, jeden dlouhý = zpomal, ticho = v plánu.',
                  style: TextStyle(color: Colors.white60)),
            ),
            _choice<int>('Interval hlášení', AppSettings.cueIntervals, st.cueIntervalS,
                (v) => v < 60 ? '$v s' : '${v ~/ 60} min',
                (v) => st.set('cueIntervalS', v, () => st.cueIntervalS = v)),
            _choice<PacerTarget>('Cíl podle formy', PacerTarget.values, st.pacerTarget,
                (v) => v == PacerTarget.hold ? 'Jen držet' : 'O 2 % rychleji',
                (v) => st.set('pacerTarget', v, () => st.pacerTarget = v)),
            _switch('Auto-pauza při zastavení', st.autoPause,
                (v) => st.set('autoPause', v, () => st.autoPause = v)),
            _switch('Metronom kadence', st.metronome,
                (v) => st.set('metronome', v, () => st.metronome = v)),
            if (st.metronome)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Text('${st.metronomeBpm} kroků/min', style: const TextStyle(fontSize: 18)),
                    Expanded(
                      child: Slider(
                        value: st.metronomeBpm.toDouble(),
                        min: 160,
                        max: 190,
                        divisions: 30,
                        onChanged: (v) => st.set('metronomeBpm', v.round(), () => st.metronomeBpm = v.round()),
                      ),
                    ),
                  ],
                ),
              ),
            _choice<MapLayer>('Mapový podklad', MapLayer.values, st.mapLayer,
                (v) => v == MapLayer.satellite ? 'Satelit' : 'Turistická',
                (v) => st.set('mapLayer', v, () => st.mapLayer = v)),
            const Divider(height: 40),
            OutlinedButton(
              onPressed: () async => shareAllRunsZip(s.db, await s.db.watchRuns().first),
              child: const Text('Zálohovat všechny běhy (ZIP s GPX)'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Žádná data neopouští telefon. Běhánek nemá účet, server, analytiku ani reklamy.',
              style: TextStyle(color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }

  Widget _choice<T>(String title, List<T> values, T current, String Function(T) label,
      void Function(T) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          SegmentedButton<T>(
            showSelectedIcon: false,
            segments: [for (final v in values) ButtonSegment(value: v, label: Text(label(v)))],
            selected: {current},
            onSelectionChanged: (sel) => onChanged(sel.first),
          ),
        ],
      ),
    );
  }

  Widget _switch(String title, bool value, void Function(bool) onChanged) => SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        value: value,
        onChanged: onChanged,
      );
}
