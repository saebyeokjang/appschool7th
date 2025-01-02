import UIKit

protocol Payable {
    func calculateWages() -> Double
}

protocol TimeOffRequestable {
    func requestTimeOff(days: Int) -> Bool
}

func processEmployee(employee: Payable & TimeOffRequestable) {
    let wages = employee.calculateWages()
    let timeOffRequest = employee.requestTimeOff(days: 10)
}

protocol Container {
    associatedtype Item
    mutating func add(_ item: Item)
    var count: Int { get }
}

struct IntStack: Container {
    typealias Item = Int
    private var items: [Int] = []
    
    mutating func add(_ item: Int) { items.append(item) }
    var count: Int { items.count }
}

protocol Describable {
    var description: String { get }
}

func printDecription<T: Describable>(_ item: T) {
    print(item.description)
}
