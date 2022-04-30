//
//  CollectionProductModel.swift
//  SampleApp
//
//  Created by Julio Fernandes on 09/04/22.
//

import Foundation

public struct CollectionProductModel {
    public let left: CollectionProductData
    public let right: CollectionProductData
}

public struct CollectionProductData {
    public let target: Any?
    public let selector: Selector
    public let iconName: String = "circle.grid.2x2"
    public let title: String
    public let detail: String
}
