//
//  StocksFactoryTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class StocksFactoryTests: XCTestCase {

    var sut: StocksFactory?
    
    override func setUp() {
        super.setUp()
        sut = StocksFactory()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_createModule() throws {
        XCTAssertTrue(sut?.createModule() is BaseProducts)
    }

}
