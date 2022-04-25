//
//  HomeViewFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

protocol ConfiguratorFactory {
    func createModule() -> UIViewController
}

final class HomeViewFactory: ConfiguratorFactory {

    func createModule() -> UIViewController {
        let presenter = HomeViewPresenter()
        let interactor = HomeViewInteractor(presenter: presenter)
        let vc = HomeViewController(interactor: interactor)
        presenter.output = vc
        
        let titleName = "Início"
        let icon = UIImage(systemName: "homekit")
        vc.title = titleName
        vc.navigationItem.backButtonTitle = " "
        vc.tabBarItem = UITabBarItem(title: titleName, image: icon, selectedImage: icon)
        
        return vc
    }
    
}
