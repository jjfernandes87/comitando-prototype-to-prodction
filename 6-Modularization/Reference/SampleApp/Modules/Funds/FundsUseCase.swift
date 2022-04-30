//
//  FundsAdapter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit
import Models
import BaseProducts

final class FundsUseCase: BaseProductsUseCase {
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

private extension FundsUseCase {
    
    func makeAbout() -> String {
        return """
        Fundos de Investimentos são uma modalidade de aplicação financeira que reúne recursos de um conjunto de investidores (cotistas). Tenha acesso a diversos gestores do mercado em um só lugar.
        """
    }
    
    func makeAssetOne() -> AssetModel {
        return AssetModel(title: "TREND ALAVANCADO",
                               leftDetailOne: "Rentabilidade (12M)",
                               leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "7,74%",
                               rightDetailTwo: "R$ 1.000,00")
    }
    
    func makeAssetTwo() -> AssetModel {
        return AssetModel(title: "ATIVO MULTIMERCADO",
                          leftDetailOne: "Rentabilidade (12M)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "120%",
                               rightDetailTwo: "R$ 2.000,00")
    }
    
    func makeAssetThree() -> AssetModel {
        return AssetModel(title: "ATIVDO DE RENDA FIXA ",
                          leftDetailOne: "Rentabilidade (12M)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "5,74%",
                               rightDetailTwo: "R$ 1.300,00")
    }

}
