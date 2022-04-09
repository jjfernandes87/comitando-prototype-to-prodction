//
//  BaseProducts.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

class BaseProducts: UITableViewController {

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "AssetCardViewCell", bundle: nil), forCellReuseIdentifier: AssetCardViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "AboutViewCell", bundle: nil), forCellReuseIdentifier: AboutViewCell.cellIdentifier)
        tableView.register(UINib(nibName: "TitleViewCell", bundle: nil), forCellReuseIdentifier: TitleViewCell.cellIdentifier)
    }


}
