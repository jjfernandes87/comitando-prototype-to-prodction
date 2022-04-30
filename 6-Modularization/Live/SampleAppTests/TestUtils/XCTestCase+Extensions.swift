//
//  XCTestCase+Extensions.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest

extension XCTestCase {
    func executeRunLoop(extratime: TimeInterval) {
        RunLoop.current.run(until: Date() + extratime)
    }
    
    func convertToCoder(object: Any) throws -> NSKeyedUnarchiver {
        let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
        let coder = try NSKeyedUnarchiver(forReadingFrom: data)
        return coder
    }
}
