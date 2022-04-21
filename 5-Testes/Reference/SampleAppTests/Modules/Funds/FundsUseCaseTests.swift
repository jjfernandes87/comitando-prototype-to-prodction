//
//  FundsUseCaseTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
@testable import SampleInvestments

class FundsUseCaseTests: XCTestCase {

    var sut: FundsUseCase?
    
    override func setUp() {
        super.setUp()
        sut = FundsUseCase()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_responseData() {
        sut?.responseData { content in
            XCTAssertEqual(content.count, 5)
            XCTAssertTrue(content[0] is AboutViewCell)
            XCTAssertTrue(content[1] is TitleViewCell)
            XCTAssertTrue(content[2] is AssetCardViewCell)
        }
    }

}
