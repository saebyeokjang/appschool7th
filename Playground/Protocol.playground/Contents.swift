import UIKit

protocol Describable {
    var description: String { get }
}

struct Person : Describable {
    let name: String
    let age: Int
    
    var description: String {
        return "Person: \(name), \(age)"
    }
}

let person = Person(name: "SaeByeok", age: 20)
print(person.description)

protocol Movable {
    func move(to point: CGPoint)
}

class Car : Movable {
    var position: CGPoint = CGPoint(x: 0, y: 0)
    
    func move(to point: CGPoint) {
        position = point
        print("Car moved to \(point)")
    }
}

let car = Car()
car.move(to: CGPoint(x: 10, y: 20))

protocol Named {
    init (name: String)
    
    func displayName()
}

extension Named {
    func printDescription() {
        print(displayName)
    }
}

class Person2 : Named {
    var name: String
    
    func displayName() {
        print("\(name)")
    }
    
    // 필수생성자
    required init(name: String) {
        self.name = name
    }
}

struct Point : Named {
    func displayName() {
        print("\(name)")
    }
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let saebyeok = Person2(name: "SaeByeok")
saebyeok.displayName()
