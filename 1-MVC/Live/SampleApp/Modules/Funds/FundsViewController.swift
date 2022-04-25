//
//  FundsViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

class FundsViewController: UITableViewController {

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
        case 1: cellIdentifier = "assetFound"
        case 2: cellIdentifier = "cardOne"
        case 3: cellIdentifier = "cardTwo"
        case 4: cellIdentifier = "cardThree"
        case 5: cellIdentifier = "cardFour"
        default: cellIdentifier = "about"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}
