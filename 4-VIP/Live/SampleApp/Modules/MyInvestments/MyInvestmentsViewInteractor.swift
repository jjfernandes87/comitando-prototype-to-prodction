//
//  MyInvestmentsViewInteractor.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import Foundation

final class MyInvestmentsViewInteractor {
    
    private let output: MyInvestmentsViewInteractorOutput
    
    init(presenter: MyInvestmentsViewInteractorOutput) {
        self.output = presenter
    }
    
}

extension MyInvestmentsViewInteractor: MyInvestmentsViewInteractorInput {
    
    func fetchData() {
        output.fetchedData()
    }
}
