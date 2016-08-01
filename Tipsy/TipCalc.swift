//
//  TipCalc.swift
//  Tipsy
//
//  Created by Johan Sas on 30-07-16.
//  Copyright © 2016 Snowfallstudios. All rights reserved.
//

import Foundation

class TipCalc {
    
   private var _billAmount = 0.0
   private var _tipPercent = 0.0
   private var _tipAmount  = 0.0
   private var _totalAmount = 0.0
   private var _splitBillValue = 0.0
   private var _splitBillNumber = 0.0
   private var splitBillTotal = 0.0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
        
    }
    
    var tipAMount: Double {
        get {
            return _tipAmount
        }
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    
    func CalculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAMount + billAmount
    }
    
    var splitBillValue: Double {
        get {
           return _splitBillValue
        } set {
            _splitBillValue = newValue
        }
    }
    
    var splitBillNumber: Double {
        get {
            return _splitBillNumber
        } set {
            _splitBillNumber = newValue
        }
    }

    init(splitBillvalue: Double, splitBillNumber: Double) {
        self._splitBillNumber = splitBillNumber
        self._splitBillValue = splitBillValue
}
    
    func splitBill() {
        _splitBillValue = totalAmount / splitBillNumber
        
    }
    


}


