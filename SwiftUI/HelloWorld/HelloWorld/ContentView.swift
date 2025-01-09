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

// 커스텀 레이블 스타일 (레이아웃)
struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center) {
            configuration.icon
                .padding(5)
            configuration.title
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "goforward.10")
                Image(systemName: "goforward.15")
                Image(systemName: "goforward.30")
            }
            ZStack {
                Image(systemName: "goforward.10")
                Image(systemName: "goforward.15")
                Image(systemName: "goforward.30")
            }
            // 복잡한 중첩 레이아웃 예시
            Text("Financial Results")
                .font(.title)
            HStack {
                Text("Q1 Sales")
                    .font(.headline)
                VStack {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                VStack {
                    Text("$1000")
                    Text("$200")
                    Text("$3000")
                }
            }
            // 정렬, 여백
            HStack(alignment: .top) {
                Text("Q1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .center) {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("$1000")
                    Text("$200")
                    Text("$3000")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
