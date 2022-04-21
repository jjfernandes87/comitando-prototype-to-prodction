//
//  CollectionProductsViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
@testable import SampleInvestments

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
    
    func test_buildViewHierarchy() {
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = CollectionProductsViewCell(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
    }

}
