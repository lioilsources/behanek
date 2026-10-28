# Běhánek

Minimalistická běžecká appka (Flutter, iOS + Android). Plán: `Prompts/00-BEHANEK_PLAN.md`.

```
flutter pub get
dart run build_runner build          # po změně lib/core/db.dart
flutter test
flutter run --dart-define=MAPY_API_KEY=...   # bez klíče: OpenTopoMap + Esri (jen vývoj)
```

## Struktura

```
lib/core/    db.dart (drift: runs, track_points, splits, settings), settings, units, track
lib/gps/     geo (haversine, filtr, statistiky, splity), run_tracker (živý výpočet, auto-pauza),
             location_source (geolocator 1 Hz, foreground service / background mode), run_controller
lib/pacer/   form_model (medián formy, ghost), cue (texty cs/en, tóny)
lib/audio/   audio_cues (TTS + ducking, tóny, metronom)
lib/map/     tiles (Mapy.com / fallback), route_thumb
lib/export/  gpx, importer (GPX/ZIP/.gz), share (GPX, ZIP záloha, PNG), report, purchases (IAP)
lib/ui/      history, run, detail, trim, settings, import
```

## Rozhodnutí (otevřené otázky z plánu)

- **GPS na pozadí (ot. 6):** `geolocator` s vestavěnou foreground service (Android, typ `location`)
  a `allowBackgroundLocationUpdates` + `UIBackgroundModes: location, audio` (iOS). Žádná placená
  licence. Oprávnění jen „při používání“ — „vždy“ se nežádá.
- **Mapy (ot. 7):** Mapy.com REST API (`aerial` + `outdoor`) — obojí z jednoho zdroje, free tarif,
  klíč přes `--dart-define=MAPY_API_KEY`. Bez klíče fallback OpenTopoMap/Esri, který **není** pro
  store (licenční podmínky). Mapy.com vyžaduje atribuci a logo — logo ještě doplnit.
- **Bundle id:** `cz.ol1n.behanek` (Android i iOS), zobrazovaný název „Běhánek“. iOS min. 15.0.
- **IAP:** produkt `gpx_import` (non-consumable) — založit v App Store Connect i Play Console.
  Bez nákupu import ukáže náhled 1 souboru; export je vždy zdarma.
- **Odolnost:** body se zapisují do DB průběžně (každých ~10 s); běh přerušený pádem se při dalším
  startu uloží z bodů (`recoverUnfinished`).
- **Splity:** v DB vždy po km (podklad pro pacer); v detailu se pro míle přepočítají z bodů.
- **Pauza = přerušení úseku:** mezera > 20 s mezi body se nepočítá do vzdálenosti ani času
  (platí pro živý záznam, ořez i import).

## Stav fází

- **Fáze 1–4: kód hotový**, unit testy (`test/`) na výpočty, pacer, cue, GPX a DB.
  Ověřený build iOS simulátor + Android debug APK.
- **Fáze 0 (spike na zařízení) — neproběhla**, je potřeba fyzický telefon:
  GPS 1 h na pozadí se zhasnutým displejem, cue s duckingem při Spotify, baterie.
- **Nedokončeno / vědomě odloženo:**
  - Ovládání tlačítky sluchátek (media buttons). Na iOS remote commands dostává appka, která je
    „now playing“ — při běžící Spotify je to Spotify, ne Běhánek. Rozhodnout po spiku
    (`audio_service` by navíc přidal vlastní media notifikaci, což jde proti plánu).
  - Živý čas/km v Android notifikaci (geolocator má text statický) a iOS Live Activity.
  - Metronom + ducking: na iOS je jedna audio session; během metronomu může být hudba
    ztlumená trvale. Ověřit ve spiku.
  - Haptika (na pozadí s telefonem v kapse nemá smysl) — místo ní tóny.
  - Měsíční report jen PNG (bez PDF).
  - Fáze 5: ikona, store assets, logo Mapy.com, test na slunci/v rukavicích.
