//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Matt Semmel on 8/21/22.
//

import Foundation
import Combine

extension CalculatorView {
    final class ViewModel: ObservableObject {
        
        // properties
        
        @Published private var calculator = Calculator()
        
        var displayText: String {
            return calculator.displayText
        }
        
        var buttonTypes: [[ButtonType]] {
            [[.allClear, .neg, .perc, .operation(.div)],
             [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.mult)],
             [.digit(.four), .digit(.five), .digit(.six), .operation(.sub)],
             [.digit(.one), .digit(.two), .digit(.three), .operation(.add)],
             [.digit(.zero), .dec, .eq]]
        }
        
        // actions
        
        func performAction(for buttonType: ButtonType) {
            switch buttonType {
            case .digit(let digit):
                calculator.setDigit(digit)
            case .operation(let operation):
                calculator.setOperation(operation)
            case .neg:
                calculator.toggleSign()
            case .perc:
                calculator.setPercent()
            case .dec:
                calculator.setDecimal()
            case .eq:
                calculator.evaluate()
            case .allClear:
                calculator.allClear()
            case .clear:
                calculator.clear()
            }
        }
    }
}
