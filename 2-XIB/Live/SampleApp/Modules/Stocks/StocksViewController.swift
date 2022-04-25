//
//  StocksViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class StocksViewController: BaseProducts {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 1: return makeTitleView(title: "4 ativos encontrados", indexPath: indexPath)
        case 2: return makeAssetCard(model: makeAssetOne() ,indexPath: indexPath)
        case 3: return makeAssetCard(model: makeAssetTwo() ,indexPath: indexPath)
        case 4: return makeAssetCard(model: makeAssetThree() ,indexPath: indexPath)
        case 5: return makeAssetCard(model: makeAssetFour() ,indexPath: indexPath)
        default: return makeAboutView(title: makeAbout(), indexPath: indexPath)
        }
    }

}

private extension StocksViewController {

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
