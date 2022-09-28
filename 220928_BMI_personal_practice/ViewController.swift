//
//  ViewController.swift
//  220928_BMI_personal_practice
//
//  Created by Yi_Mac on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Do something
    }

    @IBAction func bmiCalcBtn(_ sender: UIButton) {
        
        var body = ""
        if txtHeight.text == nil || txtWeight.text == nil {
            body = "값을 다시 입력해주세요."
        }else if  txtHeight.text == "0" || txtWeight.text == "0"{
            body = "값을 다시 입력해주세요."
        }else{
            let user = BMIFormula(height:Double(txtHeight.text!)!, weight:Double(txtWeight.text!)!)
            body = user.bmiCalc(height: user.height, weight: user.weight)
        }
        lblResult.text = body
    }
}



