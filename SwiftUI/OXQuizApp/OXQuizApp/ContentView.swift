//
//  ContentView.swift
//  OXQuizApp
//
//  Created by 장새벽 on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var number1: Int = 4
    @State var number2: Int = 2
    @State var resultNumber: Int = 9
    
    @State var countCorrect: Int = 0
    @State var countWrong: Int = 0
    
    var body: some View {
        // UI 구성 및 로직
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    func relaodGame() {
        // 게임 재시작
        
    }
    
    func selectCorrect() {
        // 정답 선택 시
        
    }
    
    func selectWrong() {
        // 오답 선택 시
        
    }
    
}

#Preview {
    ContentView()
}
