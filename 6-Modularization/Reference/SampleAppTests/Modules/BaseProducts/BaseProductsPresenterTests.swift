//
//  BaseProductsPresenterTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import BaseProducts
@testable import SampleInvestments

final class BaseProductsPresenterTests: XCTestCase {
    
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

    func test_fetchedData() throws {
        sut?.fetchedData([UITableViewCell()])
        XCTAssertTrue(view.showDataCalled)
        XCTAssertNotNil(view.contentData)
        XCTAssertEqual(view.contentData?.count, 1)
    }
    
}
