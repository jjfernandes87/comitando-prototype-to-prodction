//
//  PatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit

class PatrimonyViewCell: UITableViewCell {

    static let cellIdentifier = "patrimonyViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    func setup(model: PatrimonyModel) {
        titleLabel.text = model.title
        amountLabel.text = model.amount
    }
    
}
