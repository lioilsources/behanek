import ActivityKit
import Foundation

/// Sdílené mezi Runnerem (spouští a aktualizuje aktivitu) a widget extension (kreslí ji).
/// Texty formátuje Dart (jednotky, desetinná čárka podle jazyka), sem chodí hotové.
@available(iOS 16.1, *)
struct RunActivityAttributes: ActivityAttributes {
  public struct ContentState: Codable, Hashable {
    /// Okamžik, od kterého by čistý čas běhu běžel bez přestávek (now - movingTime).
    /// Systém podle něj tiká stopky sám, appka nemusí posílat každou sekundu.
    var timerStart: Date
    /// Čistý čas v sekundách — zobrazí se staticky, když je běh v pauze.
    var elapsedS: Int
    var paused: Bool
    var distance: String
    var distanceUnit: String
    var pace: String
    var paceUnit: String
  }

  var paceLabel: String
  var pausedLabel: String
}
