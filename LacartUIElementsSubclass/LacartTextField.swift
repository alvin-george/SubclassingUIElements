//
//  LacartTextField.swift
//  LacartUIElementsSubclass
//
//  Created by Pushpam Group on 17/03/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class LacartTextField: UITextField {
     override func draw(_ rect: CGRect) {
        
     // Drawing code
        
        frame.size.height =  40.0
     }

    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)!
        initialize()
    }
    func initialize(){
        frame.size.height =  40.0
        
        font = UIFont(name: "HelveticaNeue", size: 13.0)!
        tintColor =  UIColor(hex: 0xC82026, alpha: 1.0)
        borderStyle = UITextBorderStyle.roundedRect
        backgroundColor =  UIColor(hex: 0xC82026, alpha: 0.12)
        enablesReturnKeyAutomatically =  true
    }
    
}
