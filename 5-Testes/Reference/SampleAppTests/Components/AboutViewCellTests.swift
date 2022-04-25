//
//  AboutViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleInvestments

class AboutViewCellTests: XCTestCase {

    var sut: AboutViewCell?
    
    override func setUp() {
        super.setUp()
        sut = AboutViewCell()
        sut?.contentView.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        XCTAssertTrue(sut?.contentView.subviews.first is UILabel)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AboutViewCell(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut?.contentView.subviews.first is UILabel)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        sut.setup(title: "Proporcione estabilidade e segurança aos seus investimentos. Quando você compra um título de Renda Fixa, você está emprestado dinheiro ao emissor do papel.")
        assertSnapshot(matching: sut, as: .image(size: CGSize(width: 375, height: 200)))
    }

}
