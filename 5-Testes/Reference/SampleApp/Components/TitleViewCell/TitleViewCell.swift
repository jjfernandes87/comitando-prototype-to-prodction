//
//  TitleViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 26/03/22.
//

import UIKit

class TitleViewCell: UITableViewCell {

    static let cellIdentifier = "titleViewCellIdentifier"

    init() {
        super.init(style: .default, reuseIdentifier: TitleViewCell.cellIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(title: String) {
        titleLabel.text = title
    }
}

extension TitleViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])
    }
}
