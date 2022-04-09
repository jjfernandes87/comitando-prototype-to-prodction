//
//  MyPatrimonyViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

final class MyPatrimonyViewCell: UITableViewCell {

    static let cellIdentifier = "myPatrimonyViewIdentifier"
    
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
        stack.addArrangedSubview(legendLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .left
        image.tintColor = UIColor(named: "commitando-grren")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title3)
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
    
    private lazy var legendLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .caption2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(model: PatrimonyModel) {
        iconView.image = UIImage(systemName: model.iconName)?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = UIColor(named: "comitando-green")
        titleLabel.text = model.title
        amountLabel.text = model.amount
        legendLabel.text = model.legend
    }
    
}

extension MyPatrimonyViewCell: ViewCodeBaseProtocol {
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
            container.heightAnchor.constraint(equalToConstant: 120),
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
