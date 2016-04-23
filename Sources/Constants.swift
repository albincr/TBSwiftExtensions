//
//  Constants.swift
//  Demo
//
//  Created by Tom Baranes on 23/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import Foundation

#if os(iOS) || os (tvOS)
    import UIKit
    public  typealias TBColor = UIColor
#elseif os(OSX)
    import Cocoa
    public typealias TBColor = NSColor
#endif
