//
//  StocksViewUseCase.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

final class StocksViewUseCase: BaseProductsUseCase {
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

private extension StocksViewUseCase {

    func makeAbout() -> String {
        return """
        Ativos de renda variável são aqueles cuja remuneração ou retorno de capital não pode ser dimensionado no momento da aplicação, podendo variar positivamente ou negativamente, de acordo com as expectativas do mercado.
        """
    }
    
    func makeAssetOne() -> AssetModel {
        return AssetModel(title: "PETR",
                          leftDetailOne: "Variação",
                          leftDetailTwo: "Ultimo valor",
                          rightDetailOne: "2,31%",
                          rightDetailTwo: "R$ 32,49")
    }
    
    func makeAssetTwo() -> AssetModel {
        return AssetModel(title: "MGLU",
                          leftDetailOne: "Variação",
                          leftDetailTwo: "Ultimo valor",
                          rightDetailOne: "120% CDI",
                          rightDetailTwo: "R$ 1.000,00")
    }
    
    func makeAssetThree() -> AssetModel {
        return AssetModel(title: "MELI",
                          leftDetailOne: "Variação",
                          leftDetailTwo: "Ultimo valor",
                          rightDetailOne: "2,39%",
                          rightDetailTwo: "5,69")
    }
    
    func makeAssetFour() -> AssetModel {
        return AssetModel(title: "VALE",
                          leftDetailOne: "Variação",
                          leftDetailTwo: "Ultimo valor",
                          rightDetailOne: "1,21%",
                          rightDetailTwo: "R$ 44,56")
    }
    
}
