//
//  CollectionProductsViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

final class CollectionProductsViewCell: UITableViewCell {
    
    static let cellIdentifier = "collectionProductsViewIdentifier"
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var leftIconView: UIImageView!
    @IBOutlet weak var leftTitleLabel: UILabel!
    @IBOutlet weak var leftDetailLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var rightIconView: UIImageView!
    @IBOutlet weak var rightTitleLabel: UILabel!
    @IBOutlet weak var rightDetailLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        leftButton.removeTarget(nil, action: nil, for: .allEvents)
        leftIconView.image = nil
        leftTitleLabel.text = ""
        leftDetailLabel.text = ""
        
        rightButton.removeTarget(nil, action: nil, for: .allEvents)
        rightIconView.image = nil
        rightTitleLabel.text = ""
        rightDetailLabel.text = ""
        
    }
    
    func setup(model: CollectionProductsModel) {
        if let selector = model.leftData.selector {
            leftButton.addTarget(model.leftData.target, action: selector, for: .touchUpInside)
        }
        
        leftIconView.image = UIImage(systemName: model.leftData.iconName)
        leftTitleLabel.text = model.leftData.title
        leftDetailLabel.text = model.leftData.detail
        
        if let selector = model.rightData.selector {
            rightButton.addTarget(model.rightData.target, action: selector, for: .touchUpInside)
        }
        
        rightIconView.image = UIImage(systemName: model.rightData.iconName)
        rightTitleLabel.text = model.rightData.title
        rightDetailLabel.text = model.rightData.detail
    }
    
}
