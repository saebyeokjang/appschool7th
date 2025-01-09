//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hello World!")
            .font(.largeTitle)
            .border(Color.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
            // SafeArea 무시
            .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
