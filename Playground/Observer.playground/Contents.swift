import UIKit

class Manager {
    var currentUserName: String = "홍길동" {
        willSet {
            print("매니저가 \(currentUserName)에서 \(newValue)으로 변경됩니다")
        }
        didSet {
            print("매니저 권한 위임됨: \(oldValue) -> \(currentUserName)")
        }
    }
}

var manager = Manager()
manager.currentUserName = "장새벽"
manager.currentUserName = "임꺽정"
