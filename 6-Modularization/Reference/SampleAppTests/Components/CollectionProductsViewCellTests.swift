//
//  CollectionProductsViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
import Models
import DesignSystem
import SnapshotTesting
@testable import SampleInvestments

class CollectionProductsViewCellTests: XCTestCase {
    
    let isRecord = false
    var sut: CollectionProductsViewCell?
    
    override func setUp() {
        super.setUp()
        sut = CollectionProductsViewCell()
        sut?.contentView.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = CollectionProductsViewCell(coder: coder)
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut?.contentView.subviews.first is UIStackView)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        
        let left = CollectionProductData(target: self,
                                         selector: #selector(didTap),
                                         title: "Renda Fixa",
                                         detail: "Invista em CDB, CRI, CRA, Debêntures, LC, LCA, LCI")
        
        let right = CollectionProductData(target: self,
                                         selector: #selector(didTap),
                                         title: "Renda Variável",
                                         detail: "Invista em ações, ETFs, Fundos Imobiliários")
        
        let model = CollectionProductModel(left: left, right: right)
        
        sut.setup(model: model)
        assertSnapshot(matching: sut, as: .image(size: CGSize(width: 375, height: 170)), record: isRecord)
    }
    
    @objc
    private func didTap() {}

}
