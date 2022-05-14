//
//  AssetCardViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit
import Models

public final class AssetCardViewCell: UITableViewCell {

    static let cellIdentifier = "assetCardViewIdentifier"
    
    public init() {
        super.init(style: .default, reuseIdentifier: AssetCardViewCell.cellIdentifier)
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
        stack.axis = .vertical
        stack.spacing = 4
        stack.alignment = .fill
        stack.distribution = .fill
        stack.addArrangedSubview(hStackOne)
        stack.addArrangedSubview(hStackTwo)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var hStackOne: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.addArrangedSubview(leftDetailOneLabel)
        stack.addArrangedSubview(rightDetailOneLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var leftDetailOneLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var rightDetailOneLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var hStackTwo: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.addArrangedSubview(leftDetailTwoLabel)
        stack.addArrangedSubview(rightDetailTwoLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var leftDetailTwoLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var rightDetailTwoLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
        leftDetailOneLabel.text = ""
        rightDetailOneLabel.text = ""
        leftDetailTwoLabel.text = ""
        rightDetailTwoLabel.text = ""
    }
    
    public func setup(model: AssetModel) {
        titleLabel.text = model.title
        leftDetailOneLabel.text = model.leftDetailOne
        rightDetailOneLabel.text = model.rightDetailOne
        leftDetailTwoLabel.text = model.leftDetailTwo
        rightDetailTwoLabel.text = model.rightDetailTwo
    }
}

extension AssetCardViewCell: ViewCodeBaseProtocol {
    public func buildViewHierarchy() {
        contentView.addSubview(container)
        container.addSubview(titleLabel)
        container.addSubview(separatorLine)
        container.addSubview(vStack)
    }
    
    public func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            titleLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
        ])
        
        NSLayoutConstraint.activate([
            separatorLine.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            separatorLine.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            separatorLine.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
            separatorLine.heightAnchor.constraint(equalToConstant: 1),
        ])
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: separatorLine.bottomAnchor, constant: 16),
            vStack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8),
            vStack.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8),
            vStack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8),
        ])
    }
    
    
}
