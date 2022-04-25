//
//  ProductCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit

class ProductCardViewCell: UITableViewCell {

    static let cellIdentifier = "productCardViewIdentifier"
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconView.image = nil
        titleLabel.text = ""
        amountLabel.text = ""
    }
    
    func setup(model: ProductModel) {
        iconView.image = UIImage(systemName: model.iconeName)
        titleLabel.text = model.title
        amountLabel.text = model.amount
    }
}

struct ProductModel {
    let iconeName: String = "circle.grid.2x2"
    let title: String
    let amount: String
}
