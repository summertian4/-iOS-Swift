//: [Previous](@previous)

import Foundation

// -------------------------------------
// 设置默认值
func sayHelloTo(name: String, greeting: String = "Hello") -> String {
    return "\(greeting), \(name)"
}

// 3.0 的变化，第一个参数也要写出名字
sayHelloTo(name: "zhoulingyu", greeting: "hello")
sayHelloTo(name: "name")

// -------------------------------------
// 不定参数函数
func mean(_ numbers: Double ...) -> Double {
    var sum: Double = 0
    
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}

mean(1, 3, 6)

// -------------------------------------
// 改变参数内容
func toBinary(_ num: Int) -> String {
    var num = num
    var res = "0"
    
    while num != 0 {
        res = String(num % 2) + res
        num /= 2
    }
    return res
}

var x = 100
toBinary(x)
x

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    // 写法 1
//    let t: Int = a
//    a = b
//    b = t
    
    // 写法 2
    (a, b) = (b, a)
}

var a: Int = 2
var b: Int = 3
swapTwoInts(&a, &b)
a
b

//: [Next](@next)
