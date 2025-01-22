//
//  ShortcutDemoApp.swift
//  ShortcutDemo
//
//  Created by Neil Smyth on 7/29/22.
//

import SwiftUI
import Intents

@main
struct ShortcutDemoApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { status in
            INPreferences.requestSiriAuthorization({ status in
                print("Siri authorization status: \(status)")
            })
        }
    }
}
