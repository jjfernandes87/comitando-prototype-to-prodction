//
//  CollectionProductsViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
//

import UIKit

public final class CollectionProductsViewCell: UITableViewCell {

    static let cellIdentifier = "collectionProductsViewIdentifier"
    
    public init() {
        super.init(style: .default, reuseIdentifier: CollectionProductsViewCell.cellIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private lazy var hStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 16
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.addArrangedSubview(leftContainer)
        stack.addArrangedSubview(rightContainer)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var leftContainer: ProductView = {
        let view = ProductView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rightContainer: ProductView = {
        let view = ProductView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public func setup(model: CollectionProductModel) {
        leftContainer.setup(model: model.left)
        rightContainer.setup(model: model.right)
    }
}

extension CollectionProductsViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(hStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            hStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            hStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            hStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            hStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        selectionStyle = .none
        leftContainer.layer.cornerRadius = 10
        leftContainer.backgroundColor = .systemFill
        rightContainer.layer.cornerRadius = 10
        rightContainer.backgroundColor = .systemFill
    }
}
