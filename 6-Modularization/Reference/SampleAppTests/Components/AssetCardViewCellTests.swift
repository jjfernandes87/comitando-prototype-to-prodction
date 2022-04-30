//
//  AssetCardViewCellTests.swift
//  SampleInvestmentsTests
//
//  Created by Julio Fernandes on 21/04/22.
//

import XCTest
import Models
import DesignSystem
import SnapshotTesting
@testable import SampleInvestments

class AssetCardViewCellTests: XCTestCase {

    private lazy var model = AssetModel(title: "title",
                                        leftDetailOne: "leftDetailOne",
                                        leftDetailTwo: "leftDetailTwo",
                                        rightDetailOne: "rightDetailOne",
                                        rightDetailTwo: "rightDetailTwo")
    
    var sut: AssetCardViewCell?
    
    override func setUp() {
        super.setUp()
        sut = AssetCardViewCell()
        sut?.contentView.backgroundColor = UIColor(named: "comitando-blue")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_buildViewHierarchy() {
        let container = sut?.contentView.subviews.first
        XCTAssertEqual(container?.subviews.count, 3)
    }
    
    func test_setup() throws {
        sut?.setup(model: model)
        
        let view = try XCTUnwrap(sut)
        let mirroredView = Mirror(reflecting: view)
        let titleLabel = try XCTUnwrap(mirroredView.firstChild(of: UILabel.self))
        XCTAssertNotNil(titleLabel)
        XCTAssertEqual(titleLabel.text, "title")
    }
    
    func test_prepareForReuse() throws {
        let sut = AssetCardViewCell()
        
        let view = try XCTUnwrap(sut)
        let mirroredView = Mirror(reflecting: view)
        let titleLabel = try XCTUnwrap(mirroredView.firstChild(of: UILabel.self))
        titleLabel.text = "Tests"
        XCTAssertNotNil(titleLabel)
        XCTAssertEqual(titleLabel.text, "Tests")
        
        sut.prepareForReuse()
        XCTAssertEqual(titleLabel.text, "")
    }
    
    func test_buildViewHierarchy_by_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AssetCardViewCell(coder: coder)
        XCTAssertNotNil(sut)
        let container = sut?.contentView.subviews.first
        XCTAssertEqual(container?.subviews.count, 3)
    }
    
    func test_assertSnapshot() throws {
        let sut = try XCTUnwrap(sut)
        let model = AssetModel(title: "DEV ATIVO - OUT/2022",
                               leftDetailOne: "Taxa(a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "IPCA-A+7,74%",
                               rightDetailTwo: "R$ 1.000,00")
        sut.setup(model: model)
        assertSnapshot(matching: sut, as: .image(size: CGSize(width: 375, height: 154)))
    }

}
