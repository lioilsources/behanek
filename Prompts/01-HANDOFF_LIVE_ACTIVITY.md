# Handoff: Live Activity (iOS) + živá notifikace (Android) — dokončení na Macu

Pro Claude Code v lokálním terminálu na Macu s přístupem ke Chrome (přihlášený Apple Developer účet
a GitHub). Kód je hotový ve větvi `claude/relaxed-carson-hrw8pz`; zbývá Apple portál, secret,
ověření buildu a test na telefonu. Komunikuj česky.

## Stav

- Commity `d551cad` (feature) a `7b0d456` (úklid `android/build`) na `origin/claude/relaxed-carson-hrw8pz`.
- Ověřeno v cloudu (Linux): `flutter analyze` čisto, `flutter test` zelené, `flutter build apk --debug` OK.
- **Neověřeno:** iOS se nekompiloval (nebyl Xcode), nic neběželo na skutečném telefonu.

Co přibylo:
- `lib/gps/live_status.dart` — kanál `behanek/live` (`prepare` / `update` / `end`), throttling ~5 s,
  hned při pauze/pokračování. Napojeno v `lib/gps/run_controller.dart` (`_pushLive`, `live.end()` v `_reset`).
- iOS: widget extension `ios/BehanekLive/` (cíl `BehanekLive`, bundle `com.ol1n.behanek.BehanekLive`,
  iOS 16.2+), `ios/Runner/LiveRunPlugin.swift` (ActivityKit), registrace v `AppDelegate.swift`,
  `NSSupportsLiveActivities` v `Runner/Info.plist`, ActivityKit weak-linked v Runneru.
  Cíl přidán do `project.pbxproj` gemem `xcodeproj`; fáze „Embed Foundation Extensions“ je před „Thin Binary“.
- Android: `LiveRunNotification.kt` přepisuje foreground notifikaci geolocatoru (stejné id 75415,
  vlastní kanál `behanek_live`, IMPORTANCE_LOW), Android 16 `setRequestPromotedOngoing` +
  `setShortCriticalText`; `androidx.core:core:1.17.0`; `POST_PROMOTED_NOTIFICATIONS` v manifestu.
- CI: `release-ios.yml` instaluje dva profily, `scripts/ci_ios_signing.py` bere `bundle=profil` páry,
  `ios/ExportOptions.plist` má druhý klíč. Nový secret `IOS_PROVISION_PROFILE_LIVE_BASE64`.

## Úkoly

### 1. Apple Developer portál (Chrome, developer.apple.com/account/resources)
1. **Identifiers → +** → App IDs → App → Description `Behanek Live`,
   Bundle ID Explicit `com.ol1n.behanek.BehanekLive`. Žádné capabilities. Register.
   (Pokud už existuje — např. ho založil automatický podpis Xcode — jen ho použij.)
2. **Profiles → +** → Distribution → **App Store Connect** → App ID `com.ol1n.behanek.BehanekLive`
   → certifikát **stejný Apple Distribution**, jaký je v secretu `IOS_P12_BASE64`
   (porovnej s certifikátem v existujícím profilu pro `com.ol1n.behanek`) → název `Behanek Live AppStore`
   → Generate → stáhnout `.mobileprovision`.
3. Nic neměň na existujícím App ID / profilu `com.ol1n.behanek` ani v App Store Connect.
   Před každým potvrzením v portálu se zeptej uživatele.

### 2. GitHub secret
```
base64 -i ~/Downloads/<stažený>.mobileprovision | gh secret set IOS_PROVISION_PROFILE_LIVE_BASE64 -R lioilsources/behanek
gh secret list -R lioilsources/behanek | grep PROVISION
```

### 3. Lokální iOS build (tady se teprve ukáže, jestli Swift kompiluje)
```
git fetch origin && git checkout claude/relaxed-carson-hrw8pz
flutter pub get && (cd ios && pod install)
flutter build ios --release --no-codesign
```
Pravděpodobná místa chyb a co s nimi:
- Swift v `ios/BehanekLive/RunLiveActivity.swift` (DynamicIsland closure, `Text(timerInterval:)`) — opravit
  podle hlášky, zachovat vzhled (lime `#C6FF00`, černé pozadí, oranžová pauza).
- „Cycle inside Runner“ → v Runneru musí být „Embed Foundation Extensions“ před „Thin Binary“.
- Chybějící `FLUTTER_BUILD_NAME` v extension → `ios/BehanekLive/BehanekLive.xcconfig` includuje
  `../Flutter/Generated.xcconfig` (vzniká `flutter pub get`).
- Podpis extension lokálně: automatický, tým `P82HWPG7FN`.

### 4. Test na telefonech
- **iPhone (ideálně s Dynamic Islandem):** `flutter run --release`, spustit běh, zamknout →
  Live Activity na zamčené obrazovce; odsunout appku → Dynamic Island (compact: ikona+čas | vzdálenost).
  Pauza → čas stojí, „PAUZA“. Uložit/zahodit → aktivita zmizí. Zkontrolovat i po ~10 min se zhasnutým displejem.
- **Android:** povolit notifikace na obrazovce Běh; během běhu notifikace se vzdáleností, tempem
  a tikajícím časem; Android 16 → čip ve stavovém řádku. Po uložení notifikace zmizí.

### 5. Dokončení
- Opravy commitni do stejné větve a pushni (bez force push).
- Pak se zeptej uživatele, jestli založit PR do `main`. Release tag dělá uživatel.
