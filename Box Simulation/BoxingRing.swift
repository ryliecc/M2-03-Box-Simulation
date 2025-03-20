//
//  BoxingRing.swift
//  Box Simulation
//
//  Created by Rylie Castell on 18.03.25.
//

import Foundation

// Aufgabe 1.2 Box-Ring modellieren

struct BoxingRing {
    var name: String
    var country: String
    var numberViewers: Int

    // Aufgabe 2.5 Boxer und Boxring verbinden
    
    var boxer1: Boxer
    
    var boxer2: Boxer
    
    // Aufgabe 3.1 Kampfrunden
    
    let roundNumber: Int = Int.random(in: 1...4)
    
    func printRounds() {
        switch roundNumber {
        case 1:
            print("Der Kampf ist heute nach einer Runde vorbei!")
        case 2:
            print("Heute geht der Kampf zwei Runden!")
        case 3:
            print("Der Kampf geht heute drei Runden!")
        case 4:
            print("Insgesamt geht der Kampf heute vier Runden!")
        default:
            break
        }
    }

    // Aufgabe 3.2 Wetterbedingungen
    
    let weather = Weather.allCases.randomElement()
    
    func weatherOutlook() {
        switch weather {
        case .sunny:
            print("Das Wetter heute ist schön sonnig!")
        case .rainy:
            print("Das Wetter ist heute regnerisch!")
        case .cloudy:
            print("Der Himmel ist heute bedeckt!")
        default:
            break
        }
    }
    // Aufgabe 3.3 Location Enum statt Outdoor Bool
        var location: Location
        
        mutating func changeLocationRandomly() {
            var newLocation: Location = Location.allCases.randomElement()!
            while newLocation == location {
                newLocation = Location.allCases.randomElement()!
            }
            location = newLocation
        }
    
    // Aufgabe 4.3 Boxkampf
    
    mutating func fight() {
        print("Der Kampf zwischen \(boxer1.firstName + " " + boxer1.lastName) und \(boxer2.firstName + " " + boxer2.lastName) hat begonnen.")
        while boxer1.endurance > 0 && boxer2.endurance > 0 {
            if boxer1.powerPoints <= 0 {
                print("\(boxer2.firstName + " " + boxer2.lastName) hat den Kampf gewonnen.")
                break
            }
            if boxer2.powerPoints <= 0 {
                print("\(boxer1.firstName + " " + boxer1.lastName) hat den Kampf gewonnen.")
                break
            }
            let boxer1IsFirst = Bool.random()
            if boxer1IsFirst {
                print("\(boxer1.firstName + " " + boxer1.lastName) schlägt zu.")
                boxer1.hitEnemy(from: boxer2)
                boxer2.takeHit(from: boxer1)
            } else {
                print("\(boxer2.firstName + " " + boxer2.lastName) schlägt zu.")
                boxer2.hitEnemy(from: boxer1)
                boxer1.takeHit(from: boxer2)
            }
        }
        if boxer1.endurance <= 0 {
            print("\(boxer1.firstName + " " + boxer1.lastName) hat keine Energie mehr und gibt auf.")
        }
        if boxer2.endurance <= 0 {
            print("\(boxer2.firstName + " " + boxer2.lastName) hat keine Energie mehr und gibt auf.")
        }
    }
    }
