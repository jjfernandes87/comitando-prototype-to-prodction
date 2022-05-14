//
//  BaseProductsInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit
import DesignSystem
import Models

// MARK: Interactor

protocol BaseProductsInteractorInput: AnyObject {
    func fetchData()
}

protocol BaseProductsInteractorOutput: AnyObject {
    func fetchedData(content: [UITableViewCell])
}

// MARK: Repository

protocol BaseProductsRepository: AnyObject {
    func fetchData(completion: (() -> Void))
}

// MARK: Presenter

protocol BaseProductsPresenterOutput: AnyObject {
    func showContent(content: [UITableViewCell])
}

// MARK: UseCase

protocol BaseProductsUseCase: AnyObject {
    func makeAboutView(title: String) -> UITableViewCell
    func makeTitleView(title: String) -> UITableViewCell
    func makeAssetCard(model: AssetModel) -> UITableViewCell
    func responseData(completion: @escaping (([UITableViewCell]) -> Void))
}

extension BaseProductsUseCase {
    func makeAboutView(title: String) -> UITableViewCell {
        let cell = AboutViewCell()
        cell.setup(title: title)
        return cell
    }

    func makeTitleView(title: String) -> UITableViewCell {
        let cell = TitleViewCell()
        cell.setup(title: title)
        return cell
    }

    func makeAssetCard(model: AssetModel) -> UITableViewCell {
        let cell = AssetCardViewCell()
        cell.setup(model: model)
        return cell
    }
}
