//
//  BaseProducts.swift
//  SampleApp
//
//  Created by Julio Fernandes on 31/03/22.
//

import UIKit

class BaseProducts: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TitleViewCell", bundle: nil),
                           forCellReuseIdentifier: TitleViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "AboutViewCell", bundle: nil),
                           forCellReuseIdentifier: AboutViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "AssetCardViewCell", bundle: nil),
                           forCellReuseIdentifier: AssetCardViewCell.cellIdentifier)
        
    }
}

extension BaseProducts {
    
    func makeAboutView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AboutViewCell.cellIdentifier, for: indexPath) as! AboutViewCell
        cell.setup(title: title)
        return cell
    }
    
    func makeTitleView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TitleViewCell.cellIdentifier, for: indexPath) as! TitleViewCell
        cell.setup(title: title)
        return cell
    }
    
    func makeAssetCard(model: AssetModel, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AssetCardViewCell.cellIdentifier, for: indexPath) as! AssetCardViewCell
        cell.setup(model: model)
        return cell
    }
}
