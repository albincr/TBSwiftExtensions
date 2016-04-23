//
//  StringExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest
@testable import TBSwiftExtensions_iOS

class StringExtensionTests: XCTestCase {
    
    // MARK - Life cycle
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    // MARK -
    
    func testSubscriptIndex() {
        let aString = "Hello world"
        XCTAssertEqual(aString[0], "H")
        XCTAssertEqual(aString[2], "l")
    }
    
    func testSubscriptRange() {
        let aString = "Hello world"
        XCTAssertEqual(aString[1...3], "ell")
    }

    func testLengthRange() {
        let aString = "Hello world"
        XCTAssertEqual(aString.length, aString.characters.count)
    }
    
    func testClassName() {
        var aString = "hello world"
        aString = aString.capitalizeFirst
        XCTAssertEqual(aString[0], "H")
    }
    
    func testContainsSuccess() {
        let aString = "Hello world"
        XCTAssertTrue(aString.contains("worl"))
        XCTAssertTrue(aString.contains("Hello"))
        XCTAssertTrue(aString.contains("Hello world"))
    }

    func testContainsSuccessFailure() {
        let aString = "Hello world"
        XCTAssertFalse(aString.contains("elllo"))
    }
    
    // MARK - Validators
    
    func testIsEmailValidSuccess() {
        let aString = "test@gmail.com"
        XCTAssertTrue(aString.isEmail)
    }
    
    func testIsEmailValidFailure() {
        var aString = "test"
        XCTAssertFalse(aString.isEmail)
        aString = "test@gmail"
        XCTAssertFalse(aString.isEmail)
        aString = "test@.com"
        XCTAssertFalse(aString.isEmail)
    }

}
