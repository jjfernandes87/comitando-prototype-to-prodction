//
//  NavigationController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 10/04/22.
//

import UIKit

final class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barStyle = .black
        navigationBar.barTintColor = UIColor(named: "comitando-blue")
        navigationBar.tintColor = UIColor(named: "comitando-green")
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor(named: "comitando-green")!]
    }
}
