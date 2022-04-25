//
//  UITableViewController+Extensions.swift
//  SampleApp
//
//  Created by Julio Fernandes on 10/04/22.
//

import UIKit

extension UITableViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
        view.backgroundColor = UIColor(named: "comitando-blue")
    }
}
