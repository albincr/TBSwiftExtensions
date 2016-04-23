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
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

// MARK -

extension StringExtensionTests {

    func testSubscriptIndex() {
        let aString = "Hello world"
        XCTAssertEqual(aString[0], "H")
        XCTAssertEqual(aString[2], "l")
    }
    
    func testSubscriptRange() {
        let aString = "Hello world"
        XCTAssertEqual(aString[1...3], "ell")
    }
    
}

extension StringExtensionTests {
    
    func testLengthRange() {
        let aString = "Hello world"
        XCTAssertEqual(aString.length, aString.characters.count)
    }
    
    func testIsOnlyEmptySpacesAndNewLineCharacters() {
        XCTAssertFalse("test".isOnlyEmptySpacesAndNewLineCharacters())
        XCTAssertTrue(" \n ".isOnlyEmptySpacesAndNewLineCharacters())
    }
    
    func testClassName() {
        var aString = "hello world"
        aString = aString.capitalizeFirst
        XCTAssertEqual(aString[0], "H")
    }
    
    func testContains() {
        let aString = "Hello world"
        XCTAssertTrue(aString.contains("worl"))
        XCTAssertTrue(aString.contains("Hello"))
        XCTAssertTrue(aString.contains("Hello world"))
        XCTAssertFalse(aString.contains("elllo"))
    }
    
    func testIsIncludeEmoji() {
        XCTAssertTrue("test 😃 emoji".containsEmoji())
        XCTAssertFalse("test emoji".containsEmoji())
    }
    
}

// MARK: - Getter

extension StringExtensionTests {
 
    func testExtractURLs() {
        let string = "http://google.com http fpt:// http://facebook.com test"
        let urls = string.extractURLs
        XCTAssertEqual(urls.count, 2)
    }
    
}

// MARK: - Getter

extension StringExtensionTests {
 
    func testTrim() {
        var string = "space space"
        string.trim()
        XCTAssertFalse(string.containsString(" "))
    }
    
}

// MARK - Validators

extension StringExtensionTests {
    
    func testIsNumber() {
        XCTAssertTrue("425252".isNumber())
        XCTAssertFalse("test".isNumber())
    }
    
    func testIsEmailValid() {
        var aString = "test@gmail.com"
        XCTAssertTrue(aString.isEmail)
        aString = "test"
        XCTAssertFalse(aString.isEmail)
        aString = "test@gmail"
        XCTAssertFalse(aString.isEmail)
        aString = "test@.com"
        XCTAssertFalse(aString.isEmail)
    }

}
