//
//  AssetCardViewCellTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
@testable import SampleTests

class AssetCardViewCellTests: XCTestCase {

    var sut: AssetCardViewCell?
    
    override func setUp() {
        super.setUp()
        sut = AssetCardViewCell()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initCoder() throws {
        let coder = try convertToCoder(object: XCTUnwrap(sut))
        let sut = AssetCardViewCell(coder: coder)
        XCTAssertNotNil(sut)
    }
    
    func test_prepareForReuse() throws {
        let mirror = try Mirror(reflecting: XCTUnwrap(sut))
        let titleLabel = try XCTUnwrap(mirror.firstChild(of: UILabel.self))
        titleLabel.text = "Test"
        XCTAssertEqual(titleLabel.text, "Test")
        
        sut?.prepareForReuse()
        XCTAssertEqual(titleLabel.text, "")
    }

}


extension Mirror {
    public func firstChild<T>(of _: T.Type, in label: String? = nil) -> T? {
        children.lazy.compactMap {
            guard let value = $0.value as? T else { return nil }
            guard let label = label else { return value }
            return $0.label == label ? value : nil
        }.first
    }
    
    public func firstLazyChild<T>(of _: T.Type, in label: String? = nil) -> T? {
        children.lazy.compactMap {
            guard let value = $0.value as? T else { return nil }
            guard let label = label else { return value }
            return $0.label == "$__lazy_storage_$_\(label)" ? value : nil
        }.first
    }
}
