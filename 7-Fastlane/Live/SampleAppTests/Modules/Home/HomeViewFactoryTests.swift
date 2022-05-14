//
//  HomeViewFactoryTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class HomeViewFactoryTests: XCTestCase {

    var sut: HomeViewFactory?
    
    override func setUp() {
        super.setUp()
        sut = HomeViewFactory()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_createModule() throws {
        XCTAssertTrue(sut?.createModule() is HomeViewController)
    }

}
