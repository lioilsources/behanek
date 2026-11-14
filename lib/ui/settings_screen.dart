import 'package:flutter/material.dart';
import 'package:ol1n_telemetry/ol1n_telemetry.dart';

import '../core/settings.dart';
import '../core/units.dart';
import '../export/share.dart';
import '../l10n/l10n.dart';
import '../pacer/cue.dart';
import 'app.dart';

/// Jedna krátká obrazovka. Každá volba je text, žádné ikony bez popisku.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = App.of(context);
    final st = s.settings;
    final l = context.l;
    return Scaffold(
      appBar: AppBar(title: Text(l.settings_title)),
      body: ListenableBuilder(
        listenable: st,
        builder: (context, _) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _choice<DistanceUnit>(l.settings_units, DistanceUnit.values, st.unit, (v) => v.label,
                (v) => st.set('unit', v, () => st.unit = v)),
            // 15 jazyků se do segmentů nevejde.
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.settings_voiceLanguage, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  DropdownButton<CueLang>(
                    isExpanded: true,
                    value: st.cueLang,
                    items: [
                      for (final v in CueLang.values)
                        DropdownMenuItem(value: v, child: Text(v.nativeName, style: const TextStyle(fontSize: 18))),
                    ],
                    onChanged: (v) => v == null ? null : st.set('cueLang', v, () => st.cueLang = v),
                  ),
                ],
              ),
            ),
            _choice<CueMode>(
                l.settings_cues,
                CueMode.values,
                st.cueMode,
                (v) => switch (v) {
                      CueMode.voice => l.settings_cueVoice,
                      CueMode.tones => l.settings_cueTones,
                      CueMode.both => l.settings_cueBoth,
                      CueMode.off => l.settings_cueOff,
                    },
                (v) => st.set('cueMode', v, () => st.cueMode = v)),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(l.settings_tonesHelp, style: const TextStyle(color: Colors.white60)),
            ),
            _choice<int>(l.settings_cueInterval, AppSettings.cueIntervals, st.cueIntervalS,
                (v) => v < 60 ? '$v s' : '${v ~/ 60} min',
                (v) => st.set('cueIntervalS', v, () => st.cueIntervalS = v)),
            _choice<PacerTarget>(l.settings_pacerGoal, PacerTarget.values, st.pacerTarget,
                (v) => v == PacerTarget.hold ? l.settings_pacerHold : l.settings_pacerImprove,
                (v) => st.set('pacerTarget', v, () => st.pacerTarget = v)),
            _switch(l.settings_autoPause, st.autoPause,
                (v) => st.set('autoPause', v, () => st.autoPause = v)),
            _switch(l.settings_metronome, st.metronome,
                (v) => st.set('metronome', v, () => st.metronome = v)),
            if (st.metronome)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Text(l.settings_stepsPerMin(st.metronomeBpm), style: const TextStyle(fontSize: 18)),
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
            _choice<MapLayer>(l.settings_mapLayer, MapLayer.values, st.mapLayer,
                (v) => v == MapLayer.satellite ? l.map_satellite : l.map_topo,
                (v) => st.set('mapLayer', v, () => st.mapLayer = v)),
            const Divider(height: 40),
            OutlinedButton(
              onPressed: () async {
                Telemetry.feature('backup');
                await shareAllRunsZip(s.db, await s.db.watchRuns().first);
              },
              child: Text(l.settings_backup),
            ),
            const SizedBox(height: 24),
            Text(
              l.settings_privacy,
              style: const TextStyle(color: Colors.white60),
            ),
            // Vypínač jen v buildu, který má kam posílat (s klíčem).
            if (Telemetry.isConfigured)
              StatefulBuilder(
                builder: (context, setState) => SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(l.settings_stats, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  subtitle: Text(l.settings_statsHelp, style: const TextStyle(color: Colors.white60)),
                  value: Telemetry.isEnabled,
                  onChanged: (on) async {
                    await Telemetry.setEnabled(on);
                    setState(() {});
                  },
                ),
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
