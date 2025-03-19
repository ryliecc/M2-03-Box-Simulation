import Foundation

// Aufgabe 1.3 Instanzen erzeugen

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

var boxingRing1 = BoxingRing(
    name: "Fight Club",
    country: "USA",
    numberViewers: 20,
    isOutdoor: true,
    boxer1: boxer1,
    boxer2: boxer2)

var boxingRing2 = BoxingRing(
    name: "Super Smash Bros",
    country: "Japan",
    numberViewers: 42,
    isOutdoor: false,
    boxer1: boxer1,
    boxer2: boxer2)

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

// Aufgabe 3.1 Kampfrunden

boxingRing1.printRounds()

// Aufgabe 3.2 Wetterbedingungen

boxingRing1.weatherOutlook()
