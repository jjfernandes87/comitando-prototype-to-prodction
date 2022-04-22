//
//  HomeViewPresenterTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
        XCTAssertTrue(view.showContentCalled)
        XCTAssertEqual(view.showContentToBeReturned.count, 5)
    }
    
    func test_didTapFixedIncone() {
        sut?.didTapFixedIncone()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertTrue(view.pushViewControllerToBeReturned is BaseProducts)
    }
    
    func test_didTapFunds() {
        sut?.didTapFunds()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertTrue(view.pushViewControllerToBeReturned is BaseProducts)
    }
    
    func test_didTapStocks() {
        sut?.didTapStocks()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertTrue(view.pushViewControllerToBeReturned is BaseProducts)
    }
    
    func test_didTapTreasury() {
        sut?.didTapTreasury()
        XCTAssertTrue(view.pushViewControllerCalled)
        XCTAssertTrue(view.pushViewControllerToBeReturned is BaseProducts)
    }
}
