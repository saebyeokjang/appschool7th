
class BankAccount {
    var accountNumber: Int
    var accountBalance: Float
    
    init(accountNumber: Int, accountBalance: Float) {
        self.accountNumber = accountNumber
        self.accountBalance = accountBalance
    }
    
    func displayBalance() {
        print("Account number is \(accountNumber)")
        print("Your balance is \(accountBalance)")
    }
    
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1 = BankAccount(accountNumber: 12312312, accountBalance: 2530.78)
account1.displayBalance()
