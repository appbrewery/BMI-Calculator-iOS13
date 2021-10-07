//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Yanuar Heru on 07/10/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
protocol BmiCalculator {
    var bmi: Float {get set}
    
    mutating func calculateBmi(weight:Float, height:Float) -> Float
    func putBmi() -> String
}
