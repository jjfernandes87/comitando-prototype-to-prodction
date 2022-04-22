//
//  HomeViewControllerTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

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
    }
    
    func test_showContent() {
        sut?.showContent(content: [UITableViewCell()])
        XCTAssertEqual(sut?.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_pushViewController() throws {
        let sut = try XCTUnwrap(sut)
        let navigation = UINavigationController(rootViewController: sut)
        sut.pushViewController(UIViewController(), animated: false)
        XCTAssertEqual(navigation.viewControllers.count, 2)
    }
    
    func test_didSelectRowAt() throws {
        let sut = try XCTUnwrap(sut)
        let navigation = UINavigationController(rootViewController: sut)
        sut.tableView(sut.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(navigation.viewControllers.count, 1)
        
        sut.tableView(sut.tableView, didSelectRowAt: IndexPath(row: 1, section: 0))
        executeRunLoop(extratime: 0.5)
        XCTAssertEqual(navigation.viewControllers.count, 2)
    }

}
