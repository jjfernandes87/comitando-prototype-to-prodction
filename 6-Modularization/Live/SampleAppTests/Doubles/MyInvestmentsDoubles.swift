//
//  MyInvestmentsDoubles.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import UIKit
@testable import SampleTests

final class OneCell: UITableViewCell {}
final class TwoCell: UITableViewCell {}

final class MyInvestmentsViewInteractorInputSpy: MyInvestmentsViewInteractorInput {
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }

}

final class MyInvestmentsViewInteractorOutputSpy: MyInvestmentsViewInteractorOutput {
    
    private(set) var fetchedDataCalled = false
    func fetchedData() {
        fetchedDataCalled = true
    }
    
}

final class MyInvestmentsViewPresenterOutputSpy: MyInvestmentsViewPresenterOutput {
    
    private(set) var showContentCalled = false
    private(set) var showContentToBeReturned: [UITableViewCell] = []
    func showContent(content: [UITableViewCell]) {
        showContentToBeReturned = content
        showContentCalled = true
    }
        
}
