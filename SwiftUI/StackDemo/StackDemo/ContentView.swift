//
//  ContentView.swift
//  StackDemo
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // ailgnment 파라미터로 정렬
        VStack(alignment: .leading, spacing: 10) {
            Text("This is some text")
            Text("This is some longer text")
            Text("This is short")
        }
        HStack(alignment: .lastTextBaseline, spacing: 20) {
            Text("This is some text")
                .font(.largeTitle)
            Text("This is some longer text")
                .font(.body)
            Text("This is short")
                .font(.headline)
        }
        VStack(alignment: .leading) {
            Rectangle()
                .fill(Color.green)
                .frame(width: 120, height: 50)
            Rectangle()
                .fill(Color.red)
                .alignmentGuide(.leading) { d in d.width / 3 }
                .frame(width: 200, height: 50)
            Rectangle()
                .fill(Color.blue)
                .alignmentGuide(.leading) { d in d[.trailing] + 20 }
                .frame(width: 180, height: 50)
        }
    }
}

#Preview {
    ContentView()
}
