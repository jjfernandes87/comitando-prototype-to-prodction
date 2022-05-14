//
//  BaseProductsInteractorTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class BaseProductsInteractorTests: XCTestCase {

    let useCase = BaseProductsUseCaseSpy()
    let repository = BaseProductsRepositorySpy()
    let presenter = BaseProductsInteractorOutputSpy()
    var sut: BaseProductsInteractor?
    
    override func setUp() {
        super.setUp()
        sut = BaseProductsInteractor(presenter: presenter, repository: repository, useCase: useCase)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_fetchData() {
        sut?.fetchData()
        XCTAssertTrue(presenter.fetchedDataCalled)
        XCTAssertTrue(repository.fetchDataCalled)
        XCTAssertTrue(useCase.responseDataCalled)
    }

}
