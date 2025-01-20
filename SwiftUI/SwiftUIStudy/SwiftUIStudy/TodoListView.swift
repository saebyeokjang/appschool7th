//
//  TodoListView.swift
//  SwiftUIStudy
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI
import SwiftData

struct TodoListView: View {
    @Query private var todos: [TodoItem]
    @Environment(\.modelContext) private var modelContext
    
    var sortedTodos: [TodoItem] {
        todos.sorted { !$0.isCompleted && $1.isCompleted } // 완료된 항목은 아래로 이동
    }
    
    var body: some View {
        List {
            ForEach(sortedTodos) { todo in
                HStack {
                    Text(todo.title)
                        .strikethrough(todo.isCompleted) // 완료 시 취소선
                        .foregroundColor(todo.isCompleted ? .gray : .primary) // 완료 시 색상 변경
                        .onTapGesture(count: 2) { // 더블탭 감지
                            toggleCompletion(todo)
                        }
                    Spacer()
                    if todo.isCompleted {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                    }
                }
            }
            .onDelete(perform: deleteTodo) // 스와이프 -> 삭제
        }
    }
    
    private func deleteTodo(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(sortedTodos[index]) // 삭제
        }
    }
    
    private func toggleCompletion(_ todo: TodoItem) {
        // 완료 상태 토글
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
}
