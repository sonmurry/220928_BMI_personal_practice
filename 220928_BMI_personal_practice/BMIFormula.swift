//
//  BMIFormula.swift
//  220928_BMI_personal_practice
//
//  Created by Yi_Mac on 2022/09/29.
//

import Foundation
class BMIFormula {
    let height : Double
    let weight : Double
    var result = 0.0
    var body = ""
    
    init(height : Double, weight : Double) {
        self.height = height
        self.weight = weight
    }
    
    func bmiCalc(height : Double, weight : Double) -> String {
        result = weight/(height*height*0.0001)
        let shortenedResult = String(format: "%.1f", result)
        
        switch result {
        case 0..<18.5 :
            return "BMI: \(shortenedResult), 판정: 저체중"
        case 18.5..<23 :
            return "BMI: \(shortenedResult), 판정: 정상"
        case 23..<25 :
            return "BMI: \(shortenedResult), 판정: 과체중"
        case 25..<30 :
            return "BMI: \(shortenedResult), 판정: 비만"
        default :
            return "BMI: \(shortenedResult), 판정: 고도비만"
        }
        
    }
}
