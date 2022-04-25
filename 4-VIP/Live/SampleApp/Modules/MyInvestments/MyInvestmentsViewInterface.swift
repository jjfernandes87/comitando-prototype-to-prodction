//
//  MyInvestmentsViewInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit

// MARK: Interactor

protocol MyInvestmentsViewInteractorInput: AnyObject {
    func fetchData()
}

protocol MyInvestmentsViewInteractorOutput: AnyObject {
    func fetchedData()
}

// MARK: Presenter

protocol MyInvestmentsViewPresenterOutput: AnyObject {
    func showContent(content: [UITableViewCell])
}

