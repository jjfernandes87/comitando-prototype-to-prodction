//
//  HomeViewInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

protocol HomeViewInteractorInput: AnyObject {
    func fetchData()
}

protocol HomeViewInteractorOutput: AnyObject {
    func fetchedData()
}

protocol HomeViewPresenterOutput: AnyObject {
    func showData(content: [UITableViewCell])
    func pushViewController(_ viewController: UIViewController, animated: Bool)
}
