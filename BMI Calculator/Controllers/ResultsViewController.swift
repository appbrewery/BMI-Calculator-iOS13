//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Matthew Digel on 12/19/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        // Could also do background Color this way:
//        backgroundView.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // can use self too
        //  self.dismiss(animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
