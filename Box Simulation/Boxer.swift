//
//  Boxer.swift
//  Box Simulation
//
//  Created by Rylie Castell on 17.03.25.
//

import Foundation

// Aufgabe 1.1 Boxer modellieren
// Aufgabe 2.4 Boxer Ausrufe

struct Boxer {
    var firstName: String
    var lastName: String
    var age: Int
    let nationality: String
    var resiliencePoints: Int {
        didSet {
            if oldValue > resiliencePoints {
                print("\(firstName + " " + lastName): AUA! 😣")
            } else {
                print("\(firstName + " " + lastName): Yes! 💖✨")
            }
        }
    }
    var powerPoints: Int {
        didSet {
            if oldValue > powerPoints {
                print("\(firstName + " " + lastName): Oh nein! 😵‍💫")
            } else {
                print("\(firstName + " " + lastName): BAM! 💪🔥")
            }
        }
    }
    var endurance: Int {
        didSet {
            print("\(firstName + " " + lastName): Ausdauer von \(oldValue) zu \(endurance) geändert!")
            if oldValue > endurance {
                print("\(firstName + " " + lastName): Puh! 😮‍💨")
            } else {
                print("\(firstName + " " + lastName): Aaah... 😌")
            }
        }
    }
    var hitRate: Int {
        didSet {
            if oldValue > hitRate {
                print("\(firstName + " " + lastName): Mist! 😖")
            } else {
                print("\(firstName + " " + lastName): Treffer! 🎯😏")
            }
        }
    }
    
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
    
    // Aufgabe 4.1 Schwäche des Boxers
    private let weakness: Weakness
    
    init(firstName: String, lastName: String, age: Int, nationality: String, resiliencePoints: Int, powerPoints: Int, endurance: Int, hitRate: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.nationality = nationality
        self.resiliencePoints = resiliencePoints
        self.powerPoints = powerPoints
        self.endurance = endurance
        self.hitRate = hitRate
        self.weakness = Weakness.allCases.randomElement()!
        Boxer.numberOfBoxers += 1
    }
    
    func showWeakness() {
        let copy: Weakness = weakness
        print("Die Schwäche des Boxers \(firstName + " " + lastName) ist: \(copy.rawValue).")
    }
    
    // Aufgabe 4.2 Gesamtzahl Champions
    
    static var numberOfBoxers: Int = 0
}
