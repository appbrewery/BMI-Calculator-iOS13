//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Yanuar Heru on 07/10/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
protocol BmiCalculator {
    var bmi: Float? {get set}
    
    mutating func calculateBmi(weight:Float, height:Float)
    func putBmi() -> String
    func bmiScale() -> String
    func advise() -> String
}

struct CalculatorBrain: BmiCalculator {
    
    var bmi: Float?
    
    mutating func calculateBmi(weight: Float, height: Float) {
        bmi = weight/powf(height, 2)
    }
    
    func putBmi() -> String {
        return String(format: "%.2f", bmi ?? 0.0)
    }
    
    func bmiScale() -> String {
        let idx = bmi ?? 0.0
        if (idx == 0.0) {
            return "undefinded"
        } else if (idx < 18.5) {
            return "underweight"
        } else if (idx < 24.9) {
            return "normal"
        } else {
            return "overweight"
        }
    }
    
    func advise() -> String {
        let idx = bmi ?? 0.0
        if (idx == 0.0) {
            return "undefinded"
        } else if (idx < 18.5) {
            return "eat more pies!"
        } else if (idx < 24.9) {
            return "fit as a fiddle!"
        } else {
            return "Eat less pies!"
        }
    }
    
}
