//
//  StocksFactoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import BaseProducts
@testable import SampleInvestments

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
    
    func test_createModule() {
        let result = sut?.createModule()
        XCTAssertTrue(result is BaseProducts)
    }

}
