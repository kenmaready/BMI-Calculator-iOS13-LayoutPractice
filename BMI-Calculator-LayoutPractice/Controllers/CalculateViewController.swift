//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightDisplay: UILabel!
    @IBOutlet weak var weightDisplay: UILabel!
    
    var BMI: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let feet = Int(sender.value / 12)
        let inches = Int(sender.value.truncatingRemainder(dividingBy: 12))
        heightDisplay.text = "\(feet)ft \(inches)in"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightDisplay.text = "\(Int(sender.value))lb"
    }

    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = (weight * 703) / pow(height, 2)
        print("BMI: \(BMI)")
        self.BMI = BMI
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.BMI = self.BMI
        }
    }
}

