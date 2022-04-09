//
//  TreasuryViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class TreasuryViewController: BaseProducts {

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

private extension TreasuryViewController {

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
    
    func makeAssetFour() -> AssetModel {
        return AssetModel(title: "TESOURO SELIC 2023",
                          leftDetailOne: "Rentabilidade (a.a)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "15%",
                               rightDetailTwo: "R$ 35,90")
    }
    
}



