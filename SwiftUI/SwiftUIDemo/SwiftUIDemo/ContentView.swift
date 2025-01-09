//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 장새벽 on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedNumberIndex = 0
    @State private var count = 0
    let numbers = ["1", "5", "10"]
    
    var selectedNumber: Int {
        return Int(numbers[selectedNumberIndex]) ?? 0
    }
    
    var body: some View {
        VStack {
            Text("단위를 선택하세요")
                .font(.largeTitle)
            
            Picker("Number", selection: $selectedNumberIndex) {
                ForEach(0..<numbers.count, id: \.self) { index in
                    Text(self.numbers[index])
                }
            }
            .pickerStyle(.wheel)
            
            Text("Count")
                .font(.largeTitle)
            
            Text("\(count)")
                .font(.system(size: 100))
                .fontWeight(.bold)
            
            HStack {
                Button(action: {
                    self.count -= selectedNumber
                }, label: {
                    Text("감소")
                        .font(.title2)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                })
                
                Spacer()
                
                // "초기화" 버튼
                Button(action: {
                    self.count = 0  // 카운트를 0으로 초기화
                }) {
                    Text("초기화")
                        .font(.title3)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                
                Spacer()
                
                Button(action: {
                    self.count += selectedNumber
                }) {
                    Text("증가")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
