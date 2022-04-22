//
//  PatrimonyViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = PatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
