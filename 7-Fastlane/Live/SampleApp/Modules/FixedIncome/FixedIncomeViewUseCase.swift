//
//  FixedIncomeViewUseCase.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class FixedIncomeViewUseCase: BaseProductsUseCase {
    func responseData(completion: @escaping (([UITableViewCell]) -> Void)) {
        var rows: [UITableViewCell] = []
        rows.append(makeAboutView(title: makeAbout()))
        rows.append(makeTitleView(title: "4 ativos encontrados"))
        rows.append(makeAssetCard(model: makeAssetOne()))
        rows.append(makeAssetCard(model: makeAssetTwo()))
        rows.append(makeAssetCard(model: makeAssetThree()))
        rows.append(makeAssetCard(model: makeAssetFour()))
        completion(rows)
    }
}

private extension FixedIncomeViewUseCase {

    func makeAbout() -> String {
        return """
        Proporcione estabilidade e segurança aos seus investimentos. Quando você compra um título de Renda Fixa, você está emprestado dinheiro ao emissor do papel.
        """
    }
    
    func makeAssetOne() -> AssetModel {
        return AssetModel(title: "DEV ATIVO - OUT/2022",
                               leftDetailOne: "Taxa(a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "IPCA-A+7,74%",
                               rightDetailTwo: "R$ 1.000,00")
    }
    
    func makeAssetTwo() -> AssetModel {
        return AssetModel(title: "CDB ATIVO - ABR/2023",
                               leftDetailOne: "Taxa(a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "120% CDI",
                               rightDetailTwo: "R$ 1.000,00")
    }
    
    func makeAssetThree() -> AssetModel {
        return AssetModel(title: "CRI ATIVO - DEZ/2026",
                               leftDetailOne: "Taxa(a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "IPCA-A+5,74%",
                               rightDetailTwo: "R$ 1.300,00")
    }
    
    func makeAssetFour() -> AssetModel {
        return AssetModel(title: "LCA ATIVO - OUT/2028",
                               leftDetailOne: "Taxa(a.a)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "150% CDI",
                               rightDetailTwo: "R$ 5.000,00")
    }
    
}
