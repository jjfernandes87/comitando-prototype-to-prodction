//
//  FixedIncomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

class FixedIncomeViewController: UITableViewController {

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

extension FixedIncomeViewController {
    
    func makeAbout(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AboutViewCell.cellIdentifier, for: indexPath) as? AboutViewCell
        cell?.setup(title: "Proporcione estabilidade e segurança aos seus investimentos. Quando você compra um título de Renda Fixa, você está emprestado dinheiro ao emissor do papel.")
        return cell ?? UITableViewCell()
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TitleViewCell.cellIdentifier, for: indexPath) as? TitleViewCell
        cell?.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell ?? UITableViewCell()
    }
    
    func makeAssetCardOne(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "DEB ATIVO - OUT/2022",
                               titleOne: "Taxa (a.a)",
                               detailOne: "IPCA-A + 7,74%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 1.000,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardTwo(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "CDB ATIVO - ABR/2023",
                               titleOne: "Taxa (a.a)",
                               detailOne: "114% CDI",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 10.000,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardThree(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "CRI ATIVO - DEZ/2026",
                               titleOne: "Taxa (a.a)",
                               detailOne: "IPCA-A + 6,14%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 1.200,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCard(model: AssetModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AssetCardViewCell.cellIdentifier, for: indexPath) as? AssetCardViewCell
        cell?.setup(model: model)
        return cell ?? UITableViewCell()
    }
    
}
