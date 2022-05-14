//
//  TreasuryRepositoryTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class TreasuryRepositoryTests: XCTestCase {

    var sut: TreasuryRepository?
    
    override func setUp() {
        super.setUp()
        sut = TreasuryRepository()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test() throws {
        let sut = try XCTUnwrap(sut)
        let fake = RepositoryFake(repository: sut)
        fake.fetchData()
        XCTAssertTrue(fake.fetchDataCalled)
    }
}
