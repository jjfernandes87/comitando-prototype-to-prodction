//
//  MyPatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
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

struct PatrimonyModel {
    let iconName: String = "coloncurrencysign.circle"
    let title: String = "Patrimônio"
    let amount: String = "R$ 250.000,00"
    let legend: String = "ultima atualização 2 min atrás"
}
