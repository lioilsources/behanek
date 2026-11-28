# Anonymous usage statistics

Běhánek sends a small set of anonymous events through
[`ol1n_telemetry`](https://github.com/lioilsources/Ol1nTelemetry) to the
developer's own collector (StoreMetrics, app id `behanek`). This file is the
**event dictionary**: the constant `behanekDictionary`
(`lib/telemetry/telemetry_dictionary.dart`) and this document list exactly the
same events and properties, and `test/telemetry_test.dart` fails when they
drift apart.

Adding an event or a property is a change to the privacy policy. Ask the
owner first.

## Rules

The rules of `ol1n_telemetry` apply unchanged: no persistent identifier,
cohorts computed on the device, only enums, bands and numbers, no key → no
network, off wipes the queue at once. See the package README.

On top of that, for a running app:

- **No location, ever.** No coordinates, no route, no distance, no pace, no
  elevation, no start place, no ghost distance. A run is described only by
  its settings (pacer, cues, auto-pause, metronome), how it ended, and its
  moving time in four coarse bands (`duration_band`).
- No file names, run names or notes from GPX imports; only counts.
- Store prices and purchase ids are not sent; only how a purchase ended.

Without `TELEMETRY_KEY` and `TELEMETRY_HOST` in the build nothing is recorded
or sent, and the switch in Settings is hidden.

## Screens

Routes are named at `Navigator.push` (`RouteSettings(name: …)`) and mapped by
`TelemetryNavigatorObserver` (`kScreenRoutes`): `/` history, `/run` run,
`/detail` detail, `/trim` trim, `/import` import, `/settings` settings.
Dialogs and sheets (ghost picker, confirmations) do not change the screen.

The run itself mostly happens with the screen off. Screen and flow seconds
count the foreground only, so `run` seconds are the time spent looking at the
run screen, not the length of the run; `duration_band` is the length.

## Activation

The first saved recorded run (`run_end` with `result: ok`): the runner went
out, recorded, and kept it. Imports do not count.

## Features

`ghost` (ghost pacer chosen), `live_map` (map during a run), `manual_pause`
(pause button during a run), `trim`, `gpx_export`, `backup` (ZIP of all
runs), `month_report` (monthly PNG report), `import` (runs saved from GPX).

## Common properties

Sent with every event.

| Property | Type | Values |
|---|---|---|
| `app_version` | enum | the app version (`kAppVersion`, checked against `pubspec.yaml`) |
| `platform` | enum | `ios`, `android`, `macos`, `windows`, `linux`, `other` |
| `lang` | enum | the app's language: `cs`, `de`, `en`, `es`, `fr`, `hu`, `it`, `ja`, `ko`, `nl`, `pl`, `pt`, `ru`, `uk`, `vi` |
| `session_band` | enum | session number: `1`, `2`, `3-5`, `6-10`, `11+` |
| `days_band` | enum | days since measuring began: `0`, `1`, `2-6`, `7-29`, `30+`, `pre` |
| `first_session` | bool | the very first session of a new install |
| `tester` | bool | tester build or tester device |
| `unit` | enum | distance unit in settings: `km`, `mi` |

## Events

### `app_open`

Cold start, or a new session after more than 30 minutes in the background.
Answers: what a new user does after the first launch; whether they come back
(2nd, 3rd, 6th, 11th session; day 1, 2, 7, 30).

| Property | Type | Values |
|---|---|---|
| `start` | enum | `cold`, `resume` |
| `session_band_first` | bool | the first session of this install in its `session_band` |
| `days_band_first` | bool | the first session of this install in its `days_band` |
| `campaign` | campaign | optional; QR campaign of a new install, `^[a-z0-9-]{1,24}$` |

### `screen_view`

A screen appeared. Answers: the first-session funnel; back-and-forth between
screens.

| Property | Type | Values |
|---|---|---|
| `screen` | enum | `history`, `run`, `detail`, `trim`, `import`, `settings`, `other` |
| `prev` | enum | the previous screen: `history`, `run`, `detail`, `trim`, `import`, `settings`, `other`, `none` |

### `screen_leave`

A screen was left. Answers: how long people stay on which screen; screens
with long stays and no action.

| Property | Type | Values |
|---|---|---|
| `screen` | enum | `history`, `run`, `detail`, `trim`, `import`, `settings`, `other` |
| `secs` | int | foreground seconds on the screen, 0–86400 |
| `actions` | int | app events, feature uses and locked taps during the stay, 0–100000 |

### `session_pause`

The app went to the background or is closing. Sent at once. Answers: when and
where people stop; whether they leave the app during a run (normal: phone in
the pocket) or outside one.

| Property | Type | Values |
|---|---|---|
| `active_secs` | int | foreground seconds in this session, 0–86400 |
| `screen` | enum | the screen at the time: `history`, `run`, `detail`, `trim`, `import`, `settings`, `other`, `none` |
| `screen_secs` | int | foreground seconds on that screen, 0–86400 |
| `running` | bool | a run (countdown, recording or the stop screen) was open |

### `activation`

The first saved recorded run on this install. Once per install. Answers: how
many new installs get to a first real run, and how fast.

| Property | Type | Values |
|---|---|---|
| `secs` | int | seconds since this session's `app_open`, 0–86400 |

### `feature_use`

The first use of a feature in a session. Answers: which features people use.

| Property | Type | Values |
|---|---|---|
| `feature` | enum | `ghost`, `live_map`, `manual_pause`, `trim`, `gpx_export`, `backup`, `month_report`, `import` |

### `feature_snapshot`

After `app_open` of the 3rd, 6th and 11th session: which features this
install has ever used. Answers: what advanced users never touch.

| Property | Type | Values |
|---|---|---|
| `f_ghost` | bool | ghost pacer used |
| `f_live_map` | bool | live map used |
| `f_manual_pause` | bool | manual pause used |
| `f_trim` | bool | trim used |
| `f_gpx_export` | bool | GPX export used |
| `f_backup` | bool | ZIP backup used |
| `f_month_report` | bool | monthly report used |
| `f_import` | bool | GPX import used |
| `features_used` | int | how many of them, 0–8 |

### `error_shown`

The user saw an error. Answers: where people struggle. `location_denied` and
`location_off` are shown on the run screen when the app cannot record;
`store_unavailable` and `purchase_failed` on import; `import_file` when some
picked files could not be read.

| Property | Type | Values |
|---|---|---|
| `kind` | enum | `location_denied`, `location_off`, `store_unavailable`, `purchase_failed`, `import_file` |
| `screen` | enum | the screen at the time: `history`, `run`, `detail`, `trim`, `import`, `settings`, `other`, `none` |

### `locked_tap`

The import preview was shown without the purchase (only one file is
previewed, saving needs the unlock). Answers: how many people hit the paywall.

| Property | Type | Values |
|---|---|---|
| `target` | enum | `import_all` |

### `run_start`

Start was tapped (the 3-2-1 countdown begins). Answers: which pacer and
announcement settings runners actually run with.

| Property | Type | Values |
|---|---|---|
| `pacer` | enum | `form` (from recent runs), `ghost`, `none` (form pacer without enough runs yet) |
| `pacer_goal` | enum | `hold`, `improve` |
| `cues` | enum | `voice`, `tones`, `both`, `off` |
| `cue_interval` | enum | seconds between announcements: `30`, `60`, `120`, `300` |
| `auto_pause` | bool | auto-pause on |
| `metronome` | bool | metronome on |

### `run_end`

The run ended. Answers: how many started runs are kept, discarded or too
short; whether the app was killed mid-run (`background`, sent on the next
launch).

| Property | Type | Values |
|---|---|---|
| `result` | enum | `ok` (saved), `cancel` (countdown cancelled), `error`, `background`, `discard`, `too_short` (fewer than two GPS points, not saved) |
| `secs` | int | foreground seconds of the flow, 0–86400 |
| `duration_band` | enum | moving time in minutes: `0-9`, `10-29`, `30-59`, `60+` |
| `resumed` | bool | the runner chose “keep running” after stopping at least once |

### `import_start`

Files were picked on the import screen. Answers: how many people try to bring
their history in.

| Property | Type | Values |
|---|---|---|

### `import_end`

The import ended. Answers: where the import fails (unreadable files, nothing
to import, stopped at the free preview).

| Property | Type | Values |
|---|---|---|
| `result` | enum | `ok` (runs saved), `cancel` (no file picked, or left before saving), `error`, `background`, `empty` (nothing importable), `preview` (left the screen at the locked preview) |
| `secs` | int | foreground seconds of the flow, 0–86400 |
| `runs` | int | runs saved, 0–100000 |
| `failed` | int | files or tracks that could not be read or were skipped, 0–100000 |

### `purchase_start`

Unlock or restore was tapped on the import screen. Answers: how many reach
the purchase.

| Property | Type | Values |
|---|---|---|
| `kind` | enum | `buy`, `restore` |

### `purchase_end`

The store answered. Answers: how purchases end (bought, cancelled, failed,
nothing to restore).

| Property | Type | Values |
|---|---|---|
| `result` | enum | `ok`, `cancel`, `error`, `background`, `pending`, `none` (restore found nothing) |
| `secs` | int | foreground seconds of the flow, 0–86400 |

## Reading the data

`store-metrics report behanek` on the collector host. Tester builds
(`tester: true`) are left out of the default report.
