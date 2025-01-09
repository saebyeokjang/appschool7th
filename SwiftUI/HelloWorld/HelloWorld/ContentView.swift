//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct MyVStack<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(.largeTitle)
    }
}

struct ContentView: View {
    var body: some View {
        MyVStack {
            Text("Text 1")
            Text("Text 2")
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
