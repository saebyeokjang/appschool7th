//
//  Closure.swift
//  
//
//  Created by 장새벽 on 12/31/24.
//
import Foundation

//func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int {
//    return operation(a, b)
//})

//let multiply: (Int, Int) -> Int = { $0 * $1 }
//let addition: (Int, Int) -> Int = { $0 + $1 }

//let result = performOperation(5, 6, operation: multiply)
//let result2 = performOperation(5, 6, operation: addition)

// 인라인 함수 정의
//let result3 = performOperation(5, 6, operation: { x, y in x - y })
//print(result3)

// 후행 클로저
let numbers: [Int] = [1, 2, 3, 4, 5]
//let squaredNumbers: numbers.map { element in element * element}
let squaredNumbers = numbers.map { $0 * $0 }
//print(squaredNumbers)

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

//let incrementer = makeIncrementer(incrementAmount: 5)
//print(incrementer()) //5씩 증가
//print(incrementer()) //5씩 증가
