//
//  SecondTabView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/13/25.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            // text 변수의 변경 시 실행되는 수정자
            .onChange(of: text, perform: { value in
                print("")
            })
    }
}

#Preview {
    SecondTabView()
}
