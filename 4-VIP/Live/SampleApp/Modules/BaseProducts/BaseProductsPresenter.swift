//
//  BaseProductsPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit

final class BaseProductsPresenter {
    weak var output: BaseProductsPresenterOutput?
}

extension BaseProductsPresenter: BaseProductsInteractorOutput {
    func fetchedData(content: [UITableViewCell]) {
        output?.showContent(content: content)
    }
}
