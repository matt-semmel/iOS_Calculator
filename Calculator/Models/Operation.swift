//
//  Operation.swift
//  Calculator
//
//  Created by Matt Semmel on 8/21/22.
//

import Foundation
import SwiftUI

enum Operation: CaseIterable, CustomStringConvertible {
    case add, sub, mult, div
    
    var description: String {
        switch self {
        case .add:
            return "+"
        case .sub:
            return "-"
        case .mult:
            return "*"
        case .div:
            return "÷"
        }
    }
}
