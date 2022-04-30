//
//  MyPatrimonyViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class MyPatrimonyViewCellTests: XCTestCase {

    let size: CGSize = CGSize(width: 375, height: 150)
    let isRecord = false
    var sut: MyPatrimonyViewCell?
    
    override func setUp() {
        super.setUp()
        sut = MyPatrimonyViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = MyPatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(model: PatrimonyModel())
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }
}
