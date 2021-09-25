//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliding(_ sender: UISlider) {
        putLabel()
    }
    
    @IBAction func weightSliding(_ sender: UISlider) {
        putLabel()
    }
    
    @IBAction func pressCalculate(_ sender: UIButton) {
        let weight = Float(weightSlider.value)
        let height = Float(heightSlider.value)
        let bmi = weight/powf(height, 2)
//        I use powf instead of pow since it is more accurate as I use float
        print(bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        putLabel()
    }
    
    func putLabel() {
        heightLabel.text = String(format: "%.2f", heightSlider.value) + "m"
        weightLabel.text = String(format: "%.0f", weightSlider.value) + "kg"
    }


}

