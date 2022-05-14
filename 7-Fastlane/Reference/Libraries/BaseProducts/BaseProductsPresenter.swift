//
//  BaseProductsPresenter.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

public final class BaseProductsPresenter {
    
    public weak var output: BaseProductsPresenterOutput?
    
    public init() {}
}

extension BaseProductsPresenter: BaseProductsInteractorOutput {
    public func fetchedData(_ content: [UITableViewCell]) {
        output?.showData(content: content)
    }
}
