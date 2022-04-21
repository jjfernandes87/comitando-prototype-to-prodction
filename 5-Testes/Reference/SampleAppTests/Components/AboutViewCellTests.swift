//
//  AboutViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
@testable import SampleInvestments

class AboutViewCellTests: XCTestCase {

    var sut: AboutViewCell?
    
    override func setUp() {
        super.setUp()
        sut = AboutViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        XCTAssertTrue(sut?.contentView.subviews.first is UILabel)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AboutViewCell(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut?.contentView.subviews.first is UILabel)
    }

}
