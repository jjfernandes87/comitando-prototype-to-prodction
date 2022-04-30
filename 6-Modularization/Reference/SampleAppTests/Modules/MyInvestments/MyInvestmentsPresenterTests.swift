//
//  MyInvestmentsPresenterTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class MyInvestmentsPresenterTests: XCTestCase {
    
    let view = MyInvestmentsPresenterOutputSpy()
    var sut: MyInvestmentsPresenter?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsPresenter()
        sut?.output = view
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_fetchedData() throws {
        sut?.fetchedData()
        XCTAssertTrue(view.showDataCalled)
        XCTAssertNotNil(view.contentData)
        XCTAssertEqual(view.contentData?.count, 6)
    }
    
}
