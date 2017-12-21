//
//  SillySongTests.swift
//  SillySongTests
//
//  Created by Macbook Air on 12/20/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import XCTest

@testable import SillySong

class SillySongTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShortenName() {
         XCTAssertEqual(shortenName("Xia"), "ia", "Name was not shortened correctly!")
    }
    
    func testShortenNameCaps() {
        XCTAssertEqual(shortenName("XIA"), "IA", "Name was not captilized correctly!")
    }
    
}
