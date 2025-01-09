//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 장새벽 on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .blue, .green]
    var colornames = ["Black", "Red", "Blue", "Green"]
    
    @State private var colorIndex: Int = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 3), value: rotation)
                .foregroundColor(colors[colorIndex])
            Spacer()
            Divider()
            
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colornames.count, id:\.self) {
                    Text(colornames[$0])
                        .foregroundStyle(colors[$0])
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
