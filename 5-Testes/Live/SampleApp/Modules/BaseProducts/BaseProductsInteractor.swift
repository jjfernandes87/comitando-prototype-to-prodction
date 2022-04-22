//
//  BaseProductsInteractor.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import Foundation

final class BaseProductsInteractor {
    private let output: BaseProductsInteractorOutput
    private let repository: BaseProductsRepository
    private let useCase: BaseProductsUseCase
    
    init(presenter: BaseProductsInteractorOutput, repository: BaseProductsRepository, useCase: BaseProductsUseCase) {
        self.useCase = useCase
        self.output = presenter
        self.repository = repository
    }
}

extension BaseProductsInteractor: BaseProductsInteractorInput {
    func fetchData() {
        repository.fetchData { [useCase] in
            useCase.responseData { [output] content in
                output.fetchedData(content: content)
            }
        }
    }
}
