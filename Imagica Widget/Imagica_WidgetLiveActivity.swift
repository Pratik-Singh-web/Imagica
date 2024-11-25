//
//  Imagica_WidgetLiveActivity.swift
//  Imagica Widget
//
//  Created by Pratik Kumar Singh on 11/11/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct Imagica_WidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct Imagica_WidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: Imagica_WidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension Imagica_WidgetAttributes {
    fileprivate static var preview: Imagica_WidgetAttributes {
        Imagica_WidgetAttributes(name: "World")
    }
}

extension Imagica_WidgetAttributes.ContentState {
    fileprivate static var smiley: Imagica_WidgetAttributes.ContentState {
        Imagica_WidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: Imagica_WidgetAttributes.ContentState {
         Imagica_WidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: Imagica_WidgetAttributes.preview) {
   Imagica_WidgetLiveActivity()
} contentStates: {
    Imagica_WidgetAttributes.ContentState.smiley
    Imagica_WidgetAttributes.ContentState.starEyes
}
