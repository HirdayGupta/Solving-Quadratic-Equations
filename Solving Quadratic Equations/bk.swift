//
//  Keyboard.swift
//  Solving Quadratic Equations
//
//  Created by Hirday Gupta on 08/01/16.
//  Copyright © 2016 Hirday Gupta. All rights reserved.
//

import UIKit

protocol KeyboardDelegate {
    func keyWasTapped(character: String)
}

class CustomKeyboard: UIView {

    
    @IBOutlet var view: UIView!
    
    // The view controller will adopt this protocol (delegate)
    // and thus must contain the keyWasTapped method
    
    
    
        
        // This variable will be set as the view controller so that
        // the keyboard can send messages to the view controller.
        var delegate: KeyboardDelegate?
        
        // MARK:- keyboard initialization
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            
            //initializeSubviews()
        }
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            initializeSubviews()
        }
        
        func initializeSubviews() {
            
            let xibFileName = "CK" // xib extention not included
            let bundle = NSBundle(forClass: self.dynamicType)
            let nib = UINib(nibName: xibFileName, bundle: bundle)
            let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
            view.frame = bounds
            view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            
            self.addSubview(view)
            view.frame = self.bounds
        }
    
    
    @IBAction func keyTapped(sender: UIButton) {
        
        self.delegate?.keyWasTapped(sender.titleLabel!.text!)

    }
    
        // MARK:- Button actions from .xib file
        
    
    
        
    
}
