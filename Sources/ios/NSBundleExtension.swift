//
//  NSBundleExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

extension NSBundle {

    public var appVersion: String? {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    public var appBuild: String? {
        return self.infoDictionary?["CFBundleVersion"] as? String
    }
    
}    