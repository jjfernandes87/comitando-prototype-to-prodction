//
//  StocksViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

class StocksViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "AssetCardViewCell", bundle: nil), forCellReuseIdentifier: AssetCardViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "AboutViewCell", bundle: nil), forCellReuseIdentifier: AboutViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "TitleViewCell", bundle: nil), forCellReuseIdentifier: TitleViewCell.cellIdentifier)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 1: return makeTitleViewCell(title: "3 ativos encontrados", tableView: tableView, indexPath: indexPath)
        case 2: return makeAssetCardOne(tableView: tableView, indexPath: indexPath)
        case 3: return makeAssetCardTwo(tableView: tableView, indexPath: indexPath)
        case 4: return makeAssetCardThree(tableView: tableView, indexPath: indexPath)
        default: return makeAbout(tableView: tableView, indexPath: indexPath)
        }
    }

}

extension StocksViewController {
    
    func makeAbout(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AboutViewCell.cellIdentifier, for: indexPath) as? AboutViewCell
        cell?.setup(title: "Ativos de renda variável são aqueles cuja remuneração ou retorno de capital não pode ser dimensionado no momento da aplicação, podendo variar positivamente ou negativamente, de acordo com as expectativas do mercado.")
        return cell ?? UITableViewCell()
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TitleViewCell.cellIdentifier, for: indexPath) as? TitleViewCell
        cell?.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell ?? UITableViewCell()
    }
    
    func makeAssetCardOne(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "PETR",
                               titleOne: "Variação",
                               detailOne: "2,31%",
                               titleTwo: "Último valor",
                               detailTwo: "R$ 32,49")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardTwo(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "MGLU",
                               titleOne: "Variação",
                               detailOne: "2,39%",
                               titleTwo: "Último valor",
                               detailTwo: "5,69")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardThree(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "VALE",
                               titleOne: "Variação",
                               detailOne: "-0,05%",
                               titleTwo: "Último valor",
                               detailTwo: "R$ 96,79")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCard(model: AssetModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AssetCardViewCell.cellIdentifier, for: indexPath) as? AssetCardViewCell
        cell?.setup(model: model)
        return cell ?? UITableViewCell()
    }
    
}
