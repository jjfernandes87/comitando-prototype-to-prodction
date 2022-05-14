//
//  MyInvestmentsFactoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class MyInvestmentsFactoryTests: XCTestCase {

    var sut: MyInvestmentsFactory?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsFactory()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_createModule() throws {
        let result = sut?.createModule()
        XCTAssertTrue(result is MyInvestmentsViewController)
    }

}
