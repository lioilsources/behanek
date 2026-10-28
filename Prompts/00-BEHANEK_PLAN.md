# BEHANEK_PLAN.md — Běhánek, minimalistická běžecká appka (handoff pro Opus)

Název: **Běhánek** (bundle id `behanek`). Značka se nepřekládá, zůstává s háčky ve všech storech.
Store listing: „Běhánek: <podtitul>" — překládá se jen podtitul (App Store název+subtitle i Play title jsou lokalizovatelné per jazyk).
Ikona na ploše (`CFBundleDisplayName` / `android:label`): jen „Běhánek". Vyhledatelnost řešit podtitulem a keywords (running tracker, GPS run, pacer).
Monetizace: **zdarma**, jediný in-app nákup = **Import z cizí appky (GPX) za 0,99 €/$**. Žádné předplatné, žádné další IAP.
Platformy: iOS + Android, Flutter. Jeden vývojář (Ol1n), první uživatel = kamarád běžec.

---

## 1. Vize v jedné větě

Běžecká appka, která dělá jen to, co běžec při běhu potřebuje: zaznamená běh, ukáže ho na mapě,
a během běhu ti do sluchátek tiše říká, jak jsi na tom proti své vlastní formě. Nic víc.

## 2. Ne-cíle (co appka NIKDY nedělá)

- Žádný účet, žádný server, žádná synchronizace, žádná analytika, žádné reklamy.
- Žádné sociální funkce (feed, kudos, leaderboardy, sdílení do sítí).
- Žádné push notifikace, žádné popupy, žádné "rate us", žádné onboarding tutoriály.
- Žádný jukebox / přehrávač hudby. Hudbu si uživatel pouští jinde.
- Není to zdravotní aplikace: žádné diagnózy, žádné zóny tepu, žádné "VO2max".
- Žádné tréninkové plány, coaching, výzvy, odznaky.

Pravidlo pro každou novou funkci: **pokud ji nepotřebuješ v momentě, kdy máš na nohou boty, nepatří do appky.**

## 3. Funkce v1 (MVP)

### 3.1 Historie běhů
- Seznam běhů: datum, vzdálenost, čas, průměrné tempo, malá miniatura trasy.
- Detail běhu: mapa (satelit / turistická), km splity (tempo per km), převýšení, graf tempa v čase.
- Smazat běh. Oříznout začátek/konec běhu (GPS šum při startu, zapomenuté vypnutí).
- Měsíční souhrn: celkem km, počet běhů, trend tempa.

### 3.2 Aktivní běh
- Start s krátkým odpočtem (3-2-1), aby šel telefon do kapsy/pásku.
- Obrazovka: **obrovská čísla** (čas, km, aktuální tempo, průměrné tempo). Čitelné na slunci, vysoký kontrast.
- Ovládání: velká tlačítka, zámek proti nechtěnému dotyku (slide to stop), stop vyžaduje potvrzení.
- Pauza / pokračovat; auto-pauza při zastavení (semafory) — zapínatelné.
- Odložení běhu bez uložení ("zahodit").
- Běží spolehlivě na pozadí se zhasnutým displejem 2+ hodiny.

### 3.3 Mapa
- Dva podklady: satelit a turistická (vrstevnice, stezky).
- Živá trasa během běhu (volitelně, hlavní je číselná obrazovka).
- Detail v historii: celá trasa, start/cíl markery, km značky.

### 3.4 Pacer — jádro appky
Aktuální běh "přebírá formu" z historie a v intervalech (30 s / 1 min, nastavitelné) ti řekne, jak jsi na tom.

**Model formy (v1, jednoduchý a vysvětlitelný):**
1. Vezmi posledních N (např. 10) běhů podobné délky (±30 %) za posledních ~60 dní.
2. Pro každý km spočítej medián tempa → "tvoje typické tempo na k-tém km".
3. Cíl pro dnešní běh = tento profil, volitelně posunutý o malé zlepšení (např. −2 %), nebo "jen držet".
4. Aktuální delta = rolling tempo za posledních ~200 m vs. cíl v tomto bodě trasy/vzdálenosti.

**Výstup v intervalu:** krátký hlasový cue (TTS, cs/en) např. "3,2 km, 5:10, o pět sekund rychleji" — max ~3 s řeči.
Plus haptika/tón bez řeči: dva krátké tóny = zrychli, jeden dlouhý = zpomal, nic = v cíli. Uživatel si vybere: hlas / tóny / obojí / nic.

**Režim "duch" (ghost):** místo mediánu běžíš proti jednomu konkrétnímu minulému běhu (stejná trasa) — "jsi 40 m před sebou z minulého týdne". Jednoduché na implementaci, silně motivační, bez sociálna.

**Když historie není** (první běhy): pacer mlčí nebo jen hlásí čas/vzdálenost. Žádné vymyšlené cíle.

### 3.5 Audio chování
- Při hlasovém cue **ztlumit** (duck) ostatní appky, ne pauznout. Po cue vrátit hlasitost.
  - iOS: `AVAudioSession` kategorie `.playback`, options `.duckOthers` + `.interruptSpokenAudioAndMixWithOthers`.
  - Android: `AudioFocus` `AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK`.
- Cue musí fungovat i když appka běží na pozadí a displej je zhasnutý.
- Metronom kadence (volitelný, vypnutý by default): klik v nastavitelných BPM (160–190 spm). Jediný "zvukový přehrávač" v appce.
- Ovládání z tlačítek sluchátek: play/pause = pauza/pokračovat běhu (media button events).

### 3.6 Nastavení (jedna obrazovka, krátká)
- Jednotky km/mi. Jazyk hlasu. Interval cue. Režim cue (hlas/tóny/obojí/nic). Auto-pauza. Metronom BPM. Mapový podklad.

### 3.7 Export
- **GPX** per běh (standard, otevře každá jiná appka).
- **Import GPX** (jednotlivě i hromadně) — kamarád má historii ve Stravě/Garminu; bez importu začíná pacer od nuly. Toto je klíčové pro adopci.
  - **Jediný placený prvek appky: jednorázový IAP 0,99** (non-consumable, StoreKit 2 / Play Billing, `in_app_purchase`). Export je vždy zdarma — uživatel nikdy neplatí za odchod se svými daty.
  - Zdarma lze import vyzkoušet na 1 souboru (náhled, co se naimportuje), zaplatit až pro skutečné uložení. Obnovení nákupu (restore) povinné na iOS.
- Měsíční report: PNG/PDF s grafy (km/týden, trend tempa, nejdelší běh). Vznikne v Historii, uživatel si ho sám uloží/sdílí přes systémový share sheet. Žádné automatické generování, žádná notifikace.

## 4. Datový model (lokální, SQLite)

```
runs
  id, started_at, ended_at, distance_m, moving_time_s, elapsed_time_s,
  avg_pace_s_per_km, elev_gain_m, elev_loss_m, notes (text, volitelné),
  source ('gps' | 'gpx_import'), deleted_at

track_points
  run_id, t (ms od startu), lat, lon, alt, accuracy_m, speed_mps,
  hr (nullable — rezervováno), cadence_spm (nullable — rezervováno)

splits
  run_id, km_index, pace_s_per_km, elev_delta_m

settings
  key, value
```

- `hr` a `cadence` sloupce existují od začátku, ale v1 je nikdy neplní. Appka je "otevřená" směrem k senzorům bez migrace.
- Kalorie: **nepočítat v v1**. Pokud někdy ano, derivovat z distance+váhy při zobrazení, nikdy neukládat. Váha by byla jediné "zdravotní" datum — raději vůbec.
- Bez záloh na server. Riziko: ztráta telefonu = ztráta historie. Řešení v1: hromadný export GPX (zip) do Files/Drive přes share sheet. Volitelná automatická záloha do iCloud Drive / Google Drive **souboru** (ne vlastní backend) = kandidát na v1.1.

## 5. Architektura (Flutter)

```
lib/
  core/        modely, SQLite (drift), jednotky, formátování tempa
  gps/         sběr poloh, filtr, auto-pauza, výpočet vzdálenosti/splitů
  pacer/       model formy, ghost, generování cue textu
  audio/       TTS, tóny, ducking, metronom, media buttons
  map/         podklady, render trasy
  ui/          history, run, detail, settings — záměrně málo obrazovek
  export/      GPX read/write, report render
```

**Klíčové platformové věci (Opus musí ověřit knihovny, ne předpokládat):**
- Pozadí + GPS: na Androidu je **foreground service s trvalou notifikací povinný** (jediná "notifikace", kterou appka má — systém ji vyžaduje; ukazuje živě čas/km). Na iOS `UIBackgroundModes: location` + `allowsBackgroundLocationUpdates`. Zvážit iOS Live Activity (lock screen / Dynamic Island) jako jedinou cestu, jak vidět běh bez odemčení — není to notifikace v uživatelském smyslu.
- Kandidáti knihoven: `geolocator` (+ vlastní foreground service), `flutter_background_geolocation` (placená Android licence — rozhodnout), `flutter_tts`, `audio_session` (ducking), `audioplayers`/`just_audio` pro tóny a metronom, `drift` pro SQLite, `flutter_map` s tile providery vs. nativní `google_maps_flutter` / `apple_maps_flutter`.
- Mapové podklady: satelit = Google Maps (API klíč) nebo Apple MapKit (iOS zdarma) nebo Mapbox; turistická = Mapy.cz API / OpenTopoMap / Thunderforest. Rozhodnout podle ceny a licence; cache dlaždic pro offline detail běhu je nice-to-have.
- GPS kvalita: zahazovat body s accuracy > ~25 m, lehký Kalman/medián filtr na rychlost, vzdálenost z filtrovaných bodů (Haversine), nepočítat pohyb při speed < 0,5 m/s (drift při stání).
- Baterie: požadovat GPS 1 Hz během běhu, mimo běh GPS vypnutý. Cíl < 10 %/h.
- Oprávnění: "Always" lokace jen pokud bez ní pozadí nefunguje; jasně vysvětlit jednou, bez nátlaku.

## 6. UI principy

- Tři hlavní obrazovky: **Historie**, **Běh**, **Detail**. Čtvrtá je Nastavení.
- Tmavé téma by default, velká typografie, žádné karty-v-kartách, žádné ikony bez textu.
- Obrazovka běhu funguje i v rukavicích: cíle ≥ 64 px, žádná gesta kromě "slide to stop".
- Žádný splash s logem, žádný "what's new".

## 7. Otevřené otázky (rozhodnout před kódem)

1. ~~Název~~ — rozhodnuto: Běhánek. Zbývá ikona; publikovat jako "Ol1n" na obou storech.
2. ~~Monetizace~~ — rozhodnuto: zdarma + IAP import 0,99.
3. **Apple Watch / Garmin / HR pásek**: v1 **ne**. Datový model je připravený. Pokud později, nejdřív BLE HR pásek (jednoduché, univerzální), Watch companion až pak.
4. **Zápis do Apple Health / Health Connect**: v1 ne. Mnoho lidí ale chce běhy v "kroužcích". Kandidát na v1.1 jako opt-in přepínač (pouze zápis, nikdy čtení).
5. **Běh na pásu / indoor** bez GPS: v1 ne (ruční zadání času+km jako jediná možnost, pokud vůbec).
6. Licence Android background-geolocation knihovny vs. vlastní foreground service.
7. Mapový provider (cena satelitních dlaždic).

## 8. Fáze pro Opus

**Fáze 0 — Spike (1–2 dny):** ověřit na obou platformách: GPS na pozadí 1 h se zhasnutým displejem, TTS cue s duckingem při běžící Spotify, media button pauza. Bez UI. Pokud něco z toho nejde v Flutteru čistě, zvážit nativní modul.

**Fáze 1 — Záznam:** datový model, sběr GPS, filtr, auto-pauza, obrazovka Běh s velkými čísly, uložení, Historie se seznamem.

**Fáze 2 — Detail a mapa:** mapa s dvěma podklady, splity, převýšení, graf tempa, mazání a ořez.

**Fáze 3 — Pacer:** model formy, ghost, cue v intervalech, tóny, metronom, nastavení.

**Fáze 4 — Export/import:** GPX obousměrně, hromadný import, IAP 0,99 za import (sandbox test na obou storech), měsíční report.

**Fáze 5 — Leštění:** baterie, rukavice/slunce, store assets, privacy text ("žádná data neopouští telefon").

Každá fáze končí testem na skutečném běhu (kamarád). Definition of done fáze 1: 10km běh zaznamenán bez výpadku, vzdálenost ±2 % proti Garminu.

## 9. Co říct ve storu (draft)

> Běžecká appka bez účtu, bez reklam, bez sociálních sítí. Tvoje běhy zůstávají v telefonu.
> Zaznamená trasu, ukáže ji na satelitní nebo turistické mapě a během běhu ti do sluchátek tiše říká,
> jak jsi na tom proti sobě.
