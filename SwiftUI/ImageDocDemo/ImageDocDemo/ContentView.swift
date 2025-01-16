//
//  ContentView.swift
//  ImageDocDemo
//
//  Created by 장새벽 on 1/16/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: ImageDocDemoDocument

    var body: some View {
        VStack {
            Image(uiImage: document.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Button(action: {
                
            }, label: {
                Text("Save")
            })
            .padding()
        }
    }
}

#Preview {
    ContentView(document: .constant(ImageDocDemoDocument()))
}
