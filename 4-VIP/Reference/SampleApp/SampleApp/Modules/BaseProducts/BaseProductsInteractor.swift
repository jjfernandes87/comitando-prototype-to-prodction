//
//  BaseProductsInteractor.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import Foundation

final class BaseProductsInteractor {
    
    private let output: BaseProductsInteractorOutput
    private let repository: BaseProductsRepositoryInput
    private let useCase: BaseProductsUseCase
    
    init(useCase: BaseProductsUseCase, presenter: BaseProductsInteractorOutput, repository: BaseProductsRepositoryInput) {
        self.useCase = useCase
        self.output = presenter
        self.repository = repository
    }
    
}

extension BaseProductsInteractor: BaseProductsInteractorInput {
    
    func fetchData() {
        repository.fetchData { [weak self] in
            self?.useCase.responseData { [weak self] content in
                self?.output.fetchedData(content)
            }
        }
    }
    
}
