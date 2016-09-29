//: [Previous](@previous)

import Foundation

// 返回值空可以不写，可以写 Void，可以写 ()
func sayHello(name: String?) -> String {
    return "Hello " + (name ?? "Guest")
}

var nickname: String? = nil
sayHello(name: nickname)

func

//: [Next](@next)
