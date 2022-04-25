//
//  FundsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class FundsViewController: BaseProducts {

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

private extension FundsViewController {

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
    
    func makeAssetFour() -> AssetModel {
        return AssetModel(title: "ATIVO INTERNACIONAL",
                          leftDetailOne: "Rentabilidade (12M)",
                          leftDetailTwo: "Aplicação mínima",
                               rightDetailOne: "150%",
                               rightDetailTwo: "R$ 5.000,00")
    }
    
}


