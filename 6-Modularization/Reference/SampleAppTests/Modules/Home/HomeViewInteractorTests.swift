//
//  HomeViewInterfaceTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class HomeViewInteractorTests: XCTestCase {

    let presenterSpy = HomeViewInteractorOutputSpy()
    var sut: HomeViewInteractor?
    
    override func setUp() {
        super.setUp()
        sut = HomeViewInteractor(presenter: presenterSpy)
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
