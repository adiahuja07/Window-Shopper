//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Appinventiv on 02/10/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        XCTAssert(Wage.calculateWage(forPrice: 250, yourWage: 25) == 10)
        XCTAssert(Wage.calculateWage(forPrice: 255, yourWage: 25) == 11)

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
