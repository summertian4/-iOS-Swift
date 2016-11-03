//: [Previous](@previous)

import Foundation

// 值类型 Value Type 最大的特点是 『赋值即拷贝』
struct Point {
    var x = 0
    var y = 0
}

var p1 = Point()

// 拷贝，非引用赋值
var p2 = p1

p2.x += 1

p2

p1


// 结构体(Array Dictionary Set String Int Float Double Bool) 枚举 都是值类型

//: [Next](@next)
