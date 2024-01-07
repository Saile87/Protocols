//
//  Vehicle.swift
//  Protocol
//
//  Created by Elias Breitenbach on 26.09.23.
//

import Foundation

protocol Vehicle {
    var name: String {get}
    var color: String {get}
    
}

protocol Price {
    var value: Double {get}
    
}

struct Car: Vehicle, Price {
    var name: String
    var color: String
    var value: Double
}

struct Bicycle: Vehicle {
    var name: String
    var color: String
    
}

struct Book: Price {
    var value: Double
}
