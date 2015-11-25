//
//  NSRangeExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 25/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

extension NSRange {
    
    init(text: String, afterOccurence occurence: String) {
        self = (text as NSString).rangeOfString(occurence, options: [])
        if location != NSNotFound {
            location++
            length = text.length - location
        }
    }
    
}