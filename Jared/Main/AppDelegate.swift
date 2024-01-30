//
//  AppDelegate.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Create the main window and set the initial view controller
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialViewController = ViewController() // Replace with your initial view controller
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()

        return true
    }

    // Add additional app lifecycle methods as needed
}
