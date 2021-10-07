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
}

struct CalculatorBrain: BmiCalculator {
    var bmi: Float?
    
    mutating func calculateBmi(weight: Float, height: Float) {
        bmi = weight/powf(height, 2)
    }
    
    func putBmi() -> String {
        return String(format: "%.2f", bmi ?? 0.0)
    }
    
}
