# Distribuce Běhánka

Stejný postup jako u Kiriana: **tag `v*` → GitHub Actions → iOS do TestFlightu, Android do
Firebase App Distribution**, oba buildy i do GitHub Release.

```
git tag v0.1.0 && git push origin v0.1.0     # alpha/beta/rc v názvu tagu = prerelease
```

Ručně jde každý workflow spustit i bez tagu (Actions → Run workflow); pak se nahraje jen do
TestFlightu / App Distribution, GitHub Release nevznikne.

| Workflow | Kdy | Výstup |
|---|---|---|
| `ci.yml` | každý push / PR | `flutter analyze` + `flutter test` |
| `release-ios.yml` | tag `v*` | IPA + dSYM do Release, upload do TestFlightu |
| `release-android.yml` | tag `v*` | AAB + APK do Release, APK skupině `testeri` ve Firebase |

Verze buildu = tag bez `v` + číslo běhu (`v0.2.0` → `0.2.0+17`).

## Secrets v repu `lioilsources/behanek`

Hodnoty GitHub nejde zkopírovat z jiného repa — nastavit znovu (`gh secret set NAME -R lioilsources/behanek`).

**Stejné jako v Kirianovi** (jeden Apple účet, jeden Firebase projekt):

| Secret | Co |
|---|---|
| `IOS_P12_BASE64`, `IOS_P12_PASSWORD` | distribuční certifikát (Apple Distribution) |
| `IOS_KEYCHAIN_PASSWORD` | libovolné heslo dočasné keychainy |
| `IOS_TEAM_ID` | `P82HWPG7FN` |
| `APP_STORE_CONNECT_API_KEY_ID`, `…_ISSUER_ID`, `…_KEY_BASE64` | API klíč pro upload |
| `FIREBASE_SERVICE_ACCOUNT_KEY` | service account s rolí Firebase App Distribution Admin |

**Nové pro Běhánka:**

| Secret | Kde ho vzít |
|---|---|
| `IOS_PROVISION_PROFILE_BASE64` | developer.apple.com → Profiles → App Store profil pro `cz.ol1n.behanek` → `base64 -i profil.mobileprovision` |
| `ANDROID_KEYSTORE_BASE64`, `ANDROID_KEYSTORE_PASSWORD`, `ANDROID_KEY_ALIAS`, `ANDROID_KEY_PASSWORD` | nový upload klíč (viz níže); keystore zálohovat, bez něj nejde vydat aktualizace |
| `FIREBASE_ANDROID_APP_ID` | Firebase konzole → přidat Android appku `cz.ol1n.behanek` → App ID `1:…:android:…` |
| `MAPY_API_KEY` | developer.mapy.com — bez něj build použije vývojové dlaždice, které do storu nesmí |

```
keytool -genkey -v -keystore behanek-upload.keystore -alias behanek -keyalg RSA -keysize 2048 -validity 10000
base64 -i behanek-upload.keystore | gh secret set ANDROID_KEYSTORE_BASE64 -R lioilsources/behanek
```

## Jednorázově ve storech

1. **App Store Connect:** založit appku s bundle id `cz.ol1n.behanek` (App ID s capability In-App Purchase),
   název „Běhánek“, produkt `gpx_import` (non-consumable, 0,99). V TestFlightu přidat kamaráda jako
   interního nebo externího testera.
2. **Firebase:** Android appka `cz.ol1n.behanek` v projektu, skupina testerů `testeri`.
3. **Play Console** (až pro veřejné vydání): appka, Play App Signing, produkt `gpx_import`, AAB z Release.

## Podpis iOS

Lokálně zůstává automatický podpis (`flutter build ios --release` na vlastní telefon funguje dál).
V CI `scripts/ci_ios_signing.py` přepne jen Release konfiguraci cíle Runner na ruční podpis
distribučním profilem; pody se nemění.
