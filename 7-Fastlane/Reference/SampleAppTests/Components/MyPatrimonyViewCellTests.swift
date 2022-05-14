//
//  MyPatrimonyViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
import DesignSystem
@testable import SampleInvestments

class MyPatrimonyViewCellTests: XCTestCase {

    var sut: MyPatrimonyViewCell?
    
    override func setUp() {
        super.setUp()
        sut = MyPatrimonyViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        let container = sut?.contentView.subviews.first
        XCTAssertTrue(container?.subviews.first is UIStackView)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = MyPatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
        let container = sut?.contentView.subviews.first
        XCTAssertTrue(container?.subviews.first is UIStackView)
    }

}
