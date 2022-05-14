//
//  HomeViewPresenterTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class HomeViewPresenterTests: XCTestCase {
    
    let view = HomeViewPresenterOutputSpy()
    var sut: HomeViewPresenter?
    
    override func setUp() {
        super.setUp()
        sut = HomeViewPresenter()
        sut?.output = view
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_fetchedData() {
        sut?.fetchedData()
        XCTAssertTrue(view.showDataCalled)
        XCTAssertNotNil(view.contentData)
        XCTAssertEqual(view.contentData?.count, 5)
    }
    
    func test_didTapFixedIncone() {
        sut?.didTapFixedIncone()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertNotNil(view.pushViewControllerAnimatedCalled)
        XCTAssertEqual(view.pushViewControllerAnimatedCalled, true)
    }
    
    func test_didTapStocks() {
        sut?.didTapStocks()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertNotNil(view.pushViewControllerAnimatedCalled)
        XCTAssertEqual(view.pushViewControllerAnimatedCalled, true)
    }
    
    func test_didTapFunds() {
        sut?.didTapFunds()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertNotNil(view.pushViewControllerAnimatedCalled)
        XCTAssertEqual(view.pushViewControllerAnimatedCalled, true)
    }
    
    func test_didTapTreasury() {
        sut?.didTapTreasury()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertNotNil(view.pushViewControllerAnimatedCalled)
        XCTAssertEqual(view.pushViewControllerAnimatedCalled, true)
    }
}

