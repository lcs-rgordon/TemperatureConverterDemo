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
