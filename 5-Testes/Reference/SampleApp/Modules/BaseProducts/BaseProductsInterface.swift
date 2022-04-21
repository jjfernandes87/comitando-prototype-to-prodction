//
//  BaseProductsInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit

public protocol BaseProductsInteractorInput: AnyObject {
    func fetchData()
}

protocol BaseProductsInteractorOutput: AnyObject {
    func fetchedData(_ content: [UITableViewCell])
}

protocol BaseProductsPresenterOutput: AnyObject {
    func showData(content: [UITableViewCell])
}

//MARK: Extras Repository and Adapter

protocol BaseProductsRepositoryInput: AnyObject {
    func fetchData(completion: @escaping (() -> Void))
}

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
