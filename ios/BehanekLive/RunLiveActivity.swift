import ActivityKit
import SwiftUI
import WidgetKit

private let accent = Color(red: 0xC6 / 255, green: 1, blue: 0)

/// Live Activity běhu: zamčená obrazovka + Dynamic Island.
struct RunLiveActivity: Widget {
  var body: some WidgetConfiguration {
    ActivityConfiguration(for: RunActivityAttributes.self) { ctx in
      LockScreenView(attributes: ctx.attributes, state: ctx.state)
        .activityBackgroundTint(Color.black)
        .activitySystemActionForegroundColor(accent)
    } dynamicIsland: { ctx in
      let s = ctx.state
      return DynamicIsland {
        DynamicIslandExpandedRegion(.leading) {
          Stat(value: s.distance, label: s.distanceUnit)
            .padding(.leading, 6)
        }
        DynamicIslandExpandedRegion(.trailing) {
          Stat(value: s.pace, label: "\(ctx.attributes.paceLabel) \(s.paceUnit)")
            .padding(.trailing, 6)
        }
        DynamicIslandExpandedRegion(.center) {
          RunTime(state: s)
            .font(.system(size: 34, weight: .bold, design: .rounded))
            .foregroundColor(s.paused ? .orange : .white)
        }
        DynamicIslandExpandedRegion(.bottom) {
          if s.paused {
            Text(ctx.attributes.pausedLabel)
              .font(.caption.weight(.bold))
              .foregroundColor(.orange)
          }
        }
      } compactLeading: {
        HStack(spacing: 3) {
          Image(systemName: s.paused ? "pause.fill" : "figure.run")
            .foregroundColor(s.paused ? .orange : accent)
          RunTime(state: s)
            .frame(maxWidth: 52)
        }
      } compactTrailing: {
        Text("\(s.distance) \(s.distanceUnit)")
          .foregroundColor(accent)
      } minimal: {
        Text(s.distance)
          .font(.caption2.weight(.bold))
          .foregroundColor(accent)
          .minimumScaleFactor(0.6)
      }
      .keylineTint(accent)
    }
  }
}

private struct LockScreenView: View {
  let attributes: RunActivityAttributes
  let state: RunActivityAttributes.ContentState

  var body: some View {
    HStack(alignment: .center) {
      VStack(alignment: .leading, spacing: 2) {
        HStack(spacing: 6) {
          Image(systemName: state.paused ? "pause.fill" : "figure.run")
          if state.paused {
            Text(attributes.pausedLabel).font(.caption.weight(.bold))
          }
        }
        .foregroundColor(state.paused ? .orange : accent)
        RunTime(state: state)
          .font(.system(size: 40, weight: .bold, design: .rounded))
          .foregroundColor(.white)
      }
      Spacer()
      VStack(alignment: .trailing, spacing: 6) {
        Stat(value: state.distance, label: state.distanceUnit)
        Stat(value: state.pace, label: "\(attributes.paceLabel) \(state.paceUnit)")
      }
    }
    .padding(16)
  }
}

private struct Stat: View {
  let value: String
  let label: String

  var body: some View {
    VStack(alignment: .trailing, spacing: 0) {
      Text(value)
        .font(.system(size: 22, weight: .bold, design: .rounded))
        .monospacedDigit()
        .foregroundColor(accent)
      Text(label)
        .font(.caption2)
        .foregroundColor(.gray)
    }
  }
}

/// Čistý čas: v běhu tiká systém sám, v pauze stojí.
private struct RunTime: View {
  let state: RunActivityAttributes.ContentState

  var body: some View {
    Group {
      if state.paused {
        Text(format(state.elapsedS))
      } else {
        Text(timerInterval: state.timerStart...Date.distantFuture, countsDown: false)
      }
    }
    .monospacedDigit()
    .multilineTextAlignment(.center)
  }

  private func format(_ s: Int) -> String {
    let h = s / 3600, m = (s % 3600) / 60, sec = s % 60
    return h > 0
      ? String(format: "%d:%02d:%02d", h, m, sec)
      : String(format: "%d:%02d", m, sec)
  }
}
