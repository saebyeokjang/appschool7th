
let greetings = "Hello, World!"
print(greetings)

// 여러줄의 문자열, 들여쓰기 가능
let multipleLines = """
동해물과 백두산이 마르고 닳도록
    하느님이 보우하사 우리나라
        만세
"""
print(multipleLines)

// 문자열 보간법
let name = "Swift"
let welcomeMessage = "Hello, \(name)!"
print(welcomeMessage)

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1.")

var newLine = "\n" // newline 특수문자
print(newLine)

var backSlash = "\\"
print(backSlash)

let escapedString =
"줄바꿈: \n, 캐리지 리턴: \r, 탭: \t, 역슬래시: \\, 따옴표: \", 작은따옴표: ', 유니코드: \u{FF}"
print(escapedString)

let firstIndex = greetings.startIndex
let lastIndex = greetings.index(before: greetings.endIndex)
print(greetings[firstIndex])
print(greetings[lastIndex])

// 문자열 슬라이싱
// print(greetings[firstIndex+1])
// 숫자를 더하는 방식으로 사용할 수 없음 String.Index라는 타입임
let range = greetings.index(firstIndex, offsetBy: 1)..<greetings.index(lastIndex, offsetBy: -1)
print(greetings[range])

// 변수 var 는 수정 가능
backSlash = "\\ \(backSlash)"
print(backSlash)

let maxLength = 10

let myTuple = (432, 3.14, "This is a String")
//let myString = myTuple.2
let (_, _, myString) = myTuple
print(myString)

let myTuple2 = (count: 10, length: 432.433, message: "This is a String")

print(myTuple2.message)
