//
//  MyInvestmentsViewPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import DesignSystem
import Models

final class MyInvestmentsViewPresenter {
    weak var output: MyInvestmentsViewPresenterOutput?
}

extension MyInvestmentsViewPresenter: MyInvestmentsViewInteractorOutput {
    func fetchedData() {
        var content: [UITableViewCell] = []
        content.append(makePatrimonyView())
        content.append(makeTitleView(title: "Minha carteira"))
        content.append(makeProductCardView(model: ProductModel(title: "Renda Fixa", amount: "R$ 80.000,00")))
        content.append(makeProductCardView(model: ProductModel(title: "Fundos de Investimentos", amount: "R$ 65.000,00")))
        content.append(makeProductCardView(model: ProductModel(title: "Tesouro Direto", amount: "R$ 55.000,00")))
        content.append(makeProductCardView(model: ProductModel(title: "Renda Variável", amount: "R$ 50.000,00")))
        output?.showContent(content: content)
    }
}

private extension MyInvestmentsViewPresenter {
    func makeTitleView(title: String) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }
    
    func makePatrimonyView() -> UITableViewCell {
        let cell = PatrimonyViewCell()
        cell.setup(model: PatrimonyModel())
        return cell
    }
    
    func makeProductCardView(model: ProductModel) -> UITableViewCell {
        let cell = ProductCardViewCell()
        cell.setup(model: model)
        return cell
    }
}
