//
//  BaseProducts.swift
//  SampleApp
//
//  Created by Julio Fernandes on 31/03/22.
//

import UIKit

public class BaseProducts: UITableViewController {
    
    private var interactor: BaseProductsInteractorInput
    internal var content: [UITableViewCell] = []
    
    public init(title: String, interactor: BaseProductsInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        interactor.fetchData()
    }
    
    // MARK: - Table view data source
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return content[indexPath.row]
    }
}

extension BaseProducts: BaseProductsPresenterOutput {
    
    func showData(content: [UITableViewCell]) {
        self.content = content
        tableView.reloadData()
    }
    
}
