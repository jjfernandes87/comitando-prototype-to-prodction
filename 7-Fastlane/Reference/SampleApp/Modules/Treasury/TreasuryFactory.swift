//
//  TreasuryFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit
import BaseProducts

final class TreasuryFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let useCase = TreasuryUseCase()
        let presenter = BaseProductsPresenter()
        let repository = TreasuryRepository()
        let interactor = BaseProductsInteractor(useCase: useCase, presenter: presenter, repository: repository)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        
        return vc
    }
}


