//
//  BaseProductsInterface.swift
//  SampleApp
//
//  Created by Julio Fernandes on 12/04/22.
//

import UIKit
import Models
import DesignSystem

public protocol BaseProductsInteractorInput: AnyObject {
    func fetchData()
}

public protocol BaseProductsInteractorOutput: AnyObject {
    func fetchedData(_ content: [UITableViewCell])
}

public protocol BaseProductsPresenterOutput: AnyObject {
    func showData(content: [UITableViewCell])
}

//MARK: Extras Repository and Adapter

public protocol BaseProductsRepositoryInput: AnyObject {
    func fetchData(completion: @escaping (() -> Void))
}

public protocol BaseProductsUseCase: AnyObject {
    func makeAboutView(title: String) -> UITableViewCell
    func makeTitleView(title: String) -> UITableViewCell
    func makeAssetCard(model: AssetModel) -> UITableViewCell
    func responseData(completion: @escaping (([UITableViewCell]) -> Void))
}

public extension BaseProductsUseCase {
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
