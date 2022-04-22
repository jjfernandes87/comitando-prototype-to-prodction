//
//  CollectionProductsViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

class CollectionProductsViewCellTests: XCTestCase {

    var sut: CollectionProductsViewCell?
    
    override func setUp() {
        super.setUp()
        sut = CollectionProductsViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = CollectionProductsViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
