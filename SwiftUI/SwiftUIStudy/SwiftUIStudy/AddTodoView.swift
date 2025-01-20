//
//  AddTodoView.swift
//  SwiftUIStudy
//
//  Created by Saebyeok Jang on 1/20/25.
//

import SwiftUI
import SwiftData

struct AddTodoView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State private var title: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter Todo Title", text: $title)
            }
            .navigationTitle("New Todo")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        let todo = TodoItem(title: title)
                        modelContext.insert(todo)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddTodoView()
}
