//
//  AppDelegate.swift
//  SampleApp
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let vc = HomeViewFactory().createModule()
        let navigation = NavigationController(rootViewController: vc)
        let tabBar = TabBarController()
        tabBar.viewControllers = [navigation]
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = UIColor(named: "comitando-blue")
        window.makeKeyAndVisible()
        window.rootViewController = tabBar
        self.window = window
        
        return true
    }
    
}
