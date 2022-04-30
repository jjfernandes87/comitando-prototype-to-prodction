//
//  MyInvestmentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

final class MyInvestmentsViewController: UITableViewController {
    
    private var interactor: MyInvestmentsInteractorInput
    private var content: [UITableViewCell] = []
    
    init(interactor: MyInvestmentsInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
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

extension MyInvestmentsViewController: MyInvestmentsPresenterOutput {
    func showData(content: [UITableViewCell]) {
        self.content = content
        tableView.reloadData()
    }
}
