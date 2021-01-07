//
//  AppDelegate.swift
//  XTIDemo
//
//  Created by xtinput on 2021/1/5.
//

import UIKit
import XTILoger
import XTINetwork

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        XTINetworkManager.default.baseUrl = "http://design.tcoding.cn"
        return true
    }
}
