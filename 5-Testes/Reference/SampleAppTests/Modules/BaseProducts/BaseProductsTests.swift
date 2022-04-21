//
//  BaseProductsTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
@testable import SampleInvestments

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
    
    func test_viewDidLoad() throws {
        sut?.viewDidLoad()
        XCTAssertTrue(interactor.fetchDataCalled)
        XCTAssertEqual(sut?.tableView.numberOfRows(inSection: 0), 0)
        XCTAssertEqual(sut?.title, "Tests")
    }
    
    func test_showData() {
        sut?.showData(content: [UITableViewCell(), UITableViewCell()])
        XCTAssertEqual(sut?.tableView.numberOfRows(inSection: 0), 2)
    }
    
    func test_cellForRowAt() throws {
        let sut = try XCTUnwrap(sut)
        sut.showData(content: [CellOne(), CellTwo()])
        XCTAssertTrue(sut.tableView(sut.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) is CellTwo)
    }

}
