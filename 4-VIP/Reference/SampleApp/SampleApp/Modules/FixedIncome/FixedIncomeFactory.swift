//
//  FixedIncomeFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

final class FixedIncomeFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let adapter = FixedIncomeAdapter()
        let presenter = BaseProductsPresenter(adapter: adapter)
        let repository = FixedIncomeRepository()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        
        return vc
    }
}
