//
//  BaseProductsInteractorFake.swift
//  SampleInvestments
//
//  Created by Julio Fernandes on 21/04/22.
//

import UIKit
@testable import SampleInvestments

final class BaseProductsInteractorFake: BaseProductsInteractorInput {
    
    private let repository: BaseProductsRepositoryInput
    init(repository: BaseProductsRepositoryInput) {
        self.repository = repository
    }
        
    private(set) var fetchDataCalled = false
    func fetchData() {
        repository.fetchData { [weak self] in
            self?.fetchDataCalled = true
        }
    }
    
}

final class BaseProductsInteractorInputSpy: BaseProductsInteractorInput {
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }
    
}

final class BaseProductsInteractorOutputSpy: BaseProductsInteractorOutput {
    
    private(set) var fetchedDataCalled = false
    func fetchedData(_ content: [UITableViewCell]) {
        fetchedDataCalled = true
    }
    
}

final class BaseProductsUseCaseMock: BaseProductsUseCase {
    
    var completionHandler: [UITableViewCell] = []
    private(set) var responseDataCalled = false
    func responseData(completion: @escaping (([UITableViewCell]) -> Void)) {
        responseDataCalled = true
        completion(completionHandler)
    }
    
}

final class BaseProductsRepositoryInputSpy: BaseProductsRepositoryInput {
    
    private(set) var fetchDataCalled = false
    func fetchData(completion: @escaping (() -> Void)) {
        fetchDataCalled = true
        completion()
    }
    
}

final class BaseProductsPresenterOutputSpy: BaseProductsPresenterOutput {
    
    private(set) var contentData: [UITableViewCell]?
    private(set) var showDataCalled = false
    func showData(content: [UITableViewCell]) {
        showDataCalled = true
        contentData = content
    }
    
}
