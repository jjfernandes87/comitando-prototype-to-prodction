//
//  FundsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

final class FundsViewController: BaseProducts {

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
private extension FundsViewController {
    
    func makeAbout(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = AboutViewCell()
        cell.setup(title: "Fundos de Investimentos são uma modalidade de aplicação financeira que reúne recursos de um conjunto de investidores (cotistas). Tenha acesso a diversos gestores do mercado em um só lugar.")
        return cell
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell
    }
    
    func makeAssetCardOne(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "TREND ALAVANCADO FIC FIA",
                               titleOne: "Rentabilidade (12 M)",
                               detailOne: "8,31%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 5.000,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardTwo(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "ATIVO DE RENDA FIXA FIC RF",
                               titleOne: "Rentabilidade (12 M)",
                               detailOne: "6,27%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 10.000,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCardThree(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let asset = AssetModel(titleLabel: "ATIVO MULTIMERCADO FIC FIM ",
                               titleOne: "Rentabilidade (12 M)",
                               detailOne: "15,14%",
                               titleTwo: "Aplicação mínima",
                               detailTwo: "R$ 1.000,00")
        return makeAssetCard(model: asset, tableView: tableView, indexPath: indexPath)
    }
    
    func makeAssetCard(model: AssetModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = AssetCardViewCell()
        cell.setup(model: model)
        return cell
    }
    
}
