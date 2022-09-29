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
        var body = ""   //갑자기 body 변수를 초기화 하라고 하네요.
        
        guard let heightString = txtHeight.text, let weightString = txtWeight.text, let height = Double(heightString), let weight = Double(weightString) else {
            lblResult.text = "값을 다시 입력해주세요."
            return
        }
        if height == 0 || weight == 0 {
                lblResult.text = "값을 다시 입력해주세요.(구분용)"
        } else {
                let user = BMIFormula(height:height, weight:weight)
                body = user.bmiCalc(height: user.height, weight: user.weight)
                lblResult.text = body
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 20
            lblResult.backgroundColor = user.color
            lblResult.textColor = user.fontColor
        }
        
       
        
        
       /*
        if height == 0 || weight == 0 {
            lblResult.text = "값을 다시 입력해주세요.(구분용)"
        } else {
            let user = BMIFormula(height:Double(txtHeight.text!)!, weight:Double(txtWeight.text!)!)
            body = user.bmiCalc(height: user.height, weight: user.weight)
            lblResult.text = body
        }
        */
        
        /*
        guard height == 0, weight == 0 else {
            lblResult.text = "값을 다시 입력해주세요(구분용)"
            return
        }
        let user = BMIFormula(height:Double(txtHeight.text!)!, weight:Double(txtWeight.text!)!)
        body = user.bmiCalc(height: user.height, weight: user.weight)
        lblResult.text = body
        */
       
        
        /*
        let user = BMIFormula(height:height, weight:weight),
        body = user.bmiCalc(height: user.height, weight: user.weight)
        
        lblResult.text = body
         */
        /*
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
         */
    
         
    }



}
