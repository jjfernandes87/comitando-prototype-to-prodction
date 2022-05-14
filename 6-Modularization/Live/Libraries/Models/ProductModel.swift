//
//  ProductModel.swift
//  SampleApp
//
//  Created by Julio Fernandes on 09/04/22.
//

import Foundation

public struct ProductModel {
    public let iconeName: String = "circle.grid.2x2"
    public let title: String
    public let amount: String
    
    public init(title: String,
                amount: String) {
        self.title = title
        self.amount = amount
    }
}
