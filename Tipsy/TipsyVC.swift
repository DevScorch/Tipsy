//
//  ViewController.swift
//  Tipsy
//
//  Created by Johan Sas on 30-07-16.
//  Copyright © 2016 Snowfallstudios. All rights reserved.
//

import UIKit

class TipsyVC: UIViewController {
  
    
   
    
    // MARK: - @IBOutlets
    
    @IBOutlet weak var tipsyTitleView: UIView!
    @IBOutlet weak var tipsyTitleLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPrecentLabel: UILabel!
    @IBOutlet weak var tipPrecentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    @IBOutlet weak var splitBillLabel: UILabel!
    @IBOutlet weak var splitBillSLider: UISlider!
    @IBOutlet weak var splitBillAmountLabel: UILabel!
    
    
    
    // MARK: - @Properties
    
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    var splitCalc = TipCalc(splitBillvalue: 0.0, splitBillNumber: 0.0)
    
    
    
    // MARK: - Initialize Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipPrecentValue()
        splitBillValue()
        calcSplit()
        updateUI()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    
    // MARK  - @IBActions
    @IBAction func billAmountChanges(_ sender: AnyObject) {
        calcTip()
        
    }
    
    @IBAction func tipPercentChanges(_ sender: AnyObject) {
        calcTip()
        tipPrecentValue()
        
    }
    
    
    @IBAction func splitBillChanges(_ sender: AnyObject) {
      calcSplit()
      splitBillValue()
    }
    
    
    
    // MARK: - Functions
    
    func calcTip() {
        
        tipCalc.tipPercent = Double(tipPrecentSlider.value)
        tipCalc.billAmount = ((billAmountTextField.text)! as NSString).doubleValue
        tipCalc.CalculateTip()
        updateUI()
        
    }
    
    func updateUI() {
        tipAmountLabel.text = String(format: "$%0.2f", tipCalc.tipAMount)
        totalAmountLabel.text = String(format: "$%0.2f", tipCalc.totalAmount)
        splitBillAmountLabel.text = String(format: "$%0.2f", tipCalc.splitBillValue)
        
    }
    
    func textFieldShouldReturn(_textField: UITextField) -> Bool {
        if _textField == billAmountTextField {
            _textField.isFirstResponder()
            calcTip()
            calcSplit()
        }
        return true
        
    }
    
    func tipPrecentValue() {
        tipPrecentLabel.text = "Tip: \(Int(tipPrecentSlider.value * 100 ))%"
    }

    func calcSplit() {
        tipCalc.splitBillNumber = Double(splitBillSLider.value)
        tipCalc.splitBillValue = tipCalc.totalAmount / tipCalc.splitBillNumber
        updateUI()
    }
    
    func splitBillValue() {
        splitBillLabel.text = "SPLIT: \(Int(splitBillSLider.value))"
    }
    
    func dismissKeyboard() {

        view.endEditing(true)
    }
    
    
    // MARK: Extensions
    
    


}

