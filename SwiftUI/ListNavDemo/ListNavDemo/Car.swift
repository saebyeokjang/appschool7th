//
//  Car.swift
//  ListNavDemo
//
//  Created by 장새벽 on 1/14/25.
//

import Foundation

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}
