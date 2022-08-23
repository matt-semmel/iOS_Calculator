//
//  Digit.swift
//  Calculator
//
//  Created by Matt Semmel on 8/21/22.
//

import Foundation
import CoreImage

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
