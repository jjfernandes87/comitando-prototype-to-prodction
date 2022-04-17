import XCTest
@testable import VIP

final class VIPInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(VIPInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}