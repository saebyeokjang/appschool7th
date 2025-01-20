//
//  SwiftUIStudyApp.swift
//  SwiftUIStudy
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI
import SwiftData

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: TodoItem.self) // SwiftData와 연결
        }
    }
}
