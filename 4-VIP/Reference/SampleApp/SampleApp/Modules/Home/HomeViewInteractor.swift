//
//  HomeViewInteractor.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import Foundation

final class HomeViewInteractor {
    
    private var output: HomeViewInteractorOutput
    
    init(presenter: HomeViewInteractorOutput) {
        self.output = presenter
    }
}

extension HomeViewInteractor: HomeViewInteractorInput {
    
    func fetchData() {
        output.fetchedData()
    }
    
}
