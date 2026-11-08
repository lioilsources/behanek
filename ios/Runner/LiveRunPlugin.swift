import ActivityKit
import Flutter
import Foundation

/// Kanál `behanek/live`: Dart posílá stav běhu, tady se z něj dělá Live Activity
/// (zamčená obrazovka + Dynamic Island). Na iOS < 16.2 nic nedělá.
final class LiveRunPlugin: NSObject, FlutterPlugin {
  static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "behanek/live", binaryMessenger: registrar.messenger())
    registrar.addMethodCallDelegate(LiveRunPlugin(), channel: channel)
    // Zbytek po pádu appky uprostřed běhu — rozpracovaný běh se při startu jen uloží.
    if #available(iOS 16.2, *) { LiveRunActivity.shared.end() }
  }

  func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard #available(iOS 16.2, *) else {
      result(nil)
      return
    }
    switch call.method {
    case "update":
      LiveRunActivity.shared.update(call.arguments as? [String: Any] ?? [:])
      result(nil)
    case "end":
      LiveRunActivity.shared.end()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

@available(iOS 16.2, *)
final class LiveRunActivity {
  static let shared = LiveRunActivity()
  private var activity: Activity<RunActivityAttributes>?

  func update(_ a: [String: Any]) {
    let elapsed = a["elapsedS"] as? Int ?? 0
    let state = RunActivityAttributes.ContentState(
      timerStart: Date().addingTimeInterval(-Double(elapsed)),
      elapsedS: elapsed,
      paused: a["paused"] as? Bool ?? false,
      distance: a["distance"] as? String ?? "",
      distanceUnit: a["distanceUnit"] as? String ?? "",
      pace: a["pace"] as? String ?? "",
      paceUnit: a["paceUnit"] as? String ?? ""
    )
    let content = ActivityContent(state: state, staleDate: nil)

    if let act = activity, act.activityState == .active {
      Task { await act.update(content) }
      return
    }
    guard ActivityAuthorizationInfo().areActivitiesEnabled else { return }
    let attributes = RunActivityAttributes(
      paceLabel: a["paceLabel"] as? String ?? "",
      pausedLabel: a["pausedLabel"] as? String ?? ""
    )
    // Aktivitu lze založit jen s appkou v popředí — běh se startuje z obrazovky, takže to platí.
    activity = try? Activity.request(attributes: attributes, content: content, pushType: nil)
  }

  func end() {
    activity = nil
    for act in Activity<RunActivityAttributes>.activities {
      Task { await act.end(nil, dismissalPolicy: .immediate) }
    }
  }
}
