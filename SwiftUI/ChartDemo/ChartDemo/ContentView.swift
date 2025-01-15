//
//  ContentView.swift
//  ChartDemo
//
//  Created by 장새벽 on 1/15/25.
//

import SwiftUI
import Charts

struct MonthlyTemp: Identifiable {
    var id = UUID()
    var month: String
    var degrees: Int
}

let tempData: [MonthlyTemp] = [
    MonthlyTemp(month: "Jan", degrees: 50),
    MonthlyTemp(month: "Feb", degrees: 43),
    MonthlyTemp(month: "Mar", degrees: 61)
]

struct ContentView: View {
    var body: some View {
        Chart(tempData) { data in
            AreaMark(
                x: .value("Month", data.month),
                y: .value("Temp", data.degrees)
            )
        }
    }
}

#Preview {
    ContentView()
}
