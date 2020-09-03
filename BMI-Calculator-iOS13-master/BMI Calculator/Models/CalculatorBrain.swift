//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Artem Vaniukov on 03.09.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        var advice = ""
        var color: UIColor = .black
        
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else if bmiValue < 25.0 {
            advice = "You're on the cool side!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            advice = "Cut with snacks!"
            color = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Whoops! Searching for an advice for you in our advice room =)"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
}
