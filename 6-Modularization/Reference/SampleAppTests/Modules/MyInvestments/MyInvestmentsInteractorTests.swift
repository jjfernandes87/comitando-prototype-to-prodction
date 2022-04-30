//
//  MyInvestmentsInteractorTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class MyInvestmentsInteractorTests: XCTestCase {

    let presenterSpy = MyInvestmentsInteractorOutputSpy()
    var sut: MyInvestmentsInteractor?
    
    override func setUp() {
        super.setUp()
        sut = MyInvestmentsInteractor(presenter: presenterSpy)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_fetchData() throws {
        sut?.fetchData()
        XCTAssertTrue(presenterSpy.fetchedDataCalled)
    }

}
