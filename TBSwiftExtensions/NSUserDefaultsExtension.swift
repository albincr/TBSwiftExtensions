//
//  NSUserDefaultsExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

extension NSUserDefaults {
 
    public static func contains(key: String) -> Bool {
        return self.standardUserDefaults().contains(key)
    }

    public func contains(key: String) -> Bool {
        return self.dictionaryRepresentation().keys.contains(key)
    }
    
    public func reset() {
        if let bundleIdentifier = NSBundle.mainBundle().bundleIdentifier {
            self.removePersistentDomainForName(bundleIdentifier)
            self.synchronize()
        }
    }
}