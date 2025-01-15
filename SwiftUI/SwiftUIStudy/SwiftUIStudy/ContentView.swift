//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

struct TeamMember: Identifiable {
    let id = UUID()
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
    @State var selection: Int = 1
    
    var body: some View {
        TabView(selection: $selection) {
            VStack {
                Text("Menu")
                    .textCase(.uppercase)
                    .fontWeight(.heavy)
                    .padding()
                Text("준비중입니다...")
                    .font(.headline)
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Menu")
            }
            .tag(0)
            Grid {
                ForEach(logTeam) { member in
                    GridRow {
                        Text("\(member.symbol)")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.blue.opacity(0.2))
                            .cornerRadius(8)
                        Text("\(member.name)")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.blue.opacity(0.4))
                            .cornerRadius(8)
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(1)
            VStack {
                Text("Menu")
                    .textCase(.uppercase)
                    .fontWeight(.heavy)
                    .padding()
                Text("준비중입니다...")
                    .font(.headline)
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Setting").font(.title)
            }
            .tag(2)
        }
        .font(.largeTitle)
        // 쓸어넘겨서 탭 이동
        //.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentView()
}
