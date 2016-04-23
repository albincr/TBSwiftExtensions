//
//  DictionaryExtensionTests.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest

class DictionaryExtensionTests: XCTestCase {
    
    // MARK - Life cycle
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    // MARK -
    
    func testMergeDictionaries() {
        let dic1 = ["one": 1, "two": 2]
        let dic2 = ["three": 3, "four": 4]
        var finalDic: Dictionary<String, Int> = [:]
        finalDic.merge(dic1, dic2)
        XCTAssertEqual(finalDic.count, dic1.count + dic2.count)
        for (key, _) in dic1 {
            XCTAssertEqual(finalDic[key], dic1[key])
        }
        for (key, _) in dic2 {
            XCTAssertEqual(finalDic[key], dic2[key])
        }
    }
    
}
