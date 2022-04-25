//
//  StocksFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

final class StocksFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let useCase = StocksUseCase()
        let presenter = BaseProductsPresenter()
        let repository = StocksRepository()
        let interactor = BaseProductsInteractor(useCase: useCase, presenter: presenter, repository: repository)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        
        return vc
    }
}

