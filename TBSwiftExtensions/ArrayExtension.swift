//
//  File.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

public extension Array where Element : Equatable {

    mutating func removeObject(object : Generator.Element) -> Bool {
        if let index = self.indexOf(object) {
            self.removeAtIndex(index)
            return true
        }
        return false
    }
    
}