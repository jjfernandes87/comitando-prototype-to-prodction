//
//  MyInvestmentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class MyInvestmentsViewController: UITableViewController {
    
    private let interactor: MyInvestmentsViewInteractorInput
    private var content: [UITableViewCell] = []
    
    init(interactor: MyInvestmentsViewInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.fetchData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return content[indexPath.row]
    }

}

extension MyInvestmentsViewController: MyInvestmentsViewPresenterOutput {
    func showContent(content: [UITableViewCell]) {
        self.content = content
        tableView.reloadData()
    }
}
