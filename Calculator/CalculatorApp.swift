//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Matt Semmel on 8/20/22.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}
