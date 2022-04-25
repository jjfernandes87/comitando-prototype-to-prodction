//
//  TabBarController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 10/04/22.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor(named: "comitando-blue")
        tabBar.tintColor = UIColor(named: "comitando-green")
    }
    
}
