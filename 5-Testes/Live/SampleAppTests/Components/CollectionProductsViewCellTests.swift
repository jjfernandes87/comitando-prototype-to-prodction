//
//  CollectionProductsViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import SnapshotTesting
@testable import SampleTests

class CollectionProductsViewCellTests: XCTestCase {

    let size: CGSize = CGSize(width: 375, height: 170)
    let isRecord = false
    var sut: CollectionProductsViewCell?
    
    override func setUp() {
        super.setUp()
        sut = CollectionProductsViewCell()
        sut?.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = CollectionProductsViewCell(coder: coder)
        XCTAssertNotNil(sut)
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
        assertSnapshot(matching: sut, as: .image(size: size), record: isRecord)
    }
    
    @objc
    private func didTap() {}
}
