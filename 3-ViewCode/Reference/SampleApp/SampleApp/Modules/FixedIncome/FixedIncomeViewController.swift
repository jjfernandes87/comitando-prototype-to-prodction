//
//  FixedIncomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

final class FixedIncomeViewController: BaseProducts {

    // MARK: - Table view data source
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

// MAKR: Make UITableViewCell
private extension FixedIncomeViewController {
    
    func makeAbout(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = AboutViewCell()
        cell.setup(title: "Proporcione estabilidade e segurança aos seus investimentos. Quando você compra um título de Renda Fixa, você está emprestado dinheiro ao emissor do papel.")
        return cell
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell
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
        let cell = AssetCardViewCell()
        cell.setup(model: model)
        return cell
    }
    
}
