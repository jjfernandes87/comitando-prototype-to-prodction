//
//  MyInvestimentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

final class MyInvestimentsViewController: UITableViewController {

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            return makeHeaderMyPatrimonyViewCell(tableView: tableView, indexPath: indexPath)
        case 1:
            return makeTitleViewCell(title: "Minha Carteira", tableView: tableView, indexPath: indexPath)
        case 2:
            let model = ProductsModel(title: "Renda Fixa", detail: "R$ 80.000,00")
            return makeProductCard(model: model, tableView: tableView, indexPath: indexPath)
        case 3:
            let model = ProductsModel(title: "Fundos de Investimentos", detail: "R$ 65.000,00")
            return makeProductCard(model: model, tableView: tableView, indexPath: indexPath)
        case 4:
            let model = ProductsModel(title: "Tesouro Direto", detail: "R$ 55.000,00")
            return makeProductCard(model: model, tableView: tableView, indexPath: indexPath)
        case 5:
            let model = ProductsModel(title: "Renda Variável", detail: "R$ 50.000,00")
            return makeProductCard(model: model, tableView: tableView, indexPath: indexPath)
        default: return UITableViewCell()
        }
    }
    
}

// MAKR: Make UITableViewCell
private extension MyInvestimentsViewController {
    
    func makeProductCard(model: ProductsModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = ProductCardViewCell()
        cell.setup(model: model)
        return cell
    }
    
    func makeHeaderMyPatrimonyViewCell(model: PatrimonyModel = PatrimonyModel(), tableView: UITableView, indexPath: IndexPath)  -> UITableViewCell {
        let cell = HeaderMyPatrimonyViewCell()
        cell.setup(model: model)
        return cell
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title, font: .preferredFont(forTextStyle: .headline))
        return cell
    }
}
