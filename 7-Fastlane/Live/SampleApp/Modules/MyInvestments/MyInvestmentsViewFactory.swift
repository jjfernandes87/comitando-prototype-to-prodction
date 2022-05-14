//
//  MyInvestmentsViewFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class MyInvestmentsViewFactory: ConfiguratorProtocol {
    func createModule() -> UIViewController {
        let presenter = MyInvestmentsViewPresenter()
        let interactor = MyInvestmentsViewInteractor(presenter: presenter)
        let vc = MyInvestmentsViewController(interactor: interactor)
        presenter.output = vc
        vc.title = ""
        
        return vc
    }
}
