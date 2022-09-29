//
//  BMIFormula.swift
//  220928_BMI_personal_practice
//
//  Created by Yi_Mac on 2022/09/29.
//

import Foundation
import UIKit


class BMIFormula {
    let height : Double
    let weight : Double
    var result = 0.0
    var body = ""
    
    var color = UIColor.white
    var fontColor = UIColor.black
    
    init(height : Double, weight : Double) {
        self.height = height
        self.weight = weight
    }
    
    func bmiCalc(height : Double, weight : Double) -> String {
        result = weight/(height*height*0.0001)
        let shortenedResult = String(format: "%.1f", result)
        
        switch result {
        case 0..<18.5 :
            color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 0.7)
            fontColor = UIColor.white
            return "BMI: \(shortenedResult), 판정: 저체중"
            
        case 18.5..<23 :
            color = UIColor(displayP3Red: 0.0, green: 0.8, blue: 0.0, alpha: 0.7)
            fontColor = UIColor.black
            return "BMI: \(shortenedResult), 판정: 정상"
        case 23..<25 :
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 0.4)
            fontColor = UIColor.black
            return "BMI: \(shortenedResult), 판정: 과체중"
        case 25..<30 :
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 0.7)
            fontColor = UIColor.white
            return "BMI: \(shortenedResult), 판정: 비만"
        default :
            color = UIColor(displayP3Red: 0.3, green: 0.0, blue: 0.0, alpha: 1.0)
            fontColor = UIColor.white
            return "BMI: \(shortenedResult), 판정: 고도비만"
        }
        
    }
}
