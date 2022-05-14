//
//  FixedIncomeFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class FixedIncomeFactory: ConfiguratorProtocol {
    func createModule() -> UIViewController {
        let repository = FixedIncomeRepository()
        let useCase = FixedIncomeViewUseCase()
        let presenter = BaseProductsPresenter()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository, useCase: useCase)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        return vc
    }
}
