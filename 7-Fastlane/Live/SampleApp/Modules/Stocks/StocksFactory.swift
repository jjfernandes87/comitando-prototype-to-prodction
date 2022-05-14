//
//  StocksFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class StocksFactory: ConfiguratorProtocol {
    func createModule() -> UIViewController {
        let repository = StocksRepository()
        let useCase = StocksViewUseCase()
        let presenter = BaseProductsPresenter()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository, useCase: useCase)
        let vc = BaseProducts(title: "Renda Variável", interactor: interactor)
        presenter.output = vc
        return vc
    }
}

