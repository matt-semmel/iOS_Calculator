//
//  ButtonType.swift
//  Calculator
//
//  Created by Matt Semmel on 8/21/22.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable, CustomStringConvertible {
    case digit(_ digit: Digit)
    case operation(_ operation: Operation)
    case neg
    case perc
    case dec
    case eq
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .neg:
            return "±"
        case .perc:
            return "%"
        case .dec:
            return "."
        case .eq:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .allClear, .clear, .neg, .perc:
            return Color(.lightGray)
        case .operation, .eq:
            return .teal
        case .digit, .dec:
            return .secondary
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .allClear, .clear, .neg, .perc:
            return .black
        default:
            return .white
        }
    }
}
