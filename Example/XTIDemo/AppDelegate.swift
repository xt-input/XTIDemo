//
//  AppDelegate.swift
//  XTIDemo
//
//  Created by xtinput on 2021/1/5.
//

import UIKit
import XTIBaseTool
import XTILoger

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        XTILoger.info("123")
        XTILoger.debug("123")
        XTILoger.warning("123")
        XTILoger.error("123")

        return true
    }
}
