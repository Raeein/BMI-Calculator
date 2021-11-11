//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raeein Bagheri on 2021-11-09.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        let bmiAdvice = bmiAdviceAndColor().0
        let bmiColor = bmiAdviceAndColor().1
        bmi = BMI(value: bmiValue, advice: bmiAdvice , color: bmiColor)
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace =  String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
        
    }
    
    func bmiAdviceAndColor() -> (String, UIColor) {
        
        let advice: String
        let color: UIColor
        if let bmi  = bmi?.value {
            if bmi < 18.5 {
                advice = "Eat more piess"
                color = UIColor.blue
            }
            else if bmi < 24.9 {
                advice = "Fit as a fiddle"
                color = UIColor.green
            }
            else {
                advice = "Over Weight"
                color = UIColor.red
            }
            return (advice, color)
        } else {
            return("No Adivce", UIColor.black)
        }
    }
    
}
