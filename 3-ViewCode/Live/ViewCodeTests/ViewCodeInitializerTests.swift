import XCTest
@testable import ViewCode

final class ViewCodeInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(ViewCodeInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}