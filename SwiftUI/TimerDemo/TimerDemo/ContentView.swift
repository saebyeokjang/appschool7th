//
//  ContentView.swift
//  TimerDemo
//
//  Created by Saebyeok Jang on 1/24/25.
//

import SwiftUI
import Combine
import AVFoundation

struct ContentView: View {
    
    @State private var timeRemaining: Int = 10
    @State private var totalTime: Int = 10
    @State private var isRunning: Bool = false
    @State private var timer: AnyCancellable?
    @State var audioPlayer: AVAudioPlayer?
    @State private var progress: Float = 1.0
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .tint(timeRemaining <= 5 ? .red : .blue)
                .frame(width: 120)
            
            // 타이머 텍스트 (탭하여 타이머 변경)
            Text("\(String(format: "%02d", timeRemaining / 60)):\(String(format: "%02d", timeRemaining % 60))")
                .font(.system(size: 30, weight: .bold))
                .foregroundStyle(timeRemaining <= 5 ? .red : .white)
                .onTapGesture {
                    if timeRemaining < 60 {
                        timeRemaining = 60
                        totalTime = 60
                        resetProgress()
                    } else if timeRemaining < 300 {
                        timeRemaining = 300
                        totalTime = 300
                        resetProgress()
                    } else if timeRemaining < 600 {
                        timeRemaining = 600
                        totalTime = 600
                        resetProgress()
                    } else {
                        timeRemaining = 60
                        totalTime = 60
                        resetProgress()
                    }
                }
            
            // 버튼 영역
            HStack {
                // 시작/정지 버튼
                Button(action: {
                    if isRunning {
                        stopTimer()
                    } else {
                        startTimer()
                    }
                }, label: {
                    Image(systemName: isRunning ? "pause.fill" : "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .padding()
                })
                .frame(width: 40, height: 40)
                .cornerRadius(100)
                
                // 초기화 버튼
                Button(action: {
                    stopTimer()
                    timeRemaining = 10
                    totalTime = 10
                    resetProgress()
                }, label: {
                    Image(systemName: "arrow.clockwise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .padding()
                })
                .frame(width: 40, height: 40)
                .cornerRadius(100)
            }
        }
        .padding()
        .frame(width: 150, height: 150)
        .background(Color.blue.opacity(0.2))
        .cornerRadius(100)
        .overlay(
            RoundedRectangle(cornerRadius: 100)
                .stroke(Color.blue, lineWidth: 2)
        )
        .onAppear {
            setWindowAlwaysOnTop()
        }
        .onDisappear {
            stopTimer() // 뷰가 사라질 때 타이머 정지
        }
    }
    
    // 타이머 시작 함수
    private func startTimer() {
        isRunning = true
        
        // 타이머 생성
        timer = Timer.publish(every: 0.01, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                // timeRemaining은 1초 단위로 감소
                if isRunning, timeRemaining > 0 {
                    progress -= 0.01 / Float(totalTime)
                    
                    // 매 1초마다 timeRemaining을 감소
                    if progress <= Float(timeRemaining - 1) / Float(totalTime) {
                        timeRemaining -= 1
                    }
                } else if timeRemaining <= 0 {
                    playSound()
                    stopTimer()
                }
            }
    }
    
    // 타이머 정지 함수
    private func stopTimer() {
        isRunning = false
        timer?.cancel()
        timer = nil
    }
    
    // ProgressView 초기화
    private func resetProgress() {
        progress = 1.0
    }
    
    private func setWindowAlwaysOnTop() {
        if let window = NSApplication.shared.windows.first {
            window.level = .floating
        }
    }
    
    private func playCustomSound() {
        guard let url = Bundle.main.url(forResource: "duck", withExtension: "mp3") else {
            print("사운드 파일을 찾을 수 없습니다.")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            
            audioPlayer?.volume = 0.5  // 볼륨 50%
            
            audioPlayer?.play()
            
        } catch {
            print("사운드를 재생할 수 없습니다. 오류: \(error.localizedDescription)")
        }
    }
    
    private func playSound() {
        playCustomSound()
    }
    
}

#Preview {
    ContentView()
}
