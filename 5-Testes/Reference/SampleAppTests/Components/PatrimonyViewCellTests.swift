//
//  PatrimonyViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
@testable import SampleInvestments

class PatrimonyViewCellTests: XCTestCase {

    var sut: PatrimonyViewCell?
    
    override func setUp() {
        super.setUp()
        sut = PatrimonyViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
        
        let stack = sut?.contentView.subviews.first as? UIStackView
        XCTAssertEqual(stack?.arrangedSubviews.count, 2)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = PatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
        
        let stack = sut?.contentView.subviews.first as? UIStackView
        XCTAssertEqual(stack?.arrangedSubviews.count, 2)
    }

}
