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
game.gridStorage[1][1] = .player1
game.gridStorage[0][2] = .player2
print(game.gameStateString())
