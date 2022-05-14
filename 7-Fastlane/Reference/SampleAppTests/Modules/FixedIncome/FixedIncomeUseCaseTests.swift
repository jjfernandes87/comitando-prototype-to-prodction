//
//  FixedIncomeUseCaseTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 20/04/22.
//

import XCTest
import DesignSystem
@testable import SampleInvestments

class FixedIncomeUseCaseTests: XCTestCase {
   
    var sut: FixedIncomeUseCase?
    
    override func setUp() {
        super.setUp()
        sut = FixedIncomeUseCase()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_responseData() throws {
        sut?.responseData { content in
            XCTAssertEqual(content.count, 5)
            XCTAssertTrue(content[0] is AboutViewCell)
            XCTAssertTrue(content[1] is TitleViewCell)
            XCTAssertTrue(content[2] is AssetCardViewCell)
        }
    }

}
