//
//  AboutViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit

class AboutViewCell: UITableViewCell {

    static let cellIdentifier = "aboutViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(title: String) {
        titleLabel.text = title
    }
    
}
