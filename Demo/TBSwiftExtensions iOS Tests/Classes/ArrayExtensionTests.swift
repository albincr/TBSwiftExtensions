//
//  ArrayExtensionTests.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest

class ArrayExtensionTests: XCTestCase {

    // MARK - Life cycle
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    // MARK -
    
    func testRemoveObject() {
        var arrayToTest = [1, 2, 3]
        var isObjectRemoved = arrayToTest.removeObject(2)
        XCTAssertTrue(isObjectRemoved, "Object should have been removed")
        isObjectRemoved = arrayToTest.removeObject(5)
        XCTAssertFalse(isObjectRemoved, "Any object should been removed")
    }
    
}
