//
//  FahrenheitToCelsiusView.swift
//  TemperatureConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

struct FahrenheitToCelsiusView: View {
    
    // MARK: Stored properties
    @State var viewModel = FahrenheitToCelsiusViewModel()
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // OUTPUT
            if let conversionResult = viewModel.conversionResult {
                
                VStack(spacing: 0) {
                    
                    FahrenheitToCelsiusConversionItemView(conversionResult: conversionResult)
                        .padding(.bottom, 30)
                    
                    // Add a button so that the result can be saved
                    Button {
                        viewModel.saveResult()
                        // DEBUG: Show how many items are in the resultHistory array
                        print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                    } label: {
                        Text("Save")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)
                }
                .frame(height: 250)
                
            } else {
                ContentUnavailableView("Unable to perform conversion", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
                    .frame(height: 250)

            }
            
            // INPUT
            TextField("Enter a temperature in Fahrenheit", text: $viewModel.providedTemperatureInFahrenheit)
                .textFieldStyle(.roundedBorder)
            
            HStack {
                Text("History")
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .padding(.top)
            
            // Iterate over the list of results
            List(viewModel.resultHistory) { currentResult in
                
                FahrenheitToCelsiusConversionItemView(conversionResult: currentResult)
                
            }
            .listStyle(.plain)
            
            
        }
        .navigationTitle("Temperature Converter")
        .padding()
    }
}

#Preview {
    NavigationStack {
        FahrenheitToCelsiusView()
    }
}
