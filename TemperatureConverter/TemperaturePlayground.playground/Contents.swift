import Cocoa

struct FahrenheitToCelsius {
    
    // MARK: Stored properties
    let temperatureInFahrenheit: Double
    
    // MARK: Computed properties
    var temperatureInCelsius: Double {
        return (temperatureInFahrenheit - 32.0) * 5.0 / 9.0
    }
    
}

let exampleOne = FahrenheitToCelsius(temperatureInFahrenheit: 0)
exampleOne.temperatureInCelsius

//
//  FahrenheitToCelsiusViewModel.swift
//  TemperatureConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

class FahrenheitToCelsiusViewModel {
    
    // MARK: Stored properties
    var providedTemperatureInFahrenheit: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed properties
    var conversionResult: FahrenheitToCelsius? {
        
        // Verify that the input is numeric
        guard let temperatureInFahrenheit = Double(providedTemperatureInFahrenheit) else {
            
            recoverySuggestion = "Please provide a numeric value."
            return nil
            
        }
        
        // Verify that the given temperature is above absolute zero
        guard temperatureInFahrenheit > -459.67 else {
            
            recoverySuggestion = "Please ensure the temperature given is greater than absolute zero (-459.67 °F)."
            return nil
            
        }
        
        // Return the correct value
        recoverySuggestion = ""
        return FahrenheitToCelsius(temperatureInFahrenheit: temperatureInFahrenheit)
        
    }
    
    
    // MARK: Initializer(s)
    init(
        providedTemperatureInFahrenheit: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedTemperatureInFahrenheit = providedTemperatureInFahrenheit
        self.recoverySuggestion = recoverySuggestion
    }
    
}

let viewModel = FahrenheitToCelsiusViewModel()
viewModel.providedTemperatureInFahrenheit = "100"
viewModel.recoverySuggestion
viewModel.conversionResult?.temperatureInCelsius

