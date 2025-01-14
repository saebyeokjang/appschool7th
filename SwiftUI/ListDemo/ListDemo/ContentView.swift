//
//  ContentView.swift
//  ListDemo
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

struct ToDoItem: Identifiable {
    let id: UUID = UUID()
    var task: String
    var imageName: String
}

struct ContentView: View {
    @State var toggleStatus: Bool = false
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out trash",
                 imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids",
                 imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car",
                 imageName: "car.fill")
        
        
    ]
    var body: some View {
        NavigationStack {
            List {
                // 설정 섹션
                Section(header: Text("Settings")) {
                    // 알림 허용 토글 스위치
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                    NavigationLink(value: listData.count) {
                        Text("View Task Count")
                    }
                }
                // ToDo Task 섹션
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(value: item.task) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                }
            }
            // 네비게이션 바 타이틀 지정
            .navigationTitle("To Do List")
            // 네비게이션 바 스타일 변경
            //.navigationBarTitleDisplayMode(.inline)
            
            // 최신 업데이트: 네비게이션 바 아이템 대신 ToolvarItem을 사용
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction, content: {
                    Button("Add", action: {})})
                })
            
            // NavigationLink value 타입에 따른 뷰 빌더를 실행
            .navigationDestination(for: Int.self) { count in
                Text("Number of task: \(count)")
            }
            .navigationDestination(for: String.self) { task in
                VStack {
                    Text("Selected Task: \(task)")
                }
            }
            // 당겨서 새로고침 기능
            .refreshable {
                listData = [
                    ToDoItem(task: "Order dinner",
                             imageName: "dollarsign.circle.fill"),
                    ToDoItem(task: "Call financial advisor",
                             imageName: "phone.fill"),
                    ToDoItem(task: "Sell the kids",
                             imageName: "person.2.fill")
                ]
            }
        }
    }
}

#Preview {
    ContentView()
}
