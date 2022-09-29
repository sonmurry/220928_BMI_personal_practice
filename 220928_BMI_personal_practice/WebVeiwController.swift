//
//  WebVeiwController.swift
//  220928_BMI_personal_practice
//
//  Created by Yi_Mac on 2022/09/29.
//

import UIKit
import WebKit

class WebVeiwController: UIViewController {

   
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NAVERBtn(_ sender: UIButton) {
        guard let url = URL(string: "https://m.naver.com") else {return}
        let request = URLRequest(url: url)
        webView?.load(request)
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
