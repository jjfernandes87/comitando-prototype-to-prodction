//
//  ConfiguratorProtocol.swift
//  SampleApp
//
//  Created by Julio Fernandes on 16/04/22.
//

import UIKit

public protocol ConfiguratorProtocol: AnyObject {
    func createModule() -> UIViewController
}
