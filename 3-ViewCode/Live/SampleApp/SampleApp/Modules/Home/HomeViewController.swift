//
//  HomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

final class HomeViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 1: return makeMyPatrimonyView(indexPath: indexPath)
        case 2: return makeTitleView(title: "Nossos produtos", indexPath: indexPath)
        case 3: return makeCollectionProductsViewOne(indexPath: indexPath)
        case 4: return makeCollectionProductsViewTwo(indexPath: indexPath)
        default: return makeTitleView(title: "Meus Investimentos", indexPath: indexPath)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1: performSegue(withIdentifier: "showMyInvestments", sender: nil)
        default: break
        }
    }
    
    @objc func didTapFixedIncone() {
        performSegue(withIdentifier: "showFixedIncone", sender: nil)
    }
    
    @objc func didTapStocks() {
        performSegue(withIdentifier: "showStocks", sender: nil)
    }
    
    @objc func didTapFunds() {
        performSegue(withIdentifier: "showFunds", sender: nil)
    }
    
    @objc func didTapTreasury() {
        performSegue(withIdentifier: "showTreasury", sender: nil)
    }

}

private extension HomeViewController {
    
    func makeTitleView(title: String, indexPath: IndexPath) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makeMyPatrimonyView(indexPath: IndexPath) -> UITableViewCell {
        let cell = MyPatrimonyViewCell()
        cell.setup(model: PatrimonyModel())
        return cell
    }
    
    func makeCollectionProductsViewOne(indexPath: IndexPath) -> UITableViewCell {
        
        let left = CollectionProductData(target: self,
                                         selector: #selector(didTapFixedIncone),
                                         title: "Renda Fixa",
                                         detail: "Invista em CDB, CRI, CRA, Debêntures, LC, LCA, LCI")
        
        let right = CollectionProductData(target: self,
                                         selector: #selector(didTapStocks),
                                         title: "Renda Variável",
                                         detail: "Invista em ações, ETFs, Fundos Imobiliários")
        
        let model = CollectionProductModel(left: left, right: right)
        
        let cell = CollectionProductsViewCell()
        cell.setup(model: model)
        return cell
    }
    
    func makeCollectionProductsViewTwo(indexPath: IndexPath) -> UITableViewCell {
        
        let left = CollectionProductData(target: self,
                                         selector: #selector(didTapFunds),
                                         title: "Fundos de Investimentos",
                                         detail: "Invista em Fundos de Renda Fixa, Multimercados e Internacionais")
        
        let right = CollectionProductData(target: self,
                                         selector: #selector(didTapTreasury),
                                         title: "Tesouro Direto",
                                         detail: "Invista em Selic, IPCA e Prefixado")
        
        let model = CollectionProductModel(left: left, right: right)
        
        let cell = CollectionProductsViewCell()
        cell.setup(model: model)
        return cell
    }
}
