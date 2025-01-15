//
//  ContentView.swift
//  AnimationDemo
//
//  Created by 장새벽 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGSize = .zero
    
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged {gesture in
                        withAnimation {
                            self.offset =
                            gesture.translation
                        }
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.offset = .zero
                        }
                    }
            )
    }
}

#Preview {
    ContentView()
}
