//
//  StarterTestTests.swift
//  StarterTestTests
//
//  Created by Tri Rejeki on 19/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import XCTest
@testable import StarterTest

class StarterTestTests: XCTestCase {
    
    var objBilangan:Bilangan!
    
    override func setUp() {
        super.setUp()
        
        objBilangan = Bilangan()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        objBilangan = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testNumberPrime() {
        XCTAssertTrue(objBilangan.isPrime(7))
        XCTAssertFalse(objBilangan.isPrime(6))
    }
    
    func testNumberOdd() {
        XCTAssertFalse(objBilangan.isOdd(8))
        XCTAssertTrue(objBilangan.isOdd(9))
    }
    
    func testNumberEven() {
        XCTAssertFalse(objBilangan.isEven(7))
        XCTAssertTrue(objBilangan.isEven(4))
    }
    
    func testMultiplyBilangan() {
        objBilangan.multiplyBilangan(bilangan1: 4, bilangan2: 2)
        XCTAssertEqual(objBilangan.resultBilangan, 8, "Hasil Kali Sesuai")
    }
    
    func testMultiplyBilanganSalah() {
        objBilangan.multiplyBilangan(bilangan1: 3, bilangan2: 2)
        XCTAssertEqual(objBilangan.resultBilangan, 6, "Hasil Kali Salah")
    }
    
    func testAddBilangan() {
        objBilangan.addBilangan(bilangan1: 8, bilangan2: 8)
        XCTAssertEqual(objBilangan.resultBilangan, 16, "Hasil Sesuai")
    }
}
