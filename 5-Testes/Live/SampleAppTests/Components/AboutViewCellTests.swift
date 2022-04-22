//
//  AboutViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AboutViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
