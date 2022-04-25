//
//  AboutViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 27/03/22.
//

import UIKit

class AboutViewCell: UITableViewCell {

    static let cellIdentifier = "aboutViewIdentifier"
    
    init() {
        super.init(style: .default, reuseIdentifier: AboutViewCell.cellIdentifier)
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
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(title: String) {
        titleLabel.text = title
    }
}

extension AboutViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 36),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -36),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])
    }
}
