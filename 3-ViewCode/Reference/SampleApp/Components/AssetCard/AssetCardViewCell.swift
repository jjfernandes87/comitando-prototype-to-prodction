//
//  AssetCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 24/03/22.
//

import UIKit

final class AssetCardViewCell: UITableViewCell {

    static let cellIdentifier = "assetCardViewIdentifier"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title3)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var separatorLine: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 4
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.addArrangedSubview(hStackLineOne)
        stack.addArrangedSubview(hStackLineTwo)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var hStackLineOne: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .fill
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.addArrangedSubview(leftTitleLabelOne)
        stack.addArrangedSubview(leftTitleLabelTwo)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var leftTitleLabelOne: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .callout)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var leftTitleLabelTwo: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = .preferredFont(forTextStyle: .callout)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var hStackLineTwo: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .fill
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.addArrangedSubview(rightTitleLabelOne)
        stack.addArrangedSubview(rightTitleLabelTwo)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var rightTitleLabelOne: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .callout)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var rightTitleLabelTwo: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = .preferredFont(forTextStyle: .callout)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(model: AssetModel) {
        titleLabel.text = model.titleLabel
        leftTitleLabelOne.text = model.titleOne
        rightTitleLabelOne.text = model.detailOne
        leftTitleLabelTwo.text = model.titleTwo
        rightTitleLabelTwo.text = model.detailTwo
    }
}

extension AssetCardViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(container)
        container.addSubview(titleLabel)
        container.addSubview(separatorLine)
        container.addSubview(vStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            container.heightAnchor.constraint(equalToConstant: 116),
        ])

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            titleLabel.bottomAnchor.constraint(equalTo: separatorLine.topAnchor, constant: -16),
        ])

        NSLayoutConstraint.activate([
            separatorLine.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
            separatorLine.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            separatorLine.heightAnchor.constraint(equalToConstant: 1),
        ])

        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: separatorLine.bottomAnchor, constant: 8),
            vStack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
            vStack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            vStack.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8),
        ])
        
    }
    
}
