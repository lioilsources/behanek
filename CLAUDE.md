# Běhánek

<!-- Max 80 řádků. Co se nevejde, jde do docs/ a sem jeden odkaz. Veřejné repo: žádné LAN IP, domovské cesty, ID. -->

## Účel
Minimalistická běžecká appka (Flutter, iOS + Android): GPS záznam běhu, pacer s hlasovými cue, mapy, GPX import/export. Bundle id `com.ol1n.behanek`.

## Build a test
```
flutter pub get
dart run build_runner build                   # po změně lib/core/db.dart
flutter analyze --no-fatal-infos && flutter test   # totéž co CI, gate před pushem
flutter run --dart-define=MAPY_API_KEY=...    # bez klíče fallback OpenTopoMap/Esri (jen vývoj)
```

## Mapa
- `lib/core/` drift DB (`db.dart`, generované `db.g.dart`), nastavení, jednotky
- `lib/gps/` geo výpočty, živý tracker, zdroj polohy, run controller
- `lib/pacer/` model formy a texty cue
- `lib/audio/` TTS, tóny, metronom
- `lib/map/` dlaždice (Mapy.com / fallback), náhled trasy
- `lib/export/` GPX, import, sdílení, report, IAP
- `lib/ui/` obrazovky
- `lib/l10n/` ARB překlady; `store/` texty do obchodů; `docs/` GitHub Pages (privacy, support) a `DISTRIBUCE.md`
- `.github/workflows/` CI a release iOS/Android

## Invarianty
- Mezera > 20 s mezi body se nepočítá do vzdálenosti ani času (živý záznam, ořez i import).
- Splity v DB vždy po km; míle se přepočítají z bodů.
- Fallback mapy bez klíče není pro store (licence).

## Kam dál
`README.md` (rozhodnutí a stav fází), `Prompts/00-BEHANEK_PLAN.md`, `docs/DISTRIBUCE.md`
