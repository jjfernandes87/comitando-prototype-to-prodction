//
//  TreasuryFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class TreasuryFactory: ConfiguratorProtocol {
    func createModule() -> UIViewController {
        let repository = TreasuryRepository()
        let useCase = TreasuryViewUseCase()
        let presenter = BaseProductsPresenter()
        let interactor = BaseProductsInteractor(presenter: presenter, repository: repository, useCase: useCase)
        let vc = BaseProducts(title: "Tesouro Direto", interactor: interactor)
        presenter.output = vc
        return vc
    }
}

