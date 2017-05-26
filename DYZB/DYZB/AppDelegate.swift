//
//  AppDelegate.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.backgroundColor = UIColor.white
        
        window?.rootViewController = MainViewController()
        
        window?.makeKeyAndVisible()
        
        return true
    }

   

}

