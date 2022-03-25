//
//  ProductCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

class ProductCardViewCell: UITableViewCell {

    static let cellIdentifier = "productCardViewIdentifier"
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    func setup(model: ProductsModel) {
        iconView.image = UIImage(systemName: model.iconName)
        titleLabel.text = model.title
        amountLabel.text = model.detail
    }
    
}
