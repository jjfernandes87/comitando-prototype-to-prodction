//
//  TreasuryFactoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
@testable import SampleInvestments

final class TreasuryFactoryTests: XCTestCase {

    var sut: TreasuryFactory?
    
    override func setUp() {
        super.setUp()
        sut = TreasuryFactory()
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
