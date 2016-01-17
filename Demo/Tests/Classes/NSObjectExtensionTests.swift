//
//  NSObjectExtensionTests.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import XCTest
@testable import TBSwiftExtensionsDemoIOS

class NSObjectExtensionTests: XCTestCase {
    
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
    
    func testClassName() {
        let vc = UIViewController()
        XCTAssertEqual(vc.className, "UIViewController")
        XCTAssertEqual(UIViewController.className, "UIViewController")
    }
    
}
