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
