//
//  BaseProductsDoubles.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import UIKit
@testable import SampleTests

final class BaseProductsInteractorInputSpy: BaseProductsInteractorInput {
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        fetchDataCalled = true
    }

}

final class BaseProductsInteractorOutputSpy: BaseProductsInteractorOutput {
    
    private(set) var fetchedDataCalled = false
    private(set) var fetchedDataToBeReturned: [UITableViewCell] = []
    func fetchedData(content: [UITableViewCell]) {
        fetchedDataToBeReturned = content
        fetchedDataCalled = true
    }
    
}

final class BaseProductsRepositorySpy: BaseProductsRepository {
    
    private(set) var fetchDataCalled = false
    func fetchData(completion: (() -> Void)) {
        fetchDataCalled = true
        completion()
    }
    
}

final class BaseProductsUseCaseSpy: BaseProductsUseCase {
    
    private(set) var responseDataCalled = false
    func responseData(completion: @escaping (([UITableViewCell]) -> Void)) {
        responseDataCalled = true
        completion([])
    }

}

final class BaseProductsPresenterOutputSpy: BaseProductsPresenterOutput {
    
    private(set) var showContentCalled = false
    private(set) var showContentToBeReturned: [UITableViewCell] = []
    func showContent(content: [UITableViewCell]) {
        showContentToBeReturned = content
        showContentCalled = true
    }
}

final class RepositoryFake {
    
    private var repository: BaseProductsRepository
    
    init(repository: BaseProductsRepository) {
        self.repository = repository
    }
    
    private(set) var fetchDataCalled = false
    func fetchData() {
        repository.fetchData { [weak self] in
            self?.fetchDataCalled = true
        }
    }
    
}
