//
//  AppDelegate.swift
//  ViewCodeApp
//
//  Created by Bruno Cortez on 2/28/20.
//  Copyright © 2020 Bruno Cortez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let loginViewController = LoginViewController()
//        let navigationController = UINavigationController()
//        navigationController.viewControllers = [loginViewController]
        window?.rootViewController = loginViewController
        window?.makeKeyAndVisible()
        return true
    }

}

