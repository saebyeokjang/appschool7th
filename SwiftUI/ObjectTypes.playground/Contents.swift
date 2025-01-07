
class BankAccount {
    var accountNumber: Int
    var accountBalance: Float
    // 수수료
    let fees: Float = 25.00
    
    init(accountNumber: Int, accountBalance: Float) {
        self.accountNumber = accountNumber
        self.accountBalance = accountBalance
    }
    
    func displayBalance() {
        print("Account number is \(accountNumber)")
        print("Your balance is \(accountBalance)")
    }
    
    // 전체 잔액에서 수수료를 뺀 금액을 출력하는 함수
    var balanceLessFees: Float {
        get {
            return accountBalance - fees
        }
    }
    
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1 = BankAccount(accountNumber: 12312312, accountBalance: 2530.78)
account1.displayBalance()
print(BankAccount.getMaxBalance())
account1.balanceLessFees


class MyClass {
    let title: String
    // lazy 지연해서 생성하도록 하는 키워드
    // 즉시실행함수(클로저)로 변수를 초기화하는 코드
    lazy var myProperty: String = {
        var result = resourceIntensiveTask()
        result = processData(data: result)
        return result
    }()
    
    // 오래 걸리는 함수 예시
    func resourceIntensiveTask() -> String {
        return "Hello World!"
    }
    
    // 오래 걸리는 작업에 대한 예시 함수
    func processData(data: String) -> String {
        return self.title + "!"
    }
    
    init(title: String) {
        self.title = title
    }
    
}

// 프로토콜 선언
protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

// 클래스 정의: 프로토콜을 준수하는 클래스를 정의함
// (프로토콜에 선언되어있는 변수와 메서드를 구현)
class MyClass1: MessageBuilder {
    let name: String
    
    func buildMessage() -> String {
        return "Hello \(name)"
    }
    
    init(name: String) {
        self.name = name
    }
}
