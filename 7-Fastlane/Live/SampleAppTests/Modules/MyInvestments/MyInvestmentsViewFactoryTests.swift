//
//  MyInvestmentsViewFactoryTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class MyInvestmentsViewFactoryTests: XCTestCase {

    var sut: MyInvestmentsViewFactory?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsViewFactory()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_createModule() throws {
        XCTAssertTrue(sut?.createModule() is MyInvestmentsViewController)
    }

}
