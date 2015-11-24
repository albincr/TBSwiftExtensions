//
//  UIView+JZ.swift
//  TBSwiftExtension
//
//  Created by Tom Baranes on 12/11/15.
//  Copyright © 2015 Recisio. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func convertLocalizables() {
        if subviews.count == 0 {
            return
        }
        
        for aSubview: UIView in subviews {
            if let aLabel = aSubview as? UILabel {
                if let text = aLabel.text {
                    aLabel.text = NSLocalizedString(text, comment: "")
                }
            } else if let aTextField = aSubview as? UITextField {
                if let text = aTextField.text {
                    aTextField.text = NSLocalizedString(text, comment: "")
                }
                if let placeholder = aTextField.placeholder {
                    aTextField.placeholder = NSLocalizedString(placeholder, comment: "")
                }
            } else if let aTextView = aSubview as? UITextView {
                if let text = aTextView.text {
                    aTextView.text = NSLocalizedString(text, comment: "")
                }
            } else if let aButton = aSubview as?  UIButton {
                if let title = aButton.titleForState(.Normal) {
                    aButton.setTitle(NSLocalizedString(title, comment: ""), forState: .Normal)
                }
            } else {
                aSubview.convertLocalizables()
            }
        }
    }
}
