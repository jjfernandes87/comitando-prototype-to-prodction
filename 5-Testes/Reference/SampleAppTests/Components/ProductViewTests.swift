//
//  ProductViewTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
@testable import SampleInvestments

class ProductViewTests: XCTestCase {

    var sut: ProductView?
    
    override func setUp() {
        super.setUp()
        sut = ProductView()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        XCTAssertEqual(sut?.subviews.count, 2)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = ProductView(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut?.subviews.count, 2)
    }

}
