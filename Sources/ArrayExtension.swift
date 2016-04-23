//
//  File.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import Foundation

// MARK: - Delete

public extension Array where Element : Equatable {

    public mutating func removeObject(object : Generator.Element) -> Bool {
        if let index = self.indexOf(object) {
            self.removeAtIndex(index)
            return true
        }
        return false
    }
    
    public mutating func removeObjects(object: Element) {
        for idx in self.indexesOf(object).reverse() {
            self.removeAtIndex(idx)
        }
    }

}

// MARK: - Getter

extension Array {
    
    public func random() -> Element? {
        guard self.count > 0 else {
            return nil
        }
        
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
    
    public func get(index: Int) -> Element? {
        return index >= 0 && index < count ? self[index] : nil
    }
    
    public func takeMax(n: Int) -> Array {
        return Array(self[0..<Swift.max(0, Swift.min(n, count))])
    }

}

public extension Array where Element : Equatable {
    
    public func indexesOf(object: Element) -> [Int] {
        var indexes = [Int]()
        for index in 0..<self.count {
            if self[index] == object {
                indexes.append(index)
            }
        }
        return indexes
    }

    public func lastIndexOf(object: Element) -> Int? {
        return indexesOf(object).last
    }
    
    public func difference(values: [Element]...) -> [Element] {
        var result = [Element]()
        elements: for element in self {
            for value in values {
                if value.contains(element) {
                    continue elements
                }
            }
            result.append(element)
        }
        return result
    }

    public func intersection(values: [Element]...) -> Array {
        var result = self
        var intersection = Array()
        
        for (i, value) in values.enumerate() {
            if i > 0 {
                result = intersection
                intersection = Array()
            }
            
            value.forEach {
                if result.contains($0) {
                    intersection.append($0)
                }
            }
        }
        return intersection
    }
    
    public func union(values: [Element]...) -> Array {
        var result = self
        for array in values {
            for value in array {
                if !result.contains(value) {
                    result.append(value)
                }
            }
        }
        return result
    }

}

// MARK: - Update

extension Array {
    
    public func reverseIndex(index: Int) -> Int {
        return Swift.max(self.count - 1 - index, 0)
    }
    
    public mutating func shuffle() {
        var j: Int
        
        for i in 0..<(self.count - 2) {
            j = Int(arc4random_uniform(UInt32(self.count - i)))
            if i != i + j {
                swap(&self[i], &self[i + j])
            }
        }
    }
}

// MARK: - Helpers

extension Array {
    
    public func containsInstanceOf<T>(object: T) -> Bool {
        for item in self {
            if item.dynamicType == object.dynamicType {
                return true
            }
        }
        return false
    }
    
    
    public func testAll(test: (Element) -> Bool) -> Bool {
        for item in self {
            if !test(item) {
                return false
            }
        }
        return true
    }
    
}

public extension Array where Element : Equatable {

    public func contains(items: Element...) -> Bool {
        return items.testAll { self.indexOf($0) >= 0 }
    }

    public func containsArray(lookFor: [Element]) -> Bool {
        for item in lookFor {
            if self.contains(item) == false {
                return false
            }
        }
        return true
    }

}