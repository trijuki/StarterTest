//
//  ViewController2Test.swift
//  ViewController2Test
//
//  Created by Tri Rejeki on 27/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import XCTest
@testable import StarterTest

class ViewController2Test: XCTestCase {
    
    var vc2:ViewController2!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc2 = storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        _ = vc2.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        vc2 = nil
    }
    
    func testButton1() {
        vc2.btn1.sendActions(for: .touchUpInside)
        XCTAssertTrue(vc2.btn1.isSelected)
    }
    
    func testButton2() {
        vc2.btn2.sendActions(for: .touchUpInside)
        XCTAssertTrue(vc2.btn2.isSelected)
    }
    
    func testSegmented1() {
        vc2.segmentedBtn.selectedSegmentIndex = 0
        XCTAssertEqual(vc2.segmentLabel.text, "Segment Satu Aktif")
    }
    
    func testSegmented2() {
        vc2.segmentedBtn.selectedSegmentIndex = 1
        vc2.segmentedBtn.sendActions(for: .valueChanged)
        XCTAssertEqual(vc2.segmentLabel.text, "Segment Dua Aktif")
    }
    
    func testSegmented3() {
        vc2.segmentedBtn.selectedSegmentIndex = 2
        vc2.segmentedBtn.sendActions(for: .valueChanged)
        XCTAssertEqual(vc2.segmentLabel.text, "Segment Tiga Aktif")
    }
    
    func testSwitchOn() {
        vc2.switchBtn.isOn = true
        vc2.switchBtn.sendActions(for: .valueChanged)
        XCTAssertFalse(!vc2.switchBtn.isOn)
    }
    
    func testSwitchOff() {
        vc2.switchBtn.isOn = false
        vc2.switchBtn.sendActions(for: .valueChanged)
        XCTAssertFalse(vc2.switchBtn.isOn)
    }
    
    func testActivateLoader() {
        vc2.activateBtn.isSelected = false
        vc2.activateBtn.sendActions(for: .touchUpInside)
        XCTAssertTrue(vc2.loader.isAnimating)
        
        vc2.activateBtn.isSelected = true
        vc2.activateBtn.sendActions(for: .touchUpInside)
        XCTAssertFalse(vc2.loader.isAnimating)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
