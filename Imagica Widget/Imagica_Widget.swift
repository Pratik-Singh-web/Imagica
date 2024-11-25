//
//  Imagica_Widget.swift
//  Imagica Widget
//
//  Created by Pratik Kumar Singh on 11/11/24.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), image: UIImage(named: "Myself"), configuration: ConfigurationAppIntent())
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        SimpleEntry(date: Date(), image: UIImage(named: "Myself"), configuration: configuration)
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        var entries: [SimpleEntry] = []

        let currentDate = Date()
        let nextUpdateDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate)!

        let image = await fetchDailyImage()

        let entry = SimpleEntry(date: currentDate, image: image, configuration: configuration)
        entries.append(entry)

        return Timeline(entries: entries, policy: .after(nextUpdateDate))
    }

    func fetchDailyImage() async -> UIImage? {
        let image = UIImage(named: "Myself")
        return image
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let image: UIImage?
    let configuration: ConfigurationAppIntent
}

struct Imagica_WidgetEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        ZStack {
            if let image = entry.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            } else {
                Color.gray
            }
        }
        .containerRelativeFrame(.horizontal) // Removes padding
    }
}

struct Imagica_Widget: Widget {
    let kind: String = "Imagica_Widget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            Imagica_WidgetEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .supportedFamilies([.systemLarge])
    }
}

extension ConfigurationAppIntent {
    fileprivate static var smiley: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "😀"
        return intent
    }
    
    fileprivate static var starEyes: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "🤩"
        return intent
    }
}

#Preview(as: .systemLarge) {
    Imagica_Widget()
} timeline: {
    SimpleEntry(date: .now, image: UIImage(named: "Myself"), configuration: .smiley)
    SimpleEntry(date: .now, image: UIImage(systemName: "star.fill"), configuration: .starEyes)
}

