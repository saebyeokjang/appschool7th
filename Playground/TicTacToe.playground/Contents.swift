import UIKit

enum GridPosition: String {
    case empty = " "
    case player1 = "O"
    case player2 = "X"
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    init() {
        for _ in 0..<3 {
            gridStorage.append([GridPosition](repeating: .empty, count: 3))
        }
    }
    
    subscript (row: Int, column: Int) -> GridPosition {
        get {
            gridStorage[row][column]
        }
        set (newValue) {
            gridStorage[row][column] = newValue
        }
    }
    
    func gameStateString() -> String {
        var stateString: String = "-------\n"
        for row in gridStorage {
            stateString += printableString(forRow: row)
        }
        stateString += "-------\n"
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString: String = "|"
        for position in row {
            rowString += position.rawValue + "|"
        }
        return rowString + "\n"
    }
}

var game = TicTacToe()
// 서브스크립트 사용
game[1, 1] = .player1
print(game.gameStateString())

game[0, 2] = .player2
print(game.gameStateString())

game[0, 0] = .player1
print(game.gameStateString())

game[1, 2] = .player2
print(game.gameStateString())

game[2, 2] = .player1
print(game.gameStateString())
