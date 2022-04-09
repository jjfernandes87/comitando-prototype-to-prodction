//
//  MyInvestimentsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 21/03/22.
//

import UIKit

class MyInvestimentsViewController: UITableViewController {

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
        case 2: cellIdentifier = "fixedIncomeCard"
        case 3: cellIdentifier = "fundsCard"
        case 4: cellIdentifier = "treasuryCard"
        case 5: cellIdentifier = "stocksCard"
        default: cellIdentifier = "myPatrimony"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}
