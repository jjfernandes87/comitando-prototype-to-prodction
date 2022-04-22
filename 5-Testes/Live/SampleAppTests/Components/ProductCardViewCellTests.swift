//
//  ProductCardViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

class ProductCardViewCellTests: XCTestCase {

    var sut: ProductCardViewCell?
    
    override func setUp() {
        super.setUp()
        sut = ProductCardViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = ProductCardViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
