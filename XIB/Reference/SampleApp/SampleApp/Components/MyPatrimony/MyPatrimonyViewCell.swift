//
//  MyPatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

class MyPatrimonyViewCell: UITableViewCell {

    static let cellIdentifier = "myPatrimonyViewIdentifier"
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var legendLabel: UILabel!
    
    func setup(model: PatrimonyModel) {
        iconView.image = UIImage(systemName: model.iconName)
        titleLabel.text = model.title
        amountLabel.text = model.amount
        legendLabel.text = model.legend
    }
    
}
