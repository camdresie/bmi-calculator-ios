//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cam Riemensnider on 11/3/21.
//  Copyright © 2021 Cam Dresie. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    var bmiValue = "0.0"
    
    mutating func getBmiValue() -> String {
        bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight / height / height) * 703
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should try to raise your BMI!", color: UIColor.blue )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Right in the sweet spot!", color: UIColor.green)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Try your best to lower your BMI!", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color
        return color!
    }
    
}
