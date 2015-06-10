//
//  AppDelegate.swift
//  to-do
//
//  Created by Mishal Islam on 10/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import UIKit
import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Parse.enableLocalDatastore()
        Parse.setApplicationId("ZVBFLnJqeXy8m2asJxFNZoBdS5fl4GSGoBrvKlMv",
            clientKey: "bj7gU2KGGT370whqyVX7y5jbtu2wOumB5JMSzt4t")
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        return true
    }

    func applicationWillResignActive(application: UIApplication) {

    }

    func applicationDidEnterBackground(application: UIApplication) {

    }

    func applicationWillEnterForeground(application: UIApplication) {

    }

    func applicationDidBecomeActive(application: UIApplication) {

    }

    func applicationWillTerminate(application: UIApplication) {

    }


}

