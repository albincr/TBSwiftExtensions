//
//  NSUserDefaultsExtensionTests.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest
@testable import TBSwiftExtensions_iOS

class NSUserDefaultsExtensionTests: XCTestCase {
    
    // MARK - Life cycle
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    // MARK -
    
    func testContainsKeySuccess() {
        let key = "aKey"
        let value = "aValue"
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key)
        NSUserDefaults.standardUserDefaults().synchronize()
        XCTAssertTrue(NSUserDefaults.contains(key))
    }

    func testContainsKeyFailure() {
        let key = "aFakeKey"
        XCTAssertFalse(NSUserDefaults.contains(key))
    }
 
    func testResetUserDefaults() {
        let nbOfDefaults = NSUserDefaults.standardUserDefaults().dictionaryRepresentation().keys.count
        
        let key = "aKey"
        let value = "aValue"
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key)
        NSUserDefaults.standardUserDefaults().synchronize()
        NSUserDefaults.standardUserDefaults().reset()
        XCTAssertEqual(nbOfDefaults, NSUserDefaults.standardUserDefaults().dictionaryRepresentation().keys.count)
    }
}
