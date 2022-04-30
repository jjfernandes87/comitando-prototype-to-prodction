//
//  FundsFactoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import BaseProducts
@testable import SampleInvestments

final class FundsFactoryTests: XCTestCase {

    var sut: FundsFactory?
    
    override func setUp() {
        super.setUp()
        sut = FundsFactory()
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
