//: [Previous](@previous)

import Foundation

class Student: Comparable {
    var name: String = ""
    var score:Int = 0
    
    static func <(left: Student, right: Student) -> Bool {
        return left.score < right.score
    }
    
    static func <=(left: Student, right: Student) -> Bool {
        return left.score <= right.score
    }
    
    static func ==(left: Student, right: Student) -> Bool {
        return left === right
    }
}


// 错误定义，Comparable 因为在定义中引用了 Self 所以不能当做一个类型，只能当做协议
//func topOne(seq: [Comparable]) -> Comparable {
//    
//}

func topOne<T: Comparable>(seq: [T]) -> T {
    assert(seq.count > 0)
    return seq.reduce(seq[0]) {
        max($0, $1)
    }
}

topOne(seq: [2, 5,1,9,4])

//: [Next](@next)
