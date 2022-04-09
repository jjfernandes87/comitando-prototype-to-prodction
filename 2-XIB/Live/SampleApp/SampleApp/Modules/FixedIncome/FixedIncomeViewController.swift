//
//  FixedIncomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class FixedIncomeViewController: BaseProducts {

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

private extension FixedIncomeViewController {

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
