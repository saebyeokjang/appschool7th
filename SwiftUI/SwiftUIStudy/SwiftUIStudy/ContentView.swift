//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    // 배열이 변경될 때 UI가 자동으로 업데이트되도록 @State 프로퍼티 래퍼 사용
    @State var logTeam: [String] = ["강보현", "김덕원", "이성훈", "장새벽", "조영민"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("5조 log").textCase(nil)) {
                    ForEach(logTeam, id: \.self) { member in
                        Text(member)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
