//
//  ViewCodeBaseProtocol.swift
//  SampleApp
//
//  Created by Julio Fernandes on 07/04/22.
//

import Foundation
import UIKit

protocol ViewCodeBaseProtocol {
    func setupView()
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
}

extension ViewCodeBaseProtocol {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}

extension ViewCodeBaseProtocol where Self: UITableViewCell {
    func setupAdditionalConfiguration() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        selectionStyle = .none
    }
}
