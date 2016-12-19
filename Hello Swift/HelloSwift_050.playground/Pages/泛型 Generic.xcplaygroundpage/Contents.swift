//: [Previous](@previous)

import Foundation

// 泛型：设计一套逻辑，但和类型无关

func swapTwoThings<T>(_ a: inout T, _ b: inout T) {
    (a, b) = (b, a)
}

// 泛型类型
let arr: Array<Int> = Array<Int>()

// 以下定义代表结构体 stack 支持泛型
struct Stack<T> {
    var items = [T]()
    
    func isEmpty() -> Bool {
        return (items.count == 0)
    }
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T? {
        guard !self.isEmpty() else {
            return nil
        }
        
        return items.removeLast()
    }
}

var s = Stack<Int>()
s.push(item: 1)

struct Pair<T1, T2> {
    var a: T1
    var b: T2
}

//: [Next](@next)
