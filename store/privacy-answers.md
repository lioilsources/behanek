# App Privacy and Data safety answers

Answers for the first build with anonymous usage statistics
(`docs/telemetry.md`, `ol1n_telemetry`). **Fill them in before that build is
submitted, and only after the new `docs/privacy.html` is live.** A build
without `TELEMETRY_KEY` sends nothing; these answers are for the build that
has it.

What is declared in the consoles today is not in the repo: compare with App
Store Connect and Play Console first and keep anything else already declared
there. Check the current wording of both forms before ticking.

What the statistics are: screens and seconds on them, app open and
background, feature use, run settings at start, how a run, import or purchase
ended, run length in four bands, number of imported runs, errors shown. Never
GPS location, routes, distance, pace, elevation, file names, identifiers or
device model. They go only to the developer's own server in the EU (Czech
Republic); the server derives the country from the IP address and does not
store the IP. Kept 12 months. Off switch in Settings.

## App Store Connect → App Privacy

**Privacy Policy URL:** the GitHub Pages `privacy.html`, unchanged.

**Do you or your third-party partners collect data from this app?** **Yes.**

**Data types collected** (tick exactly these):

| Category → type | Linked to the user? | Used for tracking? | Purpose |
|---|---|---|---|
| Usage Data → **Product Interaction** | **No** | **No** | **Analytics** |
| Location → **Coarse Location** | **No** | **No** | **Analytics** |

Why each:

- *Product Interaction*: launches, screens and seconds on them, feature use,
  how runs, imports and purchases end.
- *Coarse Location*: the developer's collector derives the **country** from
  the connection's IP address and keeps only the country; the IP is not
  stored. This has nothing to do with GPS. If the owner turns the country off
  on the collector, untick this row and remove
  `NSPrivacyCollectedDataTypeCoarseLocation` from
  `ios/Runner/PrivacyInfo.xcprivacy`.

Not collected (leave unticked): **Precise Location** (GPS and routes never
leave the phone), Health & Fitness (runs stay on the phone; only a run-length
band is sent as product interaction), Contact Info, Financial Info, Sensitive
Info, Contacts, User Content, Browsing History, Search History, Identifiers
(no User ID and no Device ID: the session id is random, lives in memory and
is never reused), Purchases (only whether a purchase flow ended ok, cancelled
or failed; no product, price or receipt), Other Usage Data, **Performance
Data** (Běhánek measures no load times), Crash Data, Other Diagnostic Data,
Other Data.

**Linked to the user: No**, for every type: no account, no identifier; two
sessions cannot be connected to each other.

**Tracking: No.** Nothing is combined with other companies' data or shared
with data brokers, and there is no advertising. No App Tracking Transparency
prompt is needed (`NSPrivacyTracking` is `false`).

Map tiles from Mapy.com are a third-party request the app makes to draw a
map; Mapy.com sees the IP address and the map area under its own policy. The
app does not send it location or runs. It is described in the privacy policy,
not declared as data the app collects.

## Google Play Console → Data safety

- Does your app collect or share any of the required user data types?
  **Yes.**
- Is all user data encrypted in transit? **Yes** (HTTPS; the statistics
  client refuses a non-`https` host).
- Do you provide a way for users to request that their data is deleted?
  **No.** There is no account. The statistics carry no identifier, so no
  record can be found for a person; they can be switched off in Settings
  (which deletes the unsent ones on the phone) and are deleted after 12
  months.
- Data types, all **Collected**, **not shared**, **not processed
  ephemerally**:

| Data type | Purpose | Required or optional |
|---|---|---|
| App activity → **App interactions** | **Analytics** | **Optional** (switch in Settings) |
| Location → **Approximate location** | **Analytics** | **Optional** (same switch) |

*Approximate location* is the country derived from the IP address by the
developer's collector (IP not stored), never GPS. If the owner turns the
country off on the collector, drop that row.

Not collected: **precise location** (GPS and routes stay on the phone),
health and fitness, personal info, financial info (purchases are Play
Billing's data, not ours), app info and performance (no crash logs, no
diagnostics), device or other IDs, contacts, files, photos, messages, web
browsing.

**Advertising ID: No.**

## Elsewhere outside the repo

- olin.now app page (`olin.now/behanek`), all languages: rewrite any “no
  analytics / sends nothing / no server” claim the same way as the store
  description (no account, no ads, no third-party analytics; anonymous usage
  statistics that can be turned off; location and routes stay on the phone).
- The store descriptions in `store/*.json` are already updated; paste them
  into App Store Connect and Play Console with the first build that has the
  statistics.
