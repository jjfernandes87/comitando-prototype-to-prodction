//
//  BaseProductsInteractorTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
@testable import SampleInvestments

final class BaseProductsInteractorTests: XCTestCase {

    let repository = BaseProductsRepositoryInputSpy()
    let useCase = BaseProductsUseCaseMock()
    let presenterSpy = BaseProductsInteractorOutputSpy()
    var sut: BaseProductsInteractor?
    
    override func setUp() {
        super.setUp()
        sut = BaseProductsInteractor(useCase: useCase, presenter: presenterSpy, repository: repository)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_fetchData() throws {
        sut?.fetchData()
        XCTAssertTrue(presenterSpy.fetchedDataCalled)
        XCTAssertTrue(repository.fetchDataCalled)
        XCTAssertTrue(useCase.responseDataCalled)
    }

}
