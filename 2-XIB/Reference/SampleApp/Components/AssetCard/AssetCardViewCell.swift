//
//  AssetCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

final class AssetCardViewCell: UITableViewCell {

    static let cellIdentifier = "assetCardViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var leftTitleLabelOne: UILabel!
    @IBOutlet weak var rightTitleLabelOne: UILabel!
    @IBOutlet weak var leftTitleLabelTwo: UILabel!
    @IBOutlet weak var rightTitleLabelTwo: UILabel!
    
    func setup(model: AssetModel) {
        titleLabel.text = model.titleLabel
        leftTitleLabelOne.text = model.titleOne
        rightTitleLabelOne.text = model.detailOne
        leftTitleLabelTwo.text = model.titleTwo
        rightTitleLabelTwo.text = model.detailTwo
    }
}
