//
//  MyPatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
//

import UIKit
import Models

public final class MyPatrimonyViewCell: UITableViewCell {

    static let cellIdentifier = "myPatrimonyViewIdentifier"
    
    public init() {
        super.init(style: .default, reuseIdentifier: PatrimonyViewCell.cellIdentifier)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private lazy var container: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillProportionally
        stack.addArrangedSubview(iconView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(amountLabel)
        stack.addArrangedSubview(legendLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "comitando-green")
        label.font = .preferredFont(forTextStyle: .largeTitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var legendLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .footnote)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public func setup(model: PatrimonyModel) {
        iconView.image = UIImage(systemName: model.iconName)?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = UIColor(named: "comitando-green")
        titleLabel.text = model.title
        amountLabel.text = model.amount
        legendLabel.text = model.legend
    }
    
}

extension MyPatrimonyViewCell: ViewCodeBaseProtocol {
    public func buildViewHierarchy() {
        contentView.addSubview(container)
        container.addSubview(vStack)
    }
    
    public func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            vStack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16),
            vStack.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -16),
            vStack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
        ])
        
        NSLayoutConstraint.activate([
            iconView.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
}
