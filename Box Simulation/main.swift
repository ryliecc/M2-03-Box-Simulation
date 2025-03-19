import Foundation

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
    isOutdoor: true)

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



// Aufgabe 3.1 Kampfrunden

boxingRing1.printRounds()
