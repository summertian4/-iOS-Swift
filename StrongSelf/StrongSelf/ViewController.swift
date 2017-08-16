//
//  ViewController.swift
//  StrongSelf
//
//  Created by 周凌宇 on 2017/8/10.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        var anObject: SomeClass? = SomeClass()  // Optional, so we can set it to nil
        anObject?.doClosure()

        DispatchQueue.global(qos: .userInitiated).async {
            usleep(100)
            anObject = nil  // This will dealloc c
        }
    }
}

// 正确执行
//class SomeClass {
//    deinit { print("Destroying C") }
//    func log(_ msg: String) { print(msg) }
//    func doClosure() {
//        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
//            if let strongSelf = self {
//                strongSelf.log("before sleep")
//                usleep(500)
//                strongSelf.log("after sleep")
//            }
//        }
//    }
//}

class SomeClass {
    deinit { print("Destroying C") }
    func log(_ msg: String) { print(msg) }
    func doClosure() {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.log("before sleep")
            usleep(500)
            self?.log("after sleep")
        }
    }
}
