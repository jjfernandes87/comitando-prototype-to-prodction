//
//  AssetCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit

class AssetCardViewCell: UITableViewCell {

    static let cellIdentifier = "assetCardViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var leftDetailOneLabel: UILabel!
    @IBOutlet weak var leftDetailTwoLabel: UILabel!
    @IBOutlet weak var rightDetailOneLabel: UILabel!
    @IBOutlet weak var rightDetailTwoLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
        leftDetailOneLabel.text = ""
        leftDetailTwoLabel.text = ""
        rightDetailOneLabel.text = ""
        rightDetailTwoLabel.text = ""
    }
    
    func setup(model: AssetModel) {
        titleLabel.text = model.title
        leftDetailOneLabel.text = model.leftDetailOne
        leftDetailTwoLabel.text = model.leftDetailTwo
        rightDetailOneLabel.text = model.rightDetailOne
        rightDetailTwoLabel.text = model.rightDetailTwo
    }
}

struct AssetModel {
    let title: String
    let leftDetailOne: String
    let leftDetailTwo: String
    let rightDetailOne: String
    let rightDetailTwo: String
}
