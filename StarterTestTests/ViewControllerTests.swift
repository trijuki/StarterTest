//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Tri Rejeki on 19/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import XCTest
@testable import StarterTest

class ViewControllerTests: XCTestCase {
    
    var vc1: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc1 = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        _ = vc1.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        vc1 = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testLikedButton() {
        vc1.likedButton.sendActions(for: .touchUpInside)
        
        XCTAssertTrue(vc1.likedButton.isSelected)
    }
    
}
