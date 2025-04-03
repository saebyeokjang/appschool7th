//
//  ScrollViewReaderExample.swift
//  PowerfulSwiftUI
//
//  Created by Saebyeok Jang on 4/3/25.
//

import SwiftUI

struct ScrollViewReaderExample: View {
    @State private var selectedId = 0
    
    var body: some View {
        VStack {
            HStack {
                Button("Go to 0") {
                    withAnimation {
                        selectedId = 0
                    }
                }
                
                Button("Go to 50") {
                    withAnimation {
                        selectedId = 50
                    }
                }
                
                Button("Go to 75") {
                    withAnimation {
                        selectedId = 75
                    }
                }
            }
            
            ScrollView {
                ScrollViewReader { proxy in
                    LazyVStack {
                        ForEach(0..<100) { id in
                            Text("Item \(id)")
                                .id(id)
                                .frame(height: 40)
                                .frame(maxWidth: .infinity)
                                .background(id == selectedId ? Color.blue : Color.gray.opacity(0.2))
                                .cornerRadius(8)
                                .padding(.horizontal)
                        }
                    }
                    .onChange(of: selectedId) { oldValue, newValue in
                        withAnimation(.easeInOut(duration: 1.0)) {
                            proxy.scrollTo(newValue, anchor: .top)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderExample()
}
