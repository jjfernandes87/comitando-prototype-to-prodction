//
//  MyInvestmentsViewPresenterTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class MyInvestmentsViewPresenterTests: XCTestCase {

    let view = MyInvestmentsViewPresenterOutputSpy()
    var sut: MyInvestmentsViewPresenter?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsViewPresenter()
        sut?.output = view
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_fetchedData() {
        sut?.fetchedData()
        XCTAssertTrue(view.showContentCalled)
        XCTAssertEqual(view.showContentToBeReturned.count, 6)
    }
}
