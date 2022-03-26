import XCTest
@testable import XIB

final class XIBInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(XIBInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}