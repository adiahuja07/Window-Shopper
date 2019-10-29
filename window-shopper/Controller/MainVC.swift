//
//  ViewController.swift
//  window-shopper
//
//  Created by Admin on 18/09/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTxtField!
    @IBOutlet weak var itemTxtField: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let cancelBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        cancelBtn.setTitle("Calculate", for: .normal)
        cancelBtn.backgroundColor = #colorLiteral(red: 1, green: 0.533179118, blue: 0.3817307833, alpha: 1)
        cancelBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        cancelBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = cancelBtn
        itemTxtField.inputAccessoryView = cancelBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxtField.text, let itemTxt = itemTxtField.text {
            if let wage = Double(wageTxt), let item = Double(itemTxt) {
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                view.endEditing(true)
                resultLbl.text = "\(Wage.calculateWage(forPrice: item, yourWage: wage))"
            }
        }
    }

    @IBAction func clearCalculatorTapped(_ sender: UIButton) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtField.text = ""
        itemTxtField.text = ""
    }
    
}

