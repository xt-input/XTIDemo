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
        XTINetworkManager.default.timeoutInterval = 3
        XTINetworkManager.default.httpHeaderBlock = { _, value in
            var tempValue = value
            tempValue["app"] = "123123"
            return tempValue
        }

        XTINetworkManager.default.encryptBlock = { request, value in
            XTILoger.info("\(request.requestUrl) 接口加密")
            return value
        }

        XTINetworkManager.default.decryptBlock = { request, value in
            XTILoger.info("\(request.requestUrl) 接口解密")
            return value
        }

        XTINetworkManager.default.preOperationCallBack = { request, value, error, isCache in
            if isCache {
                XTILoger.info("\(request.requestUrl) 接口缓存数据\(value ?? "")")
            }
            XTILoger.info("\(request.requestUrl) 接口预处理:\(value ?? "")")
            if error != nil {
                XTILoger.info("\(request.requestUrl) 接口错误:\(error?.asAFError?.errorDescription ?? "")")
            }
            return (value, error)
        }

        return true
    }
}
