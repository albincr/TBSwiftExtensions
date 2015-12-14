//
//  StringExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

extension String {
    
    // MARK - Subscript
    
    public subscript(integerIndex: Int) -> Character {
        return self[startIndex.advancedBy(integerIndex)]
    }
    
    public subscript(integerRange: Range<Int>) -> String {
        let start = startIndex.advancedBy(integerRange.startIndex)
        let end = startIndex.advancedBy(integerRange.endIndex)
        let range = start..<end
        return self[range]
    }
    
    // MARK - Access
    
    public var length: Int {
        return self.characters.count
    }
    
    func contains(find: String) -> Bool{
        return self.rangeOfString(find) != nil
    }

    public func contains(find: String, compareOption: NSStringCompareOptions) -> Bool {
        return self.rangeOfString(find, options: compareOption) != nil
    }
    
    public var capitalizeFirst: String {
        var result = self
        result.replaceRange(startIndex...startIndex, with: String(self[startIndex]).capitalizedString)
        return result
    }
    
    // MARk - Validator
    
    public var isEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluateWithObject(self)
    }

}