//
//  HeaderMyPatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

final class HeaderMyPatrimonyViewCell: UITableViewCell {

    static let cellIdentifier = "headerMyPatrimonyViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    func setup(model: PatrimonyModel) {
        titleLabel.text = model.title
        amountLabel.text = model.amount
    }
    
}
