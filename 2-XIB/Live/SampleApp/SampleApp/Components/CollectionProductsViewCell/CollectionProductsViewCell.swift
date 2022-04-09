//
//  CollectionProductsViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
//

import UIKit

class CollectionProductsViewCell: UITableViewCell {

    static let cellIdentifier = "collectionProductsViewIdentifier"
    
    @IBOutlet weak var leftButon: UIButton!
    @IBOutlet weak var leftIconView: UIImageView!
    @IBOutlet weak var leftTitleLabel: UILabel!
    @IBOutlet weak var leftDetailLabel: UILabel!
    
    @IBOutlet weak var rightButon: UIButton!
    @IBOutlet weak var rightIconView: UIImageView!
    @IBOutlet weak var rightTitleLabel: UILabel!
    @IBOutlet weak var rightDetailLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        leftButon.removeTarget(nil, action: nil, for: .allEvents)
        leftIconView.image = nil
        leftTitleLabel.text = ""
        leftDetailLabel.text = ""
        
        rightButon.removeTarget(nil, action: nil, for: .allEvents)
        rightIconView.image = nil
        rightTitleLabel.text = ""
        rightDetailLabel.text = ""
    }
    
    func setup(model: CollectionProductModel) {
        leftButon.addTarget(model.left.target, action: model.left.selector, for: .touchUpInside)
        leftIconView.image = UIImage(systemName: model.left.iconName)
        leftTitleLabel.text = model.left.title
        leftDetailLabel.text = model.left.detail
        
        rightButon.addTarget(model.right.target, action: model.right.selector, for: .touchUpInside)
        rightIconView.image = UIImage(systemName: model.right.iconName)
        rightTitleLabel.text = model.right.title
        rightDetailLabel.text = model.right.detail
    }
}

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
