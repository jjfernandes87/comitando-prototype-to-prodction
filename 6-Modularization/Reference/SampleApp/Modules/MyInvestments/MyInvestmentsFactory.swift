//
//  MyInvestmentsFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

final class MyInvestmentsFactory: ConfiguratorFactory {
    
    func createModule() -> UIViewController {
        let presenter = MyInvestmentsPresenter()
        let interactor = MyInvestmentsInteractor(presenter: presenter)
        let vc = MyInvestmentsViewController(interactor: interactor)
        presenter.output = vc
        
        vc.title = ""
        
        return vc
    }
    
}
