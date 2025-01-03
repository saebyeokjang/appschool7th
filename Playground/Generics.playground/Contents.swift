import UIKit
import CoreLocation

class RecentList<T: CustomStringConvertible> {
    var slot1: T?
    var slot2: T?
    var slot3: T?
    var slot4: T?
    var slot5: T?
    
    func add(recent: T) {
        slot5 = slot4
        slot4 = slot3
        slot3 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    func getAll() -> [T] {
        var recent = [T]()
        if let slot1 = slot1 { recent.append(slot1) }
        if let slot2 = slot2 { recent.append(slot2) }
        if let slot3 = slot3 { recent.append(slot3) }
        if let slot4 = slot4 { recent.append(slot4) }
        if let slot5 = slot5 { recent.append(slot5) }
        return recent
    }
}

let recentlyCopiedList = RecentList<Int>()
recentlyCopiedList.add(recent: 1)
recentlyCopiedList.add(recent: 2)
recentlyCopiedList.add(recent: 3)
var recentlyCopied = recentlyCopiedList.getAll()
print(recentlyCopied) // Last, Next, First


class Person: CustomStringConvertible {
    var description: String {
        return "Person(\(name))"
    }
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let rodrigo = Person(name: "Rodrigo")
let jose = Person(name: "Jose")
let maria = Person(name: "Maria")

let recentlyVisitedList = RecentList<Person>()
recentlyVisitedList.add(recent: rodrigo)
recentlyVisitedList.add(recent: jose)
recentlyVisitedList.add(recent: maria)
var recentlyVisited = recentlyVisitedList.getAll()

for person in recentlyVisited {
    print(person)
}

func makeDuplicates<T, Key: Hashable>(of item: T, withKeys keys: Set<Key>) -> [Key: T]{
    var duplicates: [Key: T] = [:]
    
    for key in keys {
        duplicates[key] = item
    }
    
    return duplicates
}

let awards: Set<String> = ["Best Visual Effects",
                           "Best Original Score",
                           "Best Original Song",
                           "Best Film Editing"]

let oscars2024 = makeDuplicates(of: "Dune", withKeys: awards)

print(oscars2024["Best Visual Effects"] ?? "")


// 프로토콜과 제네릭

protocol TransportLocation {
    var location: CLLocation { get }
}

protocol TransportMethod {
    associatedtype CollectionPoint: TransportLocation
    
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
}

enum TrainStation: String, TransportLocation {
    case BMS = "Bromley South"
    case VIC = "London Victoria"
    case RAI = "Rainhan (Kent)"
    case BTN = "Brighton (East Sussex)"
    
    var location: CLLocation {
        return CLLocation()
    }
}
    
struct Train: TransportMethod {
    typealias CollectionPoint = TrainStation
    
    var defaultCollectionPoint: CollectionPoint {
        return TrainStation.BMS
    }
    var averageSpeedInKPH: Double { 100 }
}
