import XCTest
@testable import SampleInvestments

final class SampleInvestmentsInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(SampleInvestmentsInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}