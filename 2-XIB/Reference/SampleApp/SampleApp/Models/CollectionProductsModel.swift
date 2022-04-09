//
//  CollectionProductsModel.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

struct CollectionProductsModel {
    let leftData: ProductsModel
    let rightData: ProductsModel
}

struct ProductsModel {
    let iconName: String = "circle.grid.2x2"
    let title: String
    let detail: String
    let target: Any?
    let selector: Selector?
    
    init(title: String, detail: String, target: Any? = nil, selector: Selector? = nil) {
        self.title = title
        self.detail = detail
        self.target = target
        self.selector = selector
    }
}
