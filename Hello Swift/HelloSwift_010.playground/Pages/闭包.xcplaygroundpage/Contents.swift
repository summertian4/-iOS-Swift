//: [Previous](@previous)

import Foundation

// 闭包 等价于 函数
// swift 称为闭包，其实是一种函数
// OC 称为block

var arr: [Int] = []
for _ in 0 ..< 20 {
    // arc4random() 9 位数的随机整数
    arr.append(Int(arc4random() % 1000))
}

arr.sort(by: { (a: Int, b: Int) -> Bool in
    return a < b
})
arr

// 智能识别类型
arr.sort(by: { a, b in
    return a < b
})
arr

arr.sort(by: {$0 < $1})
arr

arr.sort(by: <)
arr

// Trailing Closure
// 当闭包是最后一个参数时，可以将小括号提出
arr.sort(by: ) { a, b in
    return a < b
}
arr

//: [Next](@next)
