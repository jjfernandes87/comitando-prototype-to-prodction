//
//  HomeViewDoubles.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import UIKit
@testable import SampleTests

final class HomeViewInteractorInputSpy: HomeViewInteractorInput {
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }
}

final class HomeViewInteractorOutputSpy: HomeViewInteractorOutput {
    
    private(set) var fetchedDataCalled = false
    func fetchedData() {
        fetchedDataCalled = true
    }
    
}

final class HomeViewPresenterOutputSpy: HomeViewPresenterOutput {
    
    private(set) var showContentCalled = false
    private(set) var showContentToBeReturned: [UITableViewCell] = []
    func showContent(content: [UITableViewCell]) {
        showContentToBeReturned = content
        showContentCalled = true
    }
    
    private(set) var pushViewControllerCalled = false
    private(set) var pushViewControllerToBeReturned: UIViewController?
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushViewControllerToBeReturned = viewController
        pushViewControllerCalled = true
    }
    
}
