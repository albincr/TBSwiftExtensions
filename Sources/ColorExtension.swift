//
//  ColorExtension.swift
//  Demo
//
//  Created by Tom Baranes on 23/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import Foundation
#if os(iOS) || os (tvOS)
    import UIKit
#elseif os(OSX)
    import Cocoa
#endif

public extension TBColor {

    public convenience init?(hexString: String) {
        self.init(hexString: hexString, alpha: 1.0)
    }
    
    public convenience init?(hexString: String, alpha: Float) {
        var formatted = hexString.stringByReplacingOccurrencesOfString("0x", withString: "")
        formatted = formatted.stringByReplacingOccurrencesOfString("#", withString: "")
        if let hex = Int(formatted, radix: 16) {
            let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
            let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
            let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
            self.init(red: red, green: green, blue: blue, alpha: CGFloat(alpha))
        } else {
            return nil
        }
    }
    
}