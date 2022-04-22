//
//  FixedIncomeViewUseCaseTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class FixedIncomeViewUseCaseTests: XCTestCase {

    var sut: FixedIncomeViewUseCase?
    
    override func setUp() {
        super.setUp()
        sut = FixedIncomeViewUseCase()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_responseData() {
        sut?.responseData { content in
            XCTAssertEqual(content.count, 6)
            XCTAssertTrue(content[0] is AboutViewCell)
            XCTAssertTrue(content[1] is TitleViewCell)
            XCTAssertTrue(content[2] is AssetCardViewCell)
        }
    }

}
