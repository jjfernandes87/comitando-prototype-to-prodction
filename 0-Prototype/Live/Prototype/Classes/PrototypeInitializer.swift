//
//  PrototypeInitializer.swift
//  Prototype
//

import Foundation

public final class PrototypeInitializer {
    
    @discardableResult public class func helloWorld() -> String {
        let message = Localization.Feature.Example.helloWorld
        print(message)
        return message
    }
    
}