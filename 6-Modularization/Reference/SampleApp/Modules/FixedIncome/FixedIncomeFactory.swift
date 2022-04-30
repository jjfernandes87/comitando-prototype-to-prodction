//
//  FixedIncomeFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit
import BaseProducts

final class FixedIncomeFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let useCase = FixedIncomeUseCase()
        let presenter = BaseProductsPresenter()
        let repository = FixedIncomeRepository()
        let interactor = BaseProductsInteractor(useCase: useCase, presenter: presenter, repository: repository)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        
        return vc
    }
}
