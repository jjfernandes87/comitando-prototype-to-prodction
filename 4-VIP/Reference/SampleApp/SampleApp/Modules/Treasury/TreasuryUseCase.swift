//
//  TreasuryAdapter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

final class TreasuryUseCase: BaseProductsUseCase {
    func responseData(completion: @escaping (([UITableViewCell]) -> Void)) {
        var rows: [UITableViewCell] = []
        rows.append(makeAboutView(title: makeAbout()))
        rows.append(makeTitleView(title: "3 ativos encontrados"))
        rows.append(makeAssetCard(model: makeAssetOne()))
        rows.append(makeAssetCard(model: makeAssetTwo()))
        rows.append(makeAssetCard(model: makeAssetThree()))
        completion(rows)
    }
}

private extension TreasuryUseCase {
    
    func makeAbout() -> String {
        return """
        Invista com a mesma segurança da poupança e maior renatabilidade. O Tesouro Direto é uma forma de investir em títulos do governo federal por um prazo e rentabilidade definidos.
        """
    }
    
    func makeAssetOne() -> AssetModel {
        return AssetModel(title: "TESOURO IPCA 2026",
                               leftDetailOne: "Rentabilidade (a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "2,31%",
                               rightDetailTwo: "R$ 96,00")
    }
    
    func makeAssetTwo() -> AssetModel {
        return AssetModel(title: "TESOURO IPCA 2040",
                          leftDetailOne: "Rentabilidade (a.a)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "5,31%",
                               rightDetailTwo: "R$ 100,00")
    }
    
    func makeAssetThree() -> AssetModel {
        return AssetModel(title: "TESOURO SELIC 2025",
                          leftDetailOne: "Rentabilidade (a.a)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "5,74%",
                               rightDetailTwo: "R$ 300,00")
    }

}
