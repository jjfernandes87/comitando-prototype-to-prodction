//
//  FixedIncomeFactoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import BaseProducts
@testable import SampleInvestments

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
        let result = sut?.createModule()
        XCTAssertTrue(result is BaseProducts)
    }

}
