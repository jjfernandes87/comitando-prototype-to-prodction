//
//  HomeViewInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit

// MARK: Interactor

protocol HomeViewInteractorInput: AnyObject {
    func fetchData()
}

protocol HomeViewInteractorOutput: AnyObject {
    func fetchedData()
}

// MARK: Presenter

protocol HomeViewPresenterOutput: AnyObject {
    func showContent(content: [UITableViewCell])
    func pushViewController(_ viewController: UIViewController, animated: Bool)
}
