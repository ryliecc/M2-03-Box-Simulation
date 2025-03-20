import Foundation

// Aufgabe 1.3 Instanzen erzeugen

var boxer1 = Boxer(
    firstName: "Henry",
    lastName: "Hiddleston",
    age: 29,
    nationality: "United Kingdom",
    resiliencePoints: 24,
    powerPoints: 14,
    endurance: 25,
    hitRate: 16
)

var boxer2 = Boxer(
    firstName: "Axel",
    lastName: "Schweiss",
    age: 32,
    nationality: "Austria",
    resiliencePoints: 12,
    powerPoints: 18,
    endurance: 13,
    hitRate: 17
)

var boxer3 = Boxer(
    firstName: "Tyler",
    lastName: "Durden",
    age: 34,
    nationality: "USA",
    resiliencePoints: 78,
    powerPoints: 24,
    endurance: 26,
    hitRate: 23)

var boxingRing1 = BoxingRing(
    name: "Fight Club",
    country: "USA",
    numberViewers: 20,
    boxer1: boxer1,
    boxer2: boxer2,
    location: Location.allCases.randomElement()!)

var boxingRing2 = BoxingRing(
    name: "Super Smash Bros",
    country: "Japan",
    numberViewers: 42,
    boxer1: boxer1,
    boxer2: boxer2,
    location: Location.allCases.randomElement()!)

print("Guten Tag zum heutigen Kampf im \(boxingRing1.name), wo \(boxer1.firstName + " " + boxer1.lastName) gegen \(boxer2.firstName + " " + boxer2.lastName) antritt.")

// Aufgabe 1.4 Favorit bestimmen

func chooseFavorite(_ boxer1: Boxer,_ boxer2: Boxer) {
    let allPointsBoxer1: Int = boxer1.resiliencePoints + boxer1.powerPoints + boxer1.endurance + boxer1.hitRate
    let allPointsBoxer2: Int = boxer2.resiliencePoints + boxer2.powerPoints + boxer2.endurance + boxer2.hitRate
    
    if allPointsBoxer1 > allPointsBoxer2 {
        print("Der Favorit des heutigen Abends ist \(boxer1.firstName + " " + boxer1.lastName).")
    } else if allPointsBoxer1 < allPointsBoxer2 {
        print("Der Favorit des heutigen Abends ist \(boxer2.firstName + " " + boxer2.lastName).")
    } else {
        print("Heute Abend gibt es keinen Favoriten. Es wird ein besonders spannender Kampf werden.")
    }
}

chooseFavorite(boxer1, boxer2)

// Aufgabe 2.3 Methoden testen

boxer1.description()
boxer2.description()
boxer1.birthday()
boxer1.description()
boxer1.training()
boxer1.training()
boxer1.regeneration()
boxer1.training()
boxer2.training()
boxer2.regeneration()
boxer2.training()

// Aufgabe 2.5 Boxer und Boxring verbinden

print("Die zugeteilten Boxer für \(boxingRing1.name) sind \(boxingRing1.boxer1.firstName + " " + boxingRing1.boxer1.lastName) und \(boxingRing1.boxer2.firstName + " " + boxingRing1.boxer2.lastName).")

// Aufgabe 2.6 Boxer austauschen

func exchangeBoxer(boxingRing: BoxingRing, newBoxer: Boxer) -> BoxingRing {
    var copy = boxingRing
    copy.boxer1 = newBoxer
    return copy
}

// Bonusaufgabe:
//  mutating func exchangeBoxer(newBoxer: Boxer) {
//      boxer1 = newBoxer
//  }


// Aufgabe 3.1 Kampfrunden

boxingRing1.printRounds()

// Aufgabe 3.2 Wetterbedingungen

boxingRing1.weatherOutlook()

// Aufgabe 3.3 Location Enum statt Outdoor Bool

print(boxingRing1.location.rawValue)

// Aufgabe 4.1 Schwäche des Boxers

boxer1.showWeakness()

// Aufgabe 4.2 Gesamtanzahl Champions

print("Die Gesamtanzahl der Boxer ist \(Boxer.numberOfBoxers).")

// Aufgabe 4.3 Boxkampf

boxingRing1.fight()
