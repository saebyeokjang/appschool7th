//
//  Function.swift
//  
//
//  Created by 장새벽 on 12/31/24.
//
import Foundation

public func fullName(_ givenName: String,
              _ middleName: String? = nil,
              _ familyName: String) -> String {
    var fullName = familyName
    if let middleName { fullName += " \(middleName)" }
    fullName += " \(givenName)"
    print(fullName)
    return fullName
}
