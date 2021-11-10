//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raeein Bagheri on 2021-11-09.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace =  String(format: "%.1f", bmi ?? "0.0")
        return bmiTo1DecimalPlace
        
    }
}
