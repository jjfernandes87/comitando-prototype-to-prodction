//
//  BaseProductsTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class BaseProductsTests: XCTestCase {

    let interactor = BaseProductsInteractorInputSpy()
    var sut: BaseProducts?
    
    override func setUp() {
        super.setUp()
        sut = BaseProducts(title: "Tests", interactor: interactor)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() {
        let sut = BaseProducts(coder: NSCoder())
        XCTAssertNil(sut)
    }
    
    func test_viewDidLoad() {
        sut?.viewDidLoad()
        XCTAssertTrue(interactor.fetchDataCalled)
    }
    
    func test_showContent() throws {
        let sut = try XCTUnwrap(sut)
        sut.showContent(content: [UITableViewCell()])
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_cellForRowAt() throws {
        let sut = try XCTUnwrap(sut)
        sut.showContent(content: [OneCell(), TwoCell()])
        XCTAssertTrue(sut.tableView(sut.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) is TwoCell)
    }
}
