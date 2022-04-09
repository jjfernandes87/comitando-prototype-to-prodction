//
//  CollectionProductsViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

final class CollectionProductsViewCell: UITableViewCell {
    
    static let cellIdentifier = "collectionProductsViewIdentifier"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(style: .default, reuseIdentifier: CollectionProductsViewCell.cellIdentifier)
        setupView()
    }
    
    private lazy var hStack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 16
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.addArrangedSubview(leftView)
        stack.addArrangedSubview(rightView)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var leftView: ProductsView = {
        let view = ProductsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rightView: ProductsView = {
        let view = ProductsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setup(model: CollectionProductsModel) {
        leftView.setup(model: model.leftData)
        rightView.setup(model: model.rightData)
    }
    
}

extension CollectionProductsViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(hStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            hStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            hStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            hStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            hStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            hStack.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
}
