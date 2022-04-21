//
//  HomeViewControllerTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 18/04/22.
//

import XCTest
@testable import SampleInvestments

final class HomeViewControllerTests: XCTestCase {

    let interactor = HomeViewInteractorInputSpy()
    var sut: HomeViewController?
    
    override func setUp() {
        super.setUp()
        sut = HomeViewController(interactor: interactor)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() {
        let sut = HomeViewController(coder: NSCoder())
        XCTAssertNil(sut)
    }
    
    func test_viewDidLoad() {
        sut?.viewDidLoad()
        XCTAssertTrue(interactor.fetchDataCalled)
        XCTAssertEqual(sut?.tableView.numberOfRows(inSection: 0), 0)
    }
    
    func test_showData() {
        sut?.showData(content: [UITableViewCell()])
        XCTAssertEqual(sut?.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_pushViewController() throws {
        let sut = try XCTUnwrap(sut)
        let navigation = UINavigationController(rootViewController: sut)
        sut.pushViewController(UIViewControllerMock(), animated: false)
        XCTAssertEqual(navigation.viewControllers.count, 2)
        XCTAssertTrue(navigation.topViewController is UIViewControllerMock)
    }
    
    func test_didSelectRowAt() throws {
        let sut = try XCTUnwrap(sut)
        let navigation = UINavigationController(rootViewController: sut)
        
        sut.tableView(sut.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        executeRunLoop(extratime: 0.5)
        XCTAssertEqual(navigation.viewControllers.count, 1)
        XCTAssertTrue(navigation.topViewController is HomeViewController)
        
        sut.tableView(sut.tableView, didSelectRowAt: IndexPath(row: 1, section: 0))
        executeRunLoop(extratime: 0.5)
        XCTAssertEqual(navigation.viewControllers.count, 2)
        XCTAssertTrue(navigation.topViewController is MyInvestmentsViewController)
    }

}
