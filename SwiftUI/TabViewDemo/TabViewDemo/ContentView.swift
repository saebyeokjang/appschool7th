//
//  ContentView.swift
//  TabViewDemo
//
//  Created by 장새벽 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First Content View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen One")
                }
                .tag(0)
            Text("Second Content View")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Screen Two")
                }
                .tag(1)
            Text("Third Content View")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Screen Three")
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
