//
//  BaseProducts.swift
//  SampleApp
//
//  Created by Julio Fernandes on 31/03/22.
//

import UIKit

class BaseProducts: UITableViewController {
    
    func makeAboutView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = AboutViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makeTitleView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makeAssetCard(model: AssetModel, indexPath: IndexPath) -> UITableViewCell {
        let cell = AssetCardViewCell()
        cell.setup(model: model)
        return cell
    }
}
