import UIKit

let ledZeppelin = ["Robert, Jimmy, John, Paul"]

for (index, value) in ledZeppelin.enumerated() {
    print("\(index): \(value)")
}

for value in 1...12 {
    print("5 x \(value) = \(value * 5)")
}

let zeppelinByInstrument = ["vocals": "Robert",
                            "lead guitar": "Jimmy",
                            "drums": "John",
                            "bass guitar": "John Paul"]

for (key, value) in zeppelinByInstrument {
    print("\(value)가 \(key)를 연주합니다.")
}

//ledZeppelin.forEach { musician in print(musician) }
ledZeppelin.forEach { print($0) }

zeppelinByInstrument.forEach { (key, value) in print("\(value)가 \(key)를 연주합니다.") }

// While Loop

enum CoinFlip: Int {
    case heads = 0
    case tails = 1
    
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int.random(in: 0...1))!
    }
}
        
func howManyHeadsInARow() -> Int {
    var numberOfHeadsInARow = 0
    var currentFlip: CoinFlip = CoinFlip.flipCoin()
    print("currentFlip.rawValue: \(currentFlip.rawValue)")
    while currentFlip == .heads {
        numberOfHeadsInARow += 1
        currentFlip = CoinFlip.flipCoin()
    }

    return numberOfHeadsInARow
}

let noOfHeads = howManyHeadsInARow()
print(noOfHeads)
enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}
enum MealError: Error {
    case canOnlyMoveToAppropriateState
}

class Meal {
    private(set) var state: MealState = .initial
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState
        }
    }
    
    func buyIngredients() throws {
        try change(to: .buyIngredients)
    }
    func prepareIngredients() throws {
        try change(to: .prepareIngredients)
    }
    func cook() throws {
        try change(to: .cook)
    }
    func plateUp() throws {
        try change(to: .plateUp)
    }
    func serve() throws {
            try change(to: .serve)
        }
    }
    let dinner = Meal()
    do {
    //    try dinner.change(to: .buyIngredients)
    //    try dinner.change(to: .prepareIngredients)
    //    try dinner.change(to: .cook)
    //    try dinner.change(to: .plateUp)
    //    try dinner.change(to: .serve)
        
        try dinner.buyIngredients()
        try dinner.prepareIngredients()
        try dinner.cook()
        try dinner.plateUp()
        try dinner.serve()
        
        print("저녁 식사가 준비되었습니다!")
    } catch let error {
        print(error)
    }
