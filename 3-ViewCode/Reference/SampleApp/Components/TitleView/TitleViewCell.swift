//
//  TitleViewCell.swift
//  SampleApp
//
//  Created by Julio Fernandes on 23/03/22.
//

import UIKit

final class TitleViewCell: UITableViewCell {
    
    static let cellIdentifier = "titleViewIdentifier"
    
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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setup(title: String, font: UIFont = .preferredFont(forTextStyle: .title1) ) {
        titleLabel.text = title
        titleLabel.font = font
    }
    
}

extension TitleViewCell: ViewCodeBaseProtocol {
    func buildViewHierarchy() {
        contentView.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
