//
//  HomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

class HomeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellIdentifier = ""
        switch indexPath.row {
        case 1: cellIdentifier = "myPatrimony"
        case 2: cellIdentifier = "ourProducts"
        case 3: cellIdentifier = "collectionProductsOne"
        case 4: cellIdentifier = "collectionProductsTwo"
        default: cellIdentifier = "myInvestments"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
}
