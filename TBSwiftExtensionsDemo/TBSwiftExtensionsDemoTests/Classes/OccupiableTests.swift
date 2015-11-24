//
//  OccupiableTests.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest
@testable import TBSwiftExtensionsDemo

class OccupiableTests: XCTestCase {
    
    // MARK - 
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }


    // MARK - isEmpty
 
    func testStringIsEmptySuccess() {
        let string = ""
        XCTAssertTrue(string.isEmpty)
    }

    func testStringIsEmptyFailure() {
        let string = "stringNotEmpty"
        XCTAssertFalse(string.isEmpty)
    }

    func testArrayIsEmptySuccess() {
        let array: [Int] = []
        XCTAssertTrue(array.isEmpty)
    }
    
    func testArrayIsEmptyFailure() {
        let array: [Int] = [1, 2, 3]
        XCTAssertFalse(array.isEmpty)
    }

    func testDictionaryIsEmptySuccess() {
        let dic: [String: Int] = [:]
        XCTAssertTrue(dic.isEmpty)
    }
    
    func testDictionaryIsEmptyFailure() {
        let dic: [String: Int] = ["1": 1, "2": 2, "3": 3]
        XCTAssertFalse(dic.isEmpty)
    }

    // MARK - isNotEmpty
    
    func testStringIsNotEmptySuccess() {
        let string = "stringIsNotEmpty"
        XCTAssertTrue(string.isNotEmpty)
    }
    
    func testStringIsNotEmptyFailure() {
        let string = ""
        XCTAssertFalse(string.isNotEmpty)
    }
    
    func testArrayIsNotEmptySuccess() {
        let array: [Int] = [1, 2, 3]
        XCTAssertTrue(array.isNotEmpty)
    }
    
    func testArrayIsNotEmptyFailure() {
        let array: [Int] = []
        XCTAssertFalse(array.isNotEmpty)
    }
    
    func testDictionaryIsNotEmptySuccess() {
        let dic: [String: Int] = ["1": 1, "2": 2, "3": 3]
        XCTAssertTrue(dic.isNotEmpty)
    }
    
    func testDictionaryIsNotEmptyFailure() {
        let dic: [String: Int] = [:]
        XCTAssertFalse(dic.isNotEmpty)
    }

    // MARK - Optional isNilOrEmpty
    
    func testOptionalIsEmptySuccess() {
        let string: String? = ""
        XCTAssertTrue(string.isNilOrEmpty)
    }
    
    func testOptionalIsEmptyFailure() {
        let string: String? = "stringNotEmpty"
        XCTAssertFalse(string.isNilOrEmpty)
    }
}
