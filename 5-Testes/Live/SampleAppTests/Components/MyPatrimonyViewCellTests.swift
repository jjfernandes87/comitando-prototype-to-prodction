//
//  MyPatrimonyViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = MyPatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }

}
