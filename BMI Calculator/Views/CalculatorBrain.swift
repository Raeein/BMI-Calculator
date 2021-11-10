//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raeein Bagheri on 2021-11-09.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI (height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi)
    }
}
