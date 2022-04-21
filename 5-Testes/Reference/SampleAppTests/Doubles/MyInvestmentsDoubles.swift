//
//  MyInvestmentsDoubles.swift
//  SampleInvestments
//
//  Created by Julio Fernandes on 21/04/22.
//

import UIKit
@testable import SampleInvestments

final class MyInvestmentsInteractorOutputSpy: MyInvestmentsInteractorOutput {
    
    private(set) var fetchedDataCalled = false
    func fetchedData() {
        fetchedDataCalled = true
    }
    
}

final class MyInvestmentsPresenterOutputSpy: MyInvestmentsPresenterOutput {
    
    private(set) var contentData: [UITableViewCell]?
    private(set) var showDataCalled = false
    func showData(content: [UITableViewCell]) {
        showDataCalled = true
        contentData = content
    }
    
}

final class MyInvestmentsInteractorInputSpy: MyInvestmentsInteractorInput {
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }
    
}

final class CellOne: UITableViewCell {}
final class CellTwo: UITableViewCell {}
