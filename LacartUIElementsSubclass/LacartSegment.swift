//
//  LacartSegment.swift
//  LacartUIElementsSubclass
//
//  Created by Pushpam Group on 17/03/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class LacartSegment: UISegmentedControl {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)!
        initialize()
    }
    func initialize(){
        let attr = NSDictionary(object: UIFont(name: "HelveticaNeue", size: 14.0)!, forKey: NSFontAttributeName as NSCopying)
        setTitleTextAttributes(attr as [NSObject : AnyObject] , for: .normal)
        layer.masksToBounds = true
        //layer.cornerRadius =  5.0
        frame.size.height =  40.0
        tintColor =  UIColor(hex: 0xC82026, alpha: 1.0)
    }
}
