//
//  SceneStorageView.swift
//  StorageDemo
//
//  Created by 장새벽 on 1/13/25.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("mytext") private var editorText = ""
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
