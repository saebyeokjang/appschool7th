//
//  ContentView.swift
//  TimerDemo
//
//  Created by Saebyeok Jang on 1/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var timeRemaining: Int = 10
    @State private var isRunning: Bool = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        
    
    var body: some View {
        VStack {
            Text("\(String(format: "%02d", timeRemaining / 60)):\(String(format: "%02d", timeRemaining % 60))")
                .font(.system(size: 50, weight: .bold))
                .onTapGesture {
                    if timeRemaining < 60 {
                        timeRemaining = 60
                    } else if timeRemaining < 300 {
                        timeRemaining = 300
                    } else if timeRemaining < 600 {
                        timeRemaining = 600
                    } else {
                        timeRemaining = 60
                    }
                }
            
            HStack {
                Button(action: {
                    isRunning.toggle()
                }, label: {
                    Image(systemName: isRunning ? "pause.fill" : "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding()
                })
                Button(action: {
                    isRunning = false
                    timeRemaining = 10
                }, label: {
                    Image(systemName: "arrow.clockwise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding()
                })
            }
        }
        .padding()
        .onReceive(timer) { t in
            print(t)
            if isRunning, timeRemaining > 0 {
                timeRemaining -= 1
            } else if timeRemaining == 0 {
                isRunning = false
            }
        }
    }
}

#Preview {
    ContentView()
}
