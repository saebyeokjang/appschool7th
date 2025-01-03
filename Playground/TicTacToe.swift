import Foundation

// 게임 보드를 표현하는 열거형
enum Piece: CustomStringConvertible {
    case empty
    case x
    case o
    
    var description: String {
        switch self {
        case .empty: return " "
        case .x: return "X"
        case .o: return "O"
        }
    }
}

// 게임 상태를 표현하는 프로토콜
protocol GameState {
    var currentPlayer: Piece { get }
    var board: [[Piece]] { get }
    func isValidMove(row: Int, column: Int) -> Bool
}

// 게임 로직을 담당하는 클래스
class TicTacToe: GameState {
    var board: [[Piece]]
    var currentPlayer: Piece
    
    init() {
        board = [[.empty, .empty, .empty],
                 [.empty, .empty, .empty],
                 [.empty, .empty, .empty]]
        currentPlayer = .x // x가 첫 번째 플레이어
    }
    
    // 유효한 이동인지 확인하는 메서드
    func isValidMove(row: Int, column: Int) -> Bool {
        // 보드 범위 안에 있는지, 해당 위치가 비어있는지 확인
        return row >= 0 && row < 3 && column >= 0 && column < 3 && board[row][column] == .empty
    }
    
    // 플레이어가 이동을 수행하는 메서드
    func makeMove(row: Int, column: Int) -> Bool {
        if isValidMove(row: row, column: column) {
            board[row][column] = currentPlayer
            // 현재 플레이어 변경
            currentPlayer = currentPlayer == .x ? .o : .x
            return true
        }
        return false
    }
    
    // 승자 확인 메서드
    func checkWinner() -> Piece? {
        // 가로, 세로, 대각선 승리 여부 확인
        
        // 가로 체크
        for row in board {
            if row[0] == row[1] && row[1] == row[2] && row[0] != .empty {
                return row[0]
            }
        }
        
        // 세로 체크
        for col in 0..<3 {
            if board[0][col] == board[1][col] && board[1][col] == board[2][col] && board[0][col] != .empty {
                return board[0][col]
            }
        }
        
        // 대각선 체크
        if board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != .empty {
            return board[0][0]
        }
        
        if board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != .empty {
            return board[0][2]
        }
        
        // 무승부 체크 (보드가 가득 찼을 때)
        for row in board {
            for piece in row {
                if piece == .empty {
                    return nil // 아직 빈칸이 있으면 무승부가 아님
                }
            }
        }
        
        return .empty // 무승부
    }
    
    // 보드 출력 메서드
    func printBoard() {
        for row in board {
            print(row.map { $0.description }.joined(separator: " | "))
            print("---------")
        }
    }
}

var game = TicTacToe()

while true {
    game.printBoard()
    print("\n현재 플레이어: \(game.currentPlayer)")
    
    print("행 입력 (0-2)('q' 입력시 종료): ", terminator: "")
    let rowInput = readLine() ?? ""
    if rowInput == "q" { break }
    guard let row = Int(rowInput), row >= 0 && row < 3 else {
        print("잘못된 입력입니다. 0-2 범위 내의 값을 입력하세요.")
        continue
    }
    
    print("열 입력 (0-2)('q' 입력시 종료): ", terminator: "")
    let colInput = readLine() ?? ""
    if colInput == "q" { break }
    guard let column = Int(colInput), column >= 0 && column < 3 else {
        print("잘못된 입력입니다. 0-2 범위 내의 값을 입력하세요.")
        continue
    }
    
    if !game.makeMove(row: row, column: column) {
        print("잘못된 위치입니다. 이미 선택된 칸입니다. 다시 시도해주세요.")
        continue
    }
    
    if let winner = game.checkWinner() {
        game.printBoard()
        if winner == .empty {
            print("무승부!")
        } else {
            print("\(winner) 승리!")
        }
        break
    }
}

