//
//  UIView+JZ.swift
//  Jamzone
//
//  Created by Tom Baranes on 12/11/15.
//  Copyright © 2015 Recisio. All rights reserved.
//

import Foundation
import UIKit

// UIView's helper
extension UIView {
    func convertLocalizables() {
        if subviews.count == 0 {
            return
        }
        
        for aSubview: UIView in subviews {
            if let aLabel = aSubview as? UILabel {
                if let text = aLabel.text {
                    aLabel.text = Localized(text)
                }
            } else if let aTextField = aSubview as? UITextField {
                if let text = aTextField.text {
                    aTextField.text = Localized(text)
                }
            } else if let aTextView = aSubview as? UITextView {
                if let text = aTextView.text {
                    aTextView.text = Localized(text)
                }
            } else if let aButton = aSubview as?  UIButton {
                if let title = aButton.titleForState(.Normal) {
                    aButton.setTitle(Localized(title), forState: .Normal)
                }
            } else {
                aSubview.convertLocalizables()
            }
        }
    }
}

// IBInspectable
extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(CGColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.CGColor
        }
    }
    
}