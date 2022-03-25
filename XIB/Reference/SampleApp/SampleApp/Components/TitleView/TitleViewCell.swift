//
//  TitleViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

class TitleViewCell: UITableViewCell {
    
    static let cellIdentifier = "titleViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!

    func setup(title: String, font: UIFont = .preferredFont(forTextStyle: .title1) ) {
        titleLabel.text = title
        titleLabel.font = font
    }
    
}
