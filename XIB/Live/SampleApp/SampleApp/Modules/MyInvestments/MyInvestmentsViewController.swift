//
//  MyInvestmentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class MyInvestmentsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellIdentifier = ""
        
        switch indexPath.row {
        case 1: cellIdentifier = "myPortfolio"
        case 2: cellIdentifier = "productOne"
        case 3: cellIdentifier = "productTwo"
        case 4: cellIdentifier = "productThree"
        case 5: cellIdentifier = "productFour"
        default: cellIdentifier = "myPatrimony"
        }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }

}
