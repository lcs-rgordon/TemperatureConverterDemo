//
//  FahrenheitToCelsius.swift
//  TemperatureConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import Foundation

struct FahrenheitToCelsius: Identifiable {
    
    // MARK: Stored properties
    let id = UUID()
    let temperatureInFahrenheit: Double
    
    // MARK: Computed properties
    var temperatureInCelsius: Double {
        return (temperatureInFahrenheit - 32.0) * 5.0 / 9.0
    }
    
}
