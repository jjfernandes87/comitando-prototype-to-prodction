//
//  TitleViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class TitleViewCellTests: XCTestCase {
    
    let size: CGSize = CGSize(width: 375, height: 55)
    let isRecord = false
    var sut: TitleViewCell?
    
    override func setUp() {
        super.setUp()
        sut = TitleViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = TitleViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(title: "Meus Investimentos")
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }

}
