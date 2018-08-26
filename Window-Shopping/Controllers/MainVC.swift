//
//  ViewController.swift
//  Window-Shopping
//
//  Created by Don Gordon on 8/25/18.
//  Copyright © 2018 DGsolutions. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeCalcBtn()
        
    }

    @objc func calculate() {
        print("Calculating!")
    }
    
    func customizeCalcBtn() {
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor =  #colorLiteral(red: 0.9759346843, green: 0.5839473009, blue: 0.02618087828, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }


}

