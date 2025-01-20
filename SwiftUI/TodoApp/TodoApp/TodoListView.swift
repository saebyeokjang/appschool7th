//
//  TodoListView.swift
//  TodoApp
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI
import SwiftData

enum TodoNavigation: Hashable {
    case detail(TodoItem)
    case edit(TodoItem)
}

struct TodoListView: View {
    @Environment(\.modelContext) private var modelContext
    
    @Query private var todos: [TodoItem]
    
    var body: some View {
        List {
            ForEach(todos) { item in
                TodoRowView(item: item)
            }
            .onDelete(perform: deleteItems)
        }
        .navigationDestination(for: TodoNavigation.self) { navigation in
            switch navigation {
                case .detail(let item):
                    TodoDetailView(item: item)
                case .edit(let item):
                    EditTodoView(todo: item)
            }
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(todos[index])
            }
        }
    }
    
}

#Preview {
    TodoListView()
}
