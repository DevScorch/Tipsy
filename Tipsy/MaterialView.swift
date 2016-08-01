//
//  MaterialView.swift
//  Tipsy
//
//  Created by Johan Sas on 01-08-16.
//  Copyright © 2016 Snowfallstudios. All rights reserved.
//

import UIKit

class MaterialView: UIView {
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
    }
    
    
}
