//
//  MyInvestmentsInteractor.swift
//  SampleApp
//
//  Created by Julio Fernandes on 11/04/22.
//

import Foundation

final class MyInvestmentsInteractor {
    
    private var output: MyInvestmentsInteractorOutput
    
    init(presenter: MyInvestmentsInteractorOutput) {
        self.output = presenter
    }
}

extension MyInvestmentsInteractor: MyInvestmentsInteractorInput {
    
    func fetchData() {
        output.fetchedData()
    }
    
}

