//
//  AppDelegate.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 11/11/2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
                let mainNavigationController = UINavigationController(rootViewController: MainViewController())
                window.rootViewController = mainNavigationController
                window.makeKeyAndVisible()
                
                self.window = window
                
                return true
    }
}

