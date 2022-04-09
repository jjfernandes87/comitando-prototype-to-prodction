import XCTest
@testable import MVC

final class MVCInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(MVCInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}