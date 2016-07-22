//
//  AppDelegate.swift
//  CABasicAnimationVisualizer
//
//  Created by Liz Vanderkloot on 7/22/16.
//  Copyright © 2016 lizvdk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let mainViewController = ViewController(nibName: "ViewController", bundle: nil)
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()

        return true
    }

}

