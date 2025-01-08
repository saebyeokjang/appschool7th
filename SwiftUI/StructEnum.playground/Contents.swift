
struct SmapleStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String {
        /* return */"Hello \(name)"
        // 함수의 한줄 실행구문의 결과가 함수의 반환타입과 일치하는 경우
        // return 키워드 생략 가능
    }
}

class SampleClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String {
        "Hello \(name)"
        
    }
}

// 값 타입
let myStruct1 = SmapleStruct(name: "구조체 초기 이름")
var myStruct2 = myStruct1
myStruct2.name = "구조체 이름 바꿈"
print(myStruct1.name)
print(myStruct2.name)

// 참조 타입
let myClass1 = SampleClass(name: "클래스 초기 이름")
var myClass2 = myClass1
myClass2.name = "클래스 이름 바꿈"
print(myClass1.name)
print(myClass2.name)

enum Temperature {
    case hot
    case warm
    case cold(centigrade: Int)
}

func displayTempInfo(temp: Temperature) {
    switch temp {
    case .hot:
        print("Hot")
    case .warm:
        print("Warm")
    case .cold(let centigrade) where centigrade <= 0:
        print("Ice warning: \(centigrade) degrees.")
    case .cold:
        print("It is cold but not freezing.")
    }
}

displayTempInfo(temp: Temperature.cold(centigrade: -10))
