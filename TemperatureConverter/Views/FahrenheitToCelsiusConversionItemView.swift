//
//  FahrenheitToCelsiusConversionItemView.swift.swift
//  TemperatureConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

struct FahrenheitToCelsiusConversionItemView: View {
    
    // MARK: Stored properties
    let conversionResult: FahrenheitToCelsius
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(spacing: 0) {
            Text("\(conversionResult.temperatureInFahrenheit.formatted(.number.precision(.significantDigits(1...3)))) °F")
            
            Text(" = \(conversionResult.temperatureInCelsius.formatted(.number.precision(.significantDigits(1...3)))) °C")
        }
        .font(.largeTitle)
        
    }
    
}

#Preview {
    FahrenheitToCelsiusConversionItemView(conversionResult: FahrenheitToCelsius(temperatureInFahrenheit: 32))
}
