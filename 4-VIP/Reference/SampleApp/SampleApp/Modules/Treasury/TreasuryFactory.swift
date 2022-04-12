//
//  TreasuryFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

final class TreasuryFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let adapter = TreasuryAdapter()
        let presenter = BaseProductsPresenter(adapter: adapter)
        let repository = TreasuryRepository()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository)
        let vc = BaseProducts(title: "Renda Fixa", interactor: interactor)
        presenter.output = vc
        
        return vc
    }
}


