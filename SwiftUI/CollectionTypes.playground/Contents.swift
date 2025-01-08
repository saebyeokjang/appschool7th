
var tree: [String] = ["Pine", "Oak", "Yew"]
var tree2: Array<String> = ["Pine", "Oak", "Yew"]

var emptryArray: [String] = []
var emptyArray2 = Array<String>()

var nameArray = [String](repeating: "My String", count: 10)

var firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]
let thirdArray = firstArray + secondArray + tree

firstArray.append("Orange")

print(thirdArray.count)

if !thirdArray.isEmpty {
    print("thirdArray는 비어있지 않습니다.")
}

if thirdArray.contains("Oak") {
    print("thirdArray 는 \"Oak\"를 가지고 있습니다." )
}

// 배열 인덱스 1번에 "Maple" 값을 추가 ( 배열의 인덱스 1번은 2번째 요소임. 배열의 인덱스는 0번부터 시작! )
firstArray.insert("Maple", at: 1)

// 1000 > 1004 > 1008 > 1012
// 0 * 4 > 1 * 4 > 2 * 4 > 3 * 4

firstArray += secondArray // firstArray = firstArray + secondArray

// 배열의 인덱스를 이용한 삭제
firstArray.remove(at: 1)

// where 조건이 참인 요소 전부를 삭제
firstArray.removeAll(where: { $0 == "Blue" })

let removeItem = firstArray.removeLast() // 마지막 요소를 삭제한 후 해당 요소 값을 반환
print(removeItem)

firstArray.removeAll()

// 배열의 요소 반복
secondArray.forEach { print($0) }

for item in secondArray {
    print(item)
}

let mixedArray: [Any] = ["A String", 432, 34.989]

for object in mixedArray {
    if let intValue = object as? Int {
        print("intValue: \(intValue)")
    } else if let doubleValue = object as? Double {
        print("doubleValue: \(doubleValue)")
    } else if let stringValue = object as? String {
        print("stringValue: \(stringValue)")
    }
}
