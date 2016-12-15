//: [Previous](@previous)

import Foundation

struct Vector3 {
    // 加法运算符重载
    static func +(left: Vector3, right: Vector3) -> Vector3 {
        return Vector3()
    }
    
    static func ==(left: Vector3, right: Vector3) -> Bool {
        return false
    }
}

var v: Vector3 = Vector3()

// MARK: - 单目运算符
// 后置运算 先声明
postfix operator +++
postfix func +++( vector: inout Vector3) -> Vector3 {
    return Vector3()
}

v+++

// 前置运算
prefix operator +++
prefix func +++( vector: inout Vector3) -> Vector3 {
    return Vector3()
}

+++v

// MARK: - 双目运算符
precedencegroup ComparisonPrecedence {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
}

infix operator ^: ComparisonPrecedence
func ^(left: Vector3, right: Vector3) -> Double {
    return 0.0
}

v^v



// ===============================================================

func 😀(aString: String, bString: String) -> String {
    return aString + "😀" + bString
}

😀(aString: "😁", bString: "😃")



//: [Next](@next)
