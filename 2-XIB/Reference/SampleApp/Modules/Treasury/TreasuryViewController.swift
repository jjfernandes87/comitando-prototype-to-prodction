//
//  TreasuryViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

final class TreasuryViewController: BaseProducts {

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
private extension TreasuryViewController {
    
    func makeAbout(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AboutViewCell.cellIdentifier, for: indexPath) as? AboutViewCell
        cell?.setup(title: "Invista com a mesma segurança da poupança e maior renatabilidade. O Tesouro Direto é uma forma de investir em títulos do governo federal por um prazo e rentabilidade definidos.")
        return cell ?? UITableViewCell()
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TitleViewCell.cellIdentifier, for: indexPath) as? TitleViewCell
        cell?.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell ?? UITableViewCell()
    }
    
    func makeAssetCardOne(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "TESOURO IPCA+ 2026",
                               titleOne: "Rentabilidade (a.a)",
                               detailOne: "8,31%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 100,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardTwo(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "TEROUSO IPCA+ 2040",
                               titleOne: "Rentabilidade (a.a)",
                               detailOne: "12,39%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 35,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardThree(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "TESOURO SELIC 2025",
                               titleOne: "Rentabilidade (a.a)",
                               detailOne: "SELIC + 0,05%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 100,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCard(model: AssetModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AssetCardViewCell.cellIdentifier, for: indexPath) as? AssetCardViewCell
        cell?.setup(model: model)
        return cell ?? UITableViewCell()
    }
    
}
