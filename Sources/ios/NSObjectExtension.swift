//
//  NSObjectExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//
    
import Foundation

extension NSObject {
    
    public var className: String {
        return self.dynamicType.className
    }
    
    public static var className: String {
        return stringFromClass(self)
    }
 
}

public func stringFromClass(aClass: AnyClass) -> String {
    return NSStringFromClass(aClass).componentsSeparatedByString(".").last!
}