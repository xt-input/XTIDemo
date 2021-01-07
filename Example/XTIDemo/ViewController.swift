//
//  ViewController.swift
//  XTIDemo
//
//  Created by xtinput on 2021/1/5.
//

import UIKit
import XTILoger
import XTINetwork
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        XTINetworkManager.send(url: "http://design.tcoding.cn/rxswift/login/index", completed: { value, error, _ in
            if let tempValue = value {
                XTILoger.info(tempValue)
            } else if let tempError = error?.asAFError {
                XTILoger.info(tempError.errorDescription)
            }

        })
        XTINetworkManager.send(serverName: "rxswift/login/index", completed: { value, error, _ in
            if let tempValue = value {
                XTILoger.info(tempValue)
            } else if let tempError = error?.asAFError {
                XTILoger.info(tempError.errorDescription)
            }

        })
    }
}
