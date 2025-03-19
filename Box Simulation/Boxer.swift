//
//  Boxer.swift
//  Box Simulation
//
//  Created by Rylie Castell on 17.03.25.
//

import Foundation

// Aufgabe 1.1 Boxer modellieren

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
    
    // Aufgabe 2.1 Boxer Methoden schreiben
    
    func description() {
        print("\(firstName) \(lastName) (\(age))")
    }
    
    mutating func birthday() {
        age += 1
    }
    
    // Aufgabe 2.2 Trainingsmethode
    
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
