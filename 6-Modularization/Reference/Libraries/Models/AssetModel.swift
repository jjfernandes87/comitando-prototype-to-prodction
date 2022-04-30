//
//  AssetModel.swift
//  SampleApp
//
//  Created by Julio Fernandes on 09/04/22.
//

import Foundation

public struct AssetModel {
    public let title: String
    public let leftDetailOne: String
    public let leftDetailTwo: String
    public let rightDetailOne: String
    public let rightDetailTwo: String
    
    public init(title: String,
                leftDetailOne: String,
                leftDetailTwo: String,
                rightDetailOne: String,
                rightDetailTwo: String) {
        self.title = title
        self.leftDetailOne = leftDetailOne
        self.leftDetailTwo = leftDetailTwo
        self.rightDetailOne = rightDetailOne
        self.rightDetailTwo = rightDetailTwo
    }
}
