//
//  PrototypeInitializerTests.swift
//  PrototypeTests
//

import XCTest
@testable import Prototype

final class PrototypeInitializerTests: XCTestCase {
    
    func testHellorWorld() {
        XCTAssertEqual(PrototypeInitializer.helloWorld(), "Hello World from SDK!!")
    }
    
}