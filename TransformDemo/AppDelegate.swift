//
//  AppDelegate.swift
//  TransformDemo
//
//  Created by ADSmart on 2017/11/3.
//  Copyright © 2017年 ADSmart. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
 
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = configureRootViewController()
//        window?.makeKeyAndVisible()
         
        return true
    }

    func configureRootViewController() -> UIViewController {
        
        let subVC0 = ViewController()
        subVC0.view.backgroundColor = UIColor(red: 0.4, green: 0.8, blue: 1, alpha: 1)
        subVC0.title = "DC"
        let subVC1 = ViewController()
        subVC1.view.backgroundColor = UIColor(red: 0.1, green: 0.4, blue: 0.8, alpha: 1)
        subVC1.title = "Marvel"
        let subVC2 = ViewController()
        subVC2.view.backgroundColor = UIColor(red: 0.3, green: 0.8, blue: 0.4, alpha: 1)
        subVC2.title = "DHC"
        let subVC3 = ViewController()
        subVC3.view.backgroundColor = UIColor(red: 0.5, green: 0.4, blue: 0.5, alpha: 1)
        subVC3.title = "Image"
         
        return UIViewController()
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

