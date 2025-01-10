//
//  ContentView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Button(action: {
            Task {
                await dosomething()
            }
        }) {
            Text("Do Something")
        }
    }
    
    func dosomething() async {
        print("Start \(Date())")
        await takeTooLong()
        print("End \(Date())")
    }
    
    func takeTooLong() async {
        sleep(5)
        print("Async task completed at \(Date())")
    }
    
}

#Preview {
    ContentView()
}

