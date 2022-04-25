//
//  AboutViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

final class AboutViewCell: UITableViewCell {

    static let cellIdentifier = "aboutViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!

    func setup(title: String) {
        titleLabel.text = title
    }
    
}
