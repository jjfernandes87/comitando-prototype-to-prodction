//
//  BaseProductsPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

final class BaseProductsPresenter {
    
    weak var output: BaseProductsPresenterOutput?
    
}

extension BaseProductsPresenter: BaseProductsInteractorOutput {
    func fetchedData(_ content: [UITableViewCell]) {
        output?.showData(content: content)
    }
}
