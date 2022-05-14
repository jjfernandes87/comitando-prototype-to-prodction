//
//  FundsFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class FundsFactory: ConfiguratorProtocol {
    func createModule() -> UIViewController {
        let repository = FundsRepository()
        let useCase = FundsViewUseCase()
        let presenter = BaseProductsPresenter()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository, useCase: useCase)
        let vc = BaseProducts(title: "Fundos de Investimentos", interactor: interactor)
        presenter.output = vc
        return vc
    }
}
