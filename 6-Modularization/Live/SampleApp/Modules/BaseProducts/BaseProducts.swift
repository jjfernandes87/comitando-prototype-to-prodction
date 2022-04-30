//
//  BaseProducts.swift
//  SampleApp
//
//  Created by Julio Fernandes on 31/03/22.
//

import UIKit

class BaseProducts: UITableViewController {
    
    private let interactor: BaseProductsInteractorInput
    private var content: [UITableViewCell] = []
    
    init(title: String, interactor: BaseProductsInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
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

extension BaseProducts: BaseProductsPresenterOutput {
    func showContent(content: [UITableViewCell]) {
        self.content = content
        tableView.reloadData()
    }
}
