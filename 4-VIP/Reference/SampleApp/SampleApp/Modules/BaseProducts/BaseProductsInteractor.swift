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
    
    init(presenter: BaseProductsInteractorOutput, repository: BaseProductsRepositoryInput) {
        self.output = presenter
        self.repository = repository
    }
}

extension BaseProductsInteractor: BaseProductsInteractorInput {
    
    func fetchData() {
        repository.fetchData { [output] in
            output.fetchedData()
        }
    }
    
}
