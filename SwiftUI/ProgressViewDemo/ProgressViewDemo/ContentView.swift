//
//  ContentView.swift
//  ProgressViewDemo
//
//  Created by 장새벽 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.1
    
    var body: some View {
        VStack {
            ProgressView("Task Progress", value: progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle())
            // macOS 에서만...
            ProgressView("Task Progress", value: progress, total: 100)
                .progressViewStyle(CircularProgressViewStyle())
            ProgressView("Working...")
            Slider(value: $progress, in: 0...100, step: 0.1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
