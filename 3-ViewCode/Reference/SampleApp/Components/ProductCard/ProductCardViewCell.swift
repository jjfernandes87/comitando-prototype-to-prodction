//
//  ProductCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

final class ProductCardViewCell: UITableViewCell {

    static let cellIdentifier = "productCardViewIdentifier"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(style: .default, reuseIdentifier: AssetCardViewCell.cellIdentifier)
        setupView()
    }
    
    private lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .systemFill
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 4
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fill
        stack.addArrangedSubview(iconView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(amountLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .left
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(model: ProductsModel) {
        iconView.image = UIImage(systemName: model.iconName)?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = UIColor(named: "comitando-green")
        titleLabel.text = model.title
        amountLabel.text = model.detail
    }
    
}

extension ProductCardViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(container)
        container.addSubview(vStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            container.heightAnchor.constraint(equalToConstant: 110),
        ])

        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: container.topAnchor, constant: 8),
            vStack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
            vStack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            vStack.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8),
        ])
        
        NSLayoutConstraint.activate([
            iconView.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
}
