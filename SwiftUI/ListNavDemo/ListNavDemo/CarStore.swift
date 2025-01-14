//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 장새벽 on 1/14/25.
//

import SwiftUI

@Observable
class CarStore {
    var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
