//
//  SampleInvestmentsInitializer.swift
//  SampleInvestments
//

import Foundation

public final class SampleInvestmentsInitializer {
    
    @discardableResult public class func helloWorld() -> String {
        let message = Localization.Feature.Example.helloWorld
        print(message)
        return message
    }
    
}