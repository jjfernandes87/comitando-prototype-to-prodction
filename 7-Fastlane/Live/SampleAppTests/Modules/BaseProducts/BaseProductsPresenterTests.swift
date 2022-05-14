//
//  BaseProductsPresenterTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

class BaseProductsPresenterTests: XCTestCase {

    let view = BaseProductsPresenterOutputSpy()
    var sut: BaseProductsPresenter?
    
    override func setUp() {
        super.setUp()
        sut = BaseProductsPresenter()
        sut?.output = view
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_fetchedData() {
        sut?.fetchedData(content: [UITableViewCell()])
        XCTAssertTrue(view.showContentCalled)
        XCTAssertEqual(view.showContentToBeReturned.count, 1)
    }

}
