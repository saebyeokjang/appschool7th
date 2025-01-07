
// 함수 선언 부분
func sayHello() {
    print("Hello")
}

// 함수 실행 부분
sayHello()

func buildMessageFor(name: String, count: Int) -> String {
    return "\(name) has bought \(count) books"
}

let message = buildMessageFor(name: "Apple", count: 3)
print(message)

func buildMessageFor(userName name: String, userCount count: Int) -> String {
    return "\(name), you are customer number \(count)"
}

let message1 = buildMessageFor(userName: "John", userCount: 100)

func buildMessageFor(_ name: String = "Customer", count: Int) -> String {
    return "\(name), you are customer number \(count)"
}
let message3 = buildMessageFor(count: 100)
let message4 = buildMessageFor("아무개", count: 100)
print(message3)
print(message4)

func displayStrings(_ strings: String...) {
    for string in strings {
        print("\(string) ", terminator: "")
    }
    print()
}

displayStrings("Hello", "World", "Swift", "Programming")


func displayStrings(_ strings: String..., counts: Int...) {
    for string in strings {
        print(string, terminator: "")
    }
    print(" + count: \(counts)")
}

displayStrings("H", "W", "S", "P", counts: 1, 2, 3)

// inout 키워드: 파라미터 값을 외부에도 적용해주는 키워드
func doubleValue(_ value: inout Int) {
    value *= 2
    print(value)
}

var myValue = 10
doubleValue(&myValue)
print("myValue: \(myValue)")

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let mathFunction: (Int, Int) -> Int = add
print(mathFunction(2, 3))

let multiply: (Int, Int) -> Int = { $0 * $1 }
print(multiply(2, 3))

func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let result = performOperation(20, 30, operation: multiply)
print(result)

print(performOperation(40, 50, operation: { $0 * $1 }))

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTen = makeIncrementer(incrementAmount: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())
