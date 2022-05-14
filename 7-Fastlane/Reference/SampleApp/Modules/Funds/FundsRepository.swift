//
//  FundsRepository.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import Foundation
import BaseProducts

final class FundsRepository: BaseProductsRepositoryInput {
    func fetchData(completion: @escaping (() -> Void)) {
        completion()
    }
}
