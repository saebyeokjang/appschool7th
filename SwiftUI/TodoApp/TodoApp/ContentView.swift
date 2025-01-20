//
//  ContentView.swift
//  TodoApp
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showingAddTodo = false
    
    var body: some View {
        NavigationStack {
            TodoListView()
                .navigationTitle("Todo List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        EditButton()
                    }
                    ToolbarItem {
                        Button(action: {
                            showingAddTodo = true
                        }) {
                            Label("Add Item", systemImage: "plus")
                        }
                    }
                }
        }
        .sheet(isPresented: $showingAddTodo) {
            AddTodoView()
        }
    }
    
}

#Preview {
    ContentView()
        .modelContainer(PreviewContainer.shared.container)
}
