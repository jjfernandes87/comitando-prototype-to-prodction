//
//  MyInvestmentsInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import UIKit

protocol MyInvestmentsInteractorInput: AnyObject {
    func fetchData()
}

protocol MyInvestmentsInteractorOutput: AnyObject {
    func fetchedData()
}

protocol MyInvestmentsPresenterOutput: AnyObject {
    func showData(content: [UITableViewCell])
}
