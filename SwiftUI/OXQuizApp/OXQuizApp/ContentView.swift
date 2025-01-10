//
//  ContentView.swift
//  OXQuizApp
//
//  Created by 장새벽 on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var number1: Int = Int.random(in: -10...10)
    @State var number2: Int = Int.random(in: -10...10)
    @State var resultNumber: Int = 0
    @State var countCorrect: Int = 0
    @State var countWrong: Int = 0
    
    var body: some View {
        // UI 구성 및 로직
        VStack {
            Spacer()
            Text("다음 수식은 맞을까요?")
            Spacer()
            HStack {
                Text("\(number1)  X  \(number2)  =  \(resultNumber)")
            }
            Spacer()
            HStack {
                Button(action: selectCorrect) {
                    Image(systemName: "checkmark.diamond")
                        .foregroundColor(.green)
                    Text("정답").foregroundColor(.green)
                }
                .padding()
                Button(action: selectWrong) {
                    Image(systemName: "checkmark.diamond")
                        .foregroundColor(.red)
                    Text("오답").foregroundColor(.red)
                }
            }
            Spacer()
            HStack {
                Text("정답: \(countCorrect)")
                    .padding()
                Text("오답: \(countWrong)")
            }
            Spacer()
            Button(action: reloadGame) {
                Text("카운트 초기화")
            }.foregroundColor(.blue)
            Spacer()
        }.fontWeight(.heavy).font(.largeTitle)
    }
    
    func newQuestion() {
        number1 = Int.random(in: -10...10)
        number2 = Int.random(in: -10...10)
        
        // 정답 또는 오답 생성
        if Bool.random() {
            resultNumber = number1 * number2
        } else {
            var incorrectAnswer: Int
            repeat {
                incorrectAnswer = Int.random(in: -100...100)
            } while incorrectAnswer == number1 * number2
            resultNumber = incorrectAnswer
        }
    }
    
    func reloadGame() {
        // 초기화
        countCorrect = 0
        countWrong = 0
        newQuestion()
    }
    
    func selectCorrect() {
        // 정답 선택 시
        if resultNumber == number1 * number2 {
            countCorrect += 1
        } else {
            countWrong += 1
        }
        newQuestion()
    }
    
    func selectWrong() {
        // 오답 선택 시
        if resultNumber != number1 * number2 {
            countCorrect += 1
        } else {
            countWrong += 1
        }
        newQuestion()
    }
}

#Preview {
    ContentView()
}
