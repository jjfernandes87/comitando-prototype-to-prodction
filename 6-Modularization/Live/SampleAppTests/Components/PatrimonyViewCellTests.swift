//
//  PatrimonyViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class PatrimonyViewCellTests: XCTestCase {

    let size: CGSize = CGSize(width: 375, height: 124)
    let isRecord = false
    var sut: PatrimonyViewCell?
    
    override func setUp() {
        super.setUp()
        sut = PatrimonyViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = PatrimonyViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(model: PatrimonyModel())
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }

}
