//
//  CollectionProductModel.swift
//  SampleApp
//
//  Created by Julio Fernandes on 09/04/22.
//

import Foundation

struct CollectionProductModel {
    let left: CollectionProductData
    let right: CollectionProductData
}

struct CollectionProductData {
    let target: Any?
    let selector: Selector
    let iconName: String = "circle.grid.2x2"
    let title: String
    let detail: String
}
