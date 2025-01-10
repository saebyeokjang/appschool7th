//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    
    var body: some View {
        Text("Tap me!")
            .font(.largeTitle)
            .padding()
            .background(isTapped ? Color.green : Color.red)
            // count를 이용해 실행시킬 탭 횟수를 조절할 수 있음
            .onTapGesture(count: 2) {
                isTapped.toggle()
            }
    }
}

#Preview {
    ContentView()
}
