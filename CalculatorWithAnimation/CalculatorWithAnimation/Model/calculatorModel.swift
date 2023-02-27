//
//  calculatorModel.swift
//  CalculatorWithAnimation
//
//  Created by Jaspal Singh on 2023-02-26.
//

import Foundation
import SwiftUI

enum Keys: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case multiply = "X"
    case divide = "÷"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case negative = "-/+"
    case percentage = "%"
    
    
    var buttonColor:Color {
        switch self{
        case .add, .subtract, .multiply, .divide, .equal:
            return Color("Voperator")
        case .clear, .negative, .percentage:
            return Color("Hoperator")
        default:
            return Color("num")
        }
    }
    
}

enum Operation {
    case add, subtract, multiply, divide, none
}
