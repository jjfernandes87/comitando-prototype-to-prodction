//
//  HomeDoubles.swift
//  SampleInvestments
//
//  Created by Julio Fernandes on 21/04/22.
//

import UIKit
@testable import SampleInvestments

final class HomeViewInteractorOutputSpy: HomeViewInteractorOutput {
    private(set) var fetchedDataCalled = false
    func fetchedData() {
        fetchedDataCalled = true
    }
}

final class HomeViewPresenterOutputSpy: HomeViewPresenterOutput {
    
    private(set) var contentData: [UITableViewCell]?
    private(set) var showDataCalled = false
    func showData(content: [UITableViewCell]) {
        showDataCalled = true
        contentData = content
    }
    
    private(set) var pushViewControllerCalled = false
    private(set) var pushViewControllerAnimatedCalled: Bool?
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushViewControllerCalled = true
        pushViewControllerAnimatedCalled = animated
    }
    
}

final class HomeViewInteractorInputSpy: HomeViewInteractorInput {
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }
}

final class UIViewControllerMock: UIViewController {}
