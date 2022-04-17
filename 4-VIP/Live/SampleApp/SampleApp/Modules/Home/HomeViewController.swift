//
//  HomeViewController.swift
//  SampleApp
//
//  Created by Julio Fernandes on 22/03/22.
//

import UIKit

final class HomeViewController: UITableViewController {
    
    private let interactor: HomeViewInteractorInput
    private var content: [UITableViewCell] = []
    
    init(interactor: HomeViewInteractorInput) {
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1: pushViewController(MyInvestmentsViewFactory().createModule(), animated: true)
        default: break
        }
    }
    
}

extension HomeViewController: HomeViewPresenterOutput {
    func showContent(content: [UITableViewCell]) {
        self.content = content
        tableView.reloadData()
    }
    
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        navigationController?.pushViewController(viewController, animated: true)
    }

}
