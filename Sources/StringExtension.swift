//
//  StringExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

// MARK - Subscript

extension String {
    
    public subscript(integerIndex: Int) -> Character {
        return self[startIndex.advancedBy(integerIndex)]
    }
    
    public subscript(integerRange: Range<Int>) -> String {
        let start = startIndex.advancedBy(integerRange.startIndex)
        let end = startIndex.advancedBy(integerRange.endIndex)
        let range = start..<end
        return self[range]
    }
    
}

// MARK - Helpers

extension String {
    
    public var length: Int {
        return self.characters.count
    }
    
    public func isOnlyEmptySpacesAndNewLineCharacters() -> Bool {
        let characterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()
        let newText = self.stringByTrimmingCharactersInSet(characterSet)
        return newText.isEmpty
    }

    func contains(find: String) -> Bool{
        return self.rangeOfString(find) != nil
    }

    public func contains(find: String, compareOption: NSStringCompareOptions) -> Bool {
        return self.rangeOfString(find, options: compareOption) != nil
    }
    
    public func containsEmoji() -> Bool {
        for i in 0...length {
            let c: unichar = (self as NSString).characterAtIndex(i)
            if (0xD800 <= c && c <= 0xDBFF) || (0xDC00 <= c && c <= 0xDFFF) {
                return true
            }
        }
        return false
    }

}

// MARK: - Getter

extension String {
    
    public var extractURLs: [NSURL] {
        var urls: [NSURL] = []
        let detector: NSDataDetector?
        do {
            detector = try NSDataDetector(types: NSTextCheckingType.Link.rawValue)
        } catch _ as NSError {
            detector = nil
        }
        
        let text = self
        if let detector = detector {
            detector.enumerateMatchesInString(text, options: [], range: NSRange(location: 0, length: text.characters.count), usingBlock: {
                (result: NSTextCheckingResult?, flags: NSMatchingFlags, stop: UnsafeMutablePointer<ObjCBool>) -> Void in
                if let result = result,
                    let url = result.URL {
                    urls.append(url)
                }
            })
        }
        return urls
    }

}

// MARK: - Updating

extension String {
    
    public mutating func trim() {
        self = trimmed()
    }
    
    public func trimmed() -> String {
        return componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).joinWithSeparator("")
    }
    
    public var capitalizeFirst: String {
        var result = self
        result.replaceRange(startIndex...startIndex, with: String(self[startIndex]).capitalizedString)
        return result
    }
    
}

// MARk - Validator

extension String {

    public func isNumber() -> Bool {
        if let _ = NSNumberFormatter().numberFromString(self) {
            return true
        }
        return false
    }

    public var isEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluateWithObject(self)
    }

}