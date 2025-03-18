//
//  Boxer.swift
//  Box Simulation
//
//  Created by Rylie Castell on 17.03.25.
//

import Foundation

struct Boxer {
    var firstName: String
    var lastName: String
    var age: Int
    let nationality: String
    var resiliencePoints: Int
    var powerPoints: Int
    var endurance: Int {
        didSet {
            print("Endurance changed from \(oldValue) to \(endurance).")
        }
    }
    var hitRate: Int
    
    func description() {
        print("\(firstName) \(lastName) (\(age))")
    }
    
    mutating func birthday() {
        age += 1
    }
    
    mutating func training() {
        if endurance >= 10 {
            powerPoints += 10
            endurance -= 10
        }
    }
    
    mutating func regeneration() {
        endurance += 15
    }
}

var boxer1 = Boxer(
    firstName: "Henry",
    lastName: "Hiddleston",
    age: 29,
    nationality: "United Kingdom",
    resiliencePoints: 64,
    powerPoints: 14,
    endurance: 25,
    hitRate: 20
)

var boxer2 = Boxer(
    firstName: "Axel",
    lastName: "Schweiss",
    age: 32,
    nationality: "Austria",
    resiliencePoints: 52,
    powerPoints: 18,
    endurance: 13,
    hitRate: 17
)
