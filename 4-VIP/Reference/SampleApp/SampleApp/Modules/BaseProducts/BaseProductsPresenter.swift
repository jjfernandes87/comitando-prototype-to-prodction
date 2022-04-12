//
//  BaseProductsPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import Foundation

final class BaseProductsPresenter {
    
    weak var output: BaseProductsPresenterOutput?
    private let adapter: BaseProductsAdapterInput
    
    init(adapter: BaseProductsAdapterInput) {
        self.adapter = adapter
    }
}

extension BaseProductsPresenter: BaseProductsInteractorOutput {
    func fetchedData() {
        adapter.convertData { [output] content in
            output?.showData(content: content)
        }
    }
}
