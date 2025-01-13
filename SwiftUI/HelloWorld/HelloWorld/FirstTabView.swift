//
//  FirstTabView.swift
//  HelloWorld
//
//  Created by 장새벽 on 1/13/25.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            // 화면에 이 뷰가 보여줄 때 호출되는 수정자
            .onAppear(perform: {
                print("onAppear triggered")
            })
            // 화면에서 이 뷰가 사라질때 호출되는 수정자
            .onDisappear(perform: {
                print("onDisappear triggered")
            })
    }
}

#Preview {
    FirstTabView()
}
