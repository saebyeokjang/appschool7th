//
//  TodoDetailView.swift
//  TodoApp
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI

struct TodoDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    var item: TodoItem
    
    @State private var showingEditView: Bool = false
    
    var body: some View {
        Text("\(item.title) at \(item.createdAt, format: Date.FormatStyle(date: .numeric, time: .standard))")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Delete") {
                        // 삭제 기능
                        modelContext.delete(item)
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Edit") {
                        // 수정 기능
                        showingEditView = true
                    }
                }
            }
            .navigationTitle(item.title)
            .sheet(isPresented: $showingEditView) {
                NavigationStack {
                    EditTodoView(todo: item)
                }
            }
    }
}

#Preview {
    TodoDetailView(item: TodoItem(title: "Hello, world!"))
}
