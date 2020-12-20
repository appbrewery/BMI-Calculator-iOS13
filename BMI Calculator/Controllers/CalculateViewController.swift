//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
//    var bmiValue = "0.0"
    var calculatorBrain = CalculatorBrain()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = sender.value
        let roundedValue = (currentValue*100).rounded()/100
        print(roundedValue)
        heightLabel.text = "\(roundedValue)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        print(currentValue)
        weightLabel.text = "\(currentValue)Kg"

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
    
        calculatorBrain.calculateBMI(height: height, weight: weight)

        
        // Manual way to create modal pop up on a custom class
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
        
        
        // for navigating btw screens that have a segue created on Main.storyboard
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("sender", sender.bmi!)
        
        if segue.identifier == "goToResults" {
            // narrow down the data type and specify the exact type the desination will be
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
                
        }
    }
    
}

