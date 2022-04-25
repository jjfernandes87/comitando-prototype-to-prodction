//
//  TreasuryRepository.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import Foundation

final class TreasuryRepository: BaseProductsRepository {
    func fetchData(completion: (() -> Void)) {
        completion() // API request here!
    }
}
