//
//  FixedIncomeRepositoryTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import BaseProducts
@testable import SampleInvestments

final class FixedIncomeRepositoryTests: XCTestCase {

    var sut: FixedIncomeRepository?
    
    override func setUp() {
        super.setUp()
        sut = FixedIncomeRepository()
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

