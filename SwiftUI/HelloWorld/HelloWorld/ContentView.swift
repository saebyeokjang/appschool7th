//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnabled: Bool = true
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Toggle("Enable Wi-Fi", isOn: $wifiEnabled)
            TextField("Enter user name", text: $userName)
            Text(userName)
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        }
    }
}

#Preview {
    ContentView()
}
