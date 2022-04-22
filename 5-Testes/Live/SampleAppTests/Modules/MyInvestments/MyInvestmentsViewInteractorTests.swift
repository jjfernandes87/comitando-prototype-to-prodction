//
//  MyInvestmentsViewInteractorTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class MyInvestmentsViewInteractorTests: XCTestCase {

    let presenter = MyInvestmentsViewInteractorOutputSpy()
    var sut: MyInvestmentsViewInteractor?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsViewInteractor(presenter: presenter)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_fetchData() {
        sut?.fetchData()
        XCTAssertTrue(presenter.fetchedDataCalled)
    }

}
