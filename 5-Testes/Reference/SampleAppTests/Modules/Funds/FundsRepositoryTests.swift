//
//  FundsRepositoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
@testable import SampleInvestments

final class FundsRepositoryTests: XCTestCase {

    var sut: FundsRepository?
    
    override func setUp() {
        super.setUp()
        sut = FundsRepository()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_fetchData() throws {
        let fake = try BaseProductsInteractorFake(repository: XCTUnwrap(sut))
        fake.fetchData()
        XCTAssertTrue(fake.fetchDataCalled)
    }
    
}
