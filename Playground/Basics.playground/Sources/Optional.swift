//
//  Optional.swift
//  
//
//  Created by 장새벽 on 12/31/24.
//
import Foundation

public func runOptional() {
    
    var dayOfTheWeek: String = "Monday"
    dayOfTheWeek = "Tuesday"
    print(dayOfTheWeek)
    dayOfTheWeek = "Wednesday"
    print(dayOfTheWeek)
    //dayOfTheWeek = nil 컴파일 시 오류 발생
    dayOfTheWeek = "" // 빈 문자열이 최선
    
    var numberOfFingersHeldUpByFinn: Int?
    numberOfFingersHeldUpByFinn = nil
    // 값이 없을 때 출력될 기본값을 지정
    print(numberOfFingersHeldUpByFinn ?? "Unknown")
    
    numberOfFingersHeldUpByFinn = 3
    print(numberOfFingersHeldUpByFinn ?? "Unknown")
    
    // 강제 언랩핑
    print(numberOfFingersHeldUpByFinn!)
    
    // 조건부 언래핑
    if let num = numberOfFingersHeldUpByFinn {
        print(num)
    } else {
        print("Unknown")
    }
    // if let 바인딩 간략화
    if let numberOfFingersHeldUpByFinn {
        print(numberOfFingersHeldUpByFinn)
    } else {
        print("Unknown")
    }
    
    //guard let num = numberOfFingersHeldUpByFinn else {
    //    print("Unknown")
    //}
}
