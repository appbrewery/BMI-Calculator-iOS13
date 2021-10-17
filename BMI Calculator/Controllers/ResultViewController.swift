//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yanuar Heru on 03/10/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var calcResult: BmiCalculator?

    @IBOutlet weak var bmi_label: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func recalculateClicked(_ sender: UIButton) {
//        dismiss the view and back to calculate view
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateUI()  {
//        updating the UI on Result View.
        bmi_label.text = String(format: "%.2f", calcResult?.bmi ?? 0.0)
//        update the advice
        adviceLabel.text = calcResult?.advise() ?? ""
//       set the background color
        let bgColor = calcResult?.bmiScale()
        if (bgColor == "underweight") {
            view.backgroundColor = UIColor.brown
        } else if (bgColor == "normal"){
            view.backgroundColor = UIColor.green
        } else if (bgColor == "overweight") {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
}
