//
//  StringExtension.swift
//  TBSwiftExtension
//
//  Created by Tom Baranes on 14/11/15.
//  Copyright © 2015 Recisio. All rights reserved.
//

import Foundation

protocol Occupiable {
    var isEmpty: Bool { get }
    var isNotEmpty: Bool { get }
}

extension Occupiable {
    var isNotEmpty: Bool {
        return !isEmpty
    }
}

extension String: Occupiable { }
extension Array: Occupiable { }
extension Dictionary: Occupiable { }
extension Set: Occupiable { }

extension Optional where Wrapped: Occupiable {
    var isNilOrEmpty: Bool {
        switch self {
        case .None:
            return true
        case .Some(let value):
            return value.isEmpty
        }
    }
    
    var isNotNilNotEmpty: Bool {
        return !isNilOrEmpty
    }
}
