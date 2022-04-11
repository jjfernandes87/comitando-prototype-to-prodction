//
//  MyInvestmentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class MyInvestmentsViewController: UITableViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Meus Investimentos"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 1: return makeTitleView(title: "Minha carteira", indexPath: indexPath)
        case 2: return makeProductCardView(model: ProductModel(title: "Renda Fixa", amount: "R$ 80.000,00"), indexPath: indexPath)
        case 3: return makeProductCardView(model: ProductModel(title: "Fundos de Investimentos", amount: "R$ 65.000,00"), indexPath: indexPath)
        case 4: return makeProductCardView(model: ProductModel(title: "Tesouro Direto", amount: "R$ 55.000,00"), indexPath: indexPath)
        case 5: return makeProductCardView(model: ProductModel(title: "Renda Variável", amount: "R$ 50.000,00"), indexPath: indexPath)
        default: return makePatrimonyView(indexPath: indexPath)
        }
    }

}

private extension MyInvestmentsViewController {
    func makeTitleView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makePatrimonyView(indexPath: IndexPath) -> UITableViewCell {
        let cell = PatrimonyViewCell()
        cell.setup(model: PatrimonyModel())
        return cell
    }
    
    func makeProductCardView(model: ProductModel, indexPath: IndexPath) -> UITableViewCell {
        let cell = ProductCardViewCell()
        cell.setup(model: model)
        return cell
    }
}
