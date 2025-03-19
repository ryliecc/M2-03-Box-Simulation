//
//  Enums.swift
//  Box Simulation
//
//  Created by Rylie Castell on 19.03.25.
//

import Foundation

// Aufgabe 3.2 Wetterbedingungen

enum Weather: CaseIterable {
    case sunny
    case rainy
    case cloudy
}

// Aufgabe 3.3 Location Enum statt Outdoor Bool

enum Location: String, CaseIterable {
    case hall = "Dieser Ring befindet sich in einer kleinen, engen Halle. Die Atmosphäre hier ist schnell aufgeheizt!"
    case gym = "Dieser Ring befindet sich in einem Fitnessstudio im Stadtzentrum."
    case outdoorArea = "Dieser Ring befindet sich draußen auf einem leeren Parkplatz."
}
