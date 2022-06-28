//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ken Maready on 6/28/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var BMIDisplay: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    
    var bmi: BMI?


    override func viewDidLoad() {
        super.viewDidLoad()
        BMIDisplay.text = bmi?.toString()
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
