//
//  BMIManager.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ken Maready on 6/28/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct BMI {
    var value: Float
    var advice: String
    var color: UIColor
    
    func toString() -> String {
        return String(format: "%.2f", self.value)
    }
}

struct BMIManager {
    var bmi: BMI?
    
    mutating func calculate(weight: Float, height: Float) -> Float {
        let value = (weight * 703) / pow(height, 2)
        var advice = ""
        var color = UIColor.blue
        
        if (value < 18.5) {
            advice = "eat more"
            color = UIColor.blue
        } else if (value <= 24.9) {
            advice = "doing great"
            color = UIColor.green
        } else {
            advice = "eat less"
            color = UIColor.red
        }
        
        self.bmi = BMI(value: value, advice: advice, color: color)
        return self.bmi!.value
    }
    

}
