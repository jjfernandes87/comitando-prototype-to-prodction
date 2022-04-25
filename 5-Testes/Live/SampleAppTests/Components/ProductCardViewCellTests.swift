//
//  ProductCardViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class ProductCardViewCellTests: XCTestCase {

    let size: CGSize = CGSize(width: 375, height: 154)
    let isRecord = false
    var sut: ProductCardViewCell?
    
    override func setUp() {
        super.setUp()
        sut = ProductCardViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = ProductCardViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(model: ProductModel(title: "Fundos de Investimentos", amount: "R$ 65.000,00"))
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }

}
