//
//  ProductCardViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
import DesignSystem
@testable import SampleInvestments

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
    
    func test_buildViewHierarchy() {
        let container = sut?.contentView.subviews.first
        XCTAssertTrue(container?.subviews.first is UIStackView)
        let stack = container?.subviews.first as? UIStackView
        XCTAssertEqual(stack?.arrangedSubviews.count, 3)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = ProductCardViewCell(coder: coder)
        XCTAssertNotNil(sut)
        
        let container = sut?.contentView.subviews.first
        XCTAssertTrue(container?.subviews.first is UIStackView)
        
        let stack = container?.subviews.first as? UIStackView
        XCTAssertEqual(stack?.arrangedSubviews.count, 3)
    }

}
