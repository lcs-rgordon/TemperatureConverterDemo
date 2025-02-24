//
//  TemperatureConverterApp.swift
//  TemperatureConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

@main
struct TemperatureConverterApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FahrenheitToCelsiusView()
            }
        }
    }
}
