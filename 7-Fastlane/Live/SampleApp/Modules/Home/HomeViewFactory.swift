//
//  HomeViewFactory.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import Models

final class HomeViewFactory: ConfiguratorProtocol {
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
