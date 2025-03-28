//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI
import SwiftData

@main
struct TodoAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            TodoItem.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema,
                                                    isStoredInMemoryOnly: false,
                                                    cloudKitDatabase: .automatic)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
