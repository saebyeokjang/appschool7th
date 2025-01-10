//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Important Message", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: { Text("This is an alert message") }
    }
}

#Preview {
    ContentView()
}
