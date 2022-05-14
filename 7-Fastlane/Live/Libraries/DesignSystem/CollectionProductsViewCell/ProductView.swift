//
//  ProductView.swift
//  SampleApp
//
//  Created by Julio Fernandes on 09/04/22.
//

import UIKit
import Models

public final class ProductView: UIView {
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    private lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.alignment = .leading
        stack.distribution = .fill
        stack.addArrangedSubview(iconView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(detailLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = UIColor(named: "comitando-green")
        label.font = .preferredFont(forTextStyle: .title2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .subheadline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public func setup(model: CollectionProductData) {
        button.addTarget(model.target, action: model.selector, for: .touchUpInside)
        iconView.image = UIImage(systemName: model.iconName)?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = UIColor(named: "comitando-green")
        titleLabel.text = model.title
        detailLabel.text = model.detail
    }
}

extension ProductView: ViewCodeBaseProtocol {
    public func buildViewHierarchy() {
        addSubview(button)
        addSubview(vStack)
    }
    
    public func setupConstraints() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            vStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            vStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            vStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        ])
    }
    
    public func setupAdditionalConfiguration() {
        vStack.isUserInteractionEnabled = false
    }
}
