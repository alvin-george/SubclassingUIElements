//
//  LacartButton.swift
//  LacartUIElementsSubclass
//
//  Created by Pushpam Group on 17/03/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class LacartButton: UIButton {
    
    var myValue: Int
    
    required init?(coder aDecoder: NSCoder) {
        // set myValue before super.init is called
        self.myValue = 0
        super.init(coder: aDecoder)
        initialize()
        // set other operations after super.init, if required
        
    }
    func initialize() {
        
        frame.size.height =  40
        backgroundColor = UIColor(hex: 0xFFC130, alpha: 1.0)
        layer.masksToBounds = true
        layer.cornerRadius =  5.0
        
        let attributedTitle = NSAttributedString(string: (titleLabel?.text)!, attributes: [NSStrokeColorAttributeName: UIColor.black, NSFontAttributeName : UIFont(name: "HelveticaNeue-Medium", size: 14.0)!])
        
        setAttributedTitle(attributedTitle, for: .normal)
        tintColor = UIColor.black        
    }
}
extension UIColor {
    convenience init(hex: UInt32, alpha: Double = 1.0) {
        self.init(red: CGFloat((hex>>16)&0xFF)/255.0, green:CGFloat((hex>>8)&0xFF)/255.0, blue: CGFloat((hex)&0xFF)/255.0, alpha:  CGFloat(255 * alpha) / 255)
    }
}

