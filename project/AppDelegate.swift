//
//  AppDelegate.swift
//  project
//
//  Created by MuhammadAli on 24/02/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = UchburchakVC()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()

        return true
    }

   

}

