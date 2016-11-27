//: [Previous](@previous)

import Foundation

import Foundation

class Avatar {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class User: Avatar {
    var group: String
    
    // 如果子类初始化涉及到父类属性，严格按照：
    // 1. 父类属性必须按照父类构造函数
    // 2. 先初始化子类属性，再掉 super 初始化父类属性
    init(name: String, group: String) {
        
        // 第一段：构造
        // 不可以调用自身属性和方法相关的逻辑
        // 静态属性和方法可以调用
        self.group = group
        super.init(name: name)
        
        // 第二段：构造完成
        // 此时可以加逻辑，调用自身方法
        self.printSelf()
    }
    
    func printSelf() {
        print("I am who")
    }
}

//: [Next](@next)
