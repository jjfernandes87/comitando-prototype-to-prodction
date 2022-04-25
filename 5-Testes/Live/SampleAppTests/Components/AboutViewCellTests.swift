//
//  AboutViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class AboutViewCellTests: XCTestCase {

    let size: CGSize = CGSize(width: 375, height: 170)
    let isRecord = false
    var sut: AboutViewCell?
    
    override func setUp() {
        super.setUp()
        sut = AboutViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AboutViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(title: "Proporcione estabilidade e segurança aos seus investimentos. Quando você compra um título de Renda Fixa, você está emprestado dinheiro ao emissor do papel.")
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }

}
