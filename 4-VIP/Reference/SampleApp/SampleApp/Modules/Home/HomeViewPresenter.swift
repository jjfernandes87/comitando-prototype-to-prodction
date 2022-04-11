//
//  HomeViewPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

final class HomeViewPresenter{
    weak var output: HomeViewPresenterOutput?
    init() {}
}

extension HomeViewPresenter: HomeViewInteractorOutput {
    func fetchedData() {
        var content: [UITableViewCell] = []
        content.append(makeTitleView(title: "Meus Investimentos"))
        content.append(makeMyPatrimonyView())
        content.append(makeTitleView(title: "Nossos produtos"))
        content.append(makeCollectionProductsViewOne())
        content.append(makeCollectionProductsViewTwo())
        output?.showData(content: content)
    }
}

private extension HomeViewPresenter {
    
    func makeTitleView(title: String) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makeMyPatrimonyView() -> UITableViewCell {
        let cell = MyPatrimonyViewCell()
        cell.setup(model: PatrimonyModel())
        return cell
    }
    
    func makeCollectionProductsViewOne() -> UITableViewCell {
        
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
    
    func makeCollectionProductsViewTwo() -> UITableViewCell {
        
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
    
    @objc func didTapFixedIncone() {
        output?.pushViewController(FixedIncomeViewController(title: "Renda Fixa"), animated: true)
    }
    
    @objc func didTapStocks() {
        output?.pushViewController(StocksViewController(title: "Renda Variável"), animated: true)
    }
    
    @objc func didTapFunds() {
        output?.pushViewController(FundsViewController(title: "Fundos de Investimentos"), animated: true)
    }
    
    @objc func didTapTreasury() {
        output?.pushViewController(TreasuryViewController(title: "Tesouro Direto"), animated: true)
    }
}