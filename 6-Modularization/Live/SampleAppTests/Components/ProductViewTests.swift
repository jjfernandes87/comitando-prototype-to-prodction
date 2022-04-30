//
//  ProductViewTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = ProductView(coder: coder)
        XCTAssertNotNil(sut)
    }

}
