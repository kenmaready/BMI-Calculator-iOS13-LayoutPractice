//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightDisplay: UILabel!
    @IBOutlet weak var weightDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let feet = Int(sender.value / 12)
        let inches = Int(sender.value.truncatingRemainder(dividingBy: 12))
        heightDisplay.text = "\(feet) ft \(inches) in"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightDisplay.text = "\(String(format: "%.2f", sender.value))lb"
    }
}

