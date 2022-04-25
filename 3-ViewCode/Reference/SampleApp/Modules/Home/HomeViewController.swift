//
//  HomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

final class HomeViewController: UITableViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Início"
        navigationItem.backButtonTitle = ""
        tabBarItem = UITabBarItem(title: "Início", image: UIImage(systemName: "homekit"), selectedImage: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        case 1: return makeMyPatrimonyViewCell(tableView: tableView, indexPath: indexPath)
        case 2: return makeTitleViewCell(title: "Nossos produtos", tableView: tableView, indexPath: indexPath)
        case 3: return makeCollectionProductsViewCell(model: makeModelOne(), tableView: tableView, indexPath: indexPath)
        case 4: return makeCollectionProductsViewCell(model: makeModelTwo(), tableView: tableView, indexPath: indexPath)
        default: return makeTitleViewCell(title: "Meus Investimentos", tableView: tableView, indexPath: indexPath)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1: pushViewController(MyInvestimentsViewController())
        default: break
        }
    }
    
}

// MAKR: Make UITableViewCell
private extension HomeViewController {
    
    private func pushViewController(_ viewController: UIViewController, animated: Bool = true) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func makeTitleViewCell(title: String, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makeMyPatrimonyViewCell(model: PatrimonyModel = PatrimonyModel(), tableView: UITableView, indexPath: IndexPath)  -> UITableViewCell {
        let cell = MyPatrimonyViewCell()
        cell.setup(model: model)
        return cell
    }
    
    func makeCollectionProductsViewCell(model: CollectionProductsModel, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = CollectionProductsViewCell()
        cell.setup(model: model)
        return cell
    }
    
    func makeModelOne() -> CollectionProductsModel {
        let left = ProductsModel(title: "Renda Fixa",
                                 detail: "Invista em CDB, CRI, CRA, Debêntures, LC, LCA, LCI",
                                 target: self, selector: #selector(didTapFixedIncome))
        
        let right = ProductsModel(title: "Renda Variável",
                                  detail: "Invista em ações, ETFs, Fundos Imobiliários",
                                  target: self, selector: #selector(didTapStocks))
        
        return CollectionProductsModel(leftData: left, rightData: right)
    }
    
    func makeModelTwo() -> CollectionProductsModel {
        let left = ProductsModel(title: "Fundos de Investimentos",
                                 detail: "Invista em Fundos de Renda Fixa, Multimercados e Internacionais",
                                 target: self, selector: #selector(didTapFunds))
        
        let right = ProductsModel(title: "Tesouro Direto",
                                  detail: "Invista em Selic, IPCA e Prefixado",
                                  target: self, selector: #selector(didTapTreasury))
        
        return CollectionProductsModel(leftData: left, rightData: right)
    }
    
}

// MAKR: Make Actions
private extension HomeViewController {
    
    @objc func didTapFixedIncome() {
        pushViewController(FixedIncomeViewController(title: "Renda Fixa"))
    }
    
    @objc func didTapFunds() {
        pushViewController(FundsViewController(title: "Fundos de Investimentos"))
    }
    
    @objc func didTapTreasury() {
        pushViewController(TreasuryViewController(title: "Tesouro Direto"))
    }
    
    @objc func didTapStocks() {
        pushViewController(StocksViewController(title: "Renda Variável"))
    }
    
}
