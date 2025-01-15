//
//  ContentView.swift
//  TabViewDemo
//
//  Created by 장새벽 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Left Content View")
                .tabItem {
                    Image(systemName: "arrow.left")
                    Text("Screen One")
                }
                .tag(0)
            Text("Home Content View")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Screen Two")
                }
                .tag(1)
            Text("Right Content View")
                .tabItem {
                    Image(systemName: "arrow.right")
                    Text("Screen Three")
                }
                .tag(2)
        }
        .font(.largeTitle)
        // 쓸어넘겨서 탭 이동
        .tabViewStyle(PageTabViewStyle())
        
        HStack {
            Spacer()
            Button("1") {
                selection = 0
            }
            .disabled(selection == 0)
            Spacer()
            Button("2") {
                selection = 1
            }
            .disabled(selection == 1)
            Spacer()
            Button("3") {
                selection = 2
            }
            .disabled(selection == 2)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
