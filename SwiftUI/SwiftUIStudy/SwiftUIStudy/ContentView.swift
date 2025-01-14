//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

struct TeamMember: Identifiable {
    let id = UUID()  // 고유 식별자를 위한 UUID (자동 생성)
    let name: String
    let symbol: String
}

struct ContentView: View {
    let logTeam: [TeamMember] = [
        TeamMember(name: "강보현", symbol: "🐥"),
        TeamMember(name: "김덕원", symbol: "⚾️"),
        TeamMember(name: "이성훈", symbol: "🧌"),
        TeamMember(name: "장새벽", symbol: "🌒"),
        TeamMember(name: "조영민", symbol: "🦊")
    ]
    
    var body: some View {
        NavigationStack {
            List(logTeam) { member in
                NavigationLink(destination: Text("\(member.symbol)").font(.system(size: 200))) {
                    Text(member.name)
                }
            }
            .navigationTitle("5조: log")
        }
    }
}

#Preview {
    ContentView()
}
