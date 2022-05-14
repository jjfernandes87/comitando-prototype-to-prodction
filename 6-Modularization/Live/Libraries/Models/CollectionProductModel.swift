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
    
    public init(left: CollectionProductData,
                right: CollectionProductData) {
        self.left = left
        self.right = right
    }
}

public struct CollectionProductData {
    public let target: Any?
    public let selector: Selector
    public let iconName: String = "circle.grid.2x2"
    public let title: String
    public let detail: String
    
    public init(target: Any?,
                selector: Selector,
                title: String,
                detail: String) {
        self.target = target
        self.selector = selector
        self.title = title
        self.detail = detail
    }
}
