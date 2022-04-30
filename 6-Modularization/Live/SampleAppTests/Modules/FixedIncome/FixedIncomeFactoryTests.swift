//
//  FixedIncomeFactoryTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class FixedIncomeFactoryTests: XCTestCase {

    var sut: FixedIncomeFactory?
    
    override func setUp() {
        super.setUp()
        sut = FixedIncomeFactory()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_createModule() throws {
        XCTAssertTrue(sut?.createModule() is BaseProducts)
    }

}
