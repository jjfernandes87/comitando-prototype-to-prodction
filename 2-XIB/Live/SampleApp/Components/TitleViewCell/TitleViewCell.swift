//
//  TitleViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
//

import UIKit

class TitleViewCell: UITableViewCell {

    static let cellIdentifier = "titleViewCellIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(title: String) {
        titleLabel.text = title
    }
}
