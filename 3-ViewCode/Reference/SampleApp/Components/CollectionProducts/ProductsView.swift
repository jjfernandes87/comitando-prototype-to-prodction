//
//  ProductsView.swift
//  SampleApp
//
//  Created by Julio Fernandes on 08/04/22.
//

import UIKit

final class ProductsView: UIView {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 4
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .equalSpacing
        stack.addArrangedSubview(iconView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(detailLabel)
        stack.isUserInteractionEnabled = false
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
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .footnote)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(model: ProductsModel) {
        if let selector = model.selector {
            button.addTarget(model.target, action: selector, for: .touchUpInside)
        }
        
        iconView.image = UIImage(systemName: model.iconName)?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = UIColor(named: "comitando-green")
        titleLabel.text = model.title
        detailLabel.text = model.detail
    }
    
}

extension ProductsView: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        addSubview(button)
        addSubview(vStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])

        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            vStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            vStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            vStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .systemFill
        layer.cornerRadius = 10
    }
}
