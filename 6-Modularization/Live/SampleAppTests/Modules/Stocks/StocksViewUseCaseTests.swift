//
//  StocksViewUseCaseTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

final class StocksViewUseCaseTests: XCTestCase {

    var sut: StocksViewUseCase?
    
    override func setUp() {
        super.setUp()
        sut = StocksViewUseCase()
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
