//
//  TitleViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

class TitleViewCellTests: XCTestCase {

    var sut: TitleViewCell?
    
    override func setUp() {
        super.setUp()
        sut = TitleViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = TitleViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
