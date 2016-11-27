//: [Previous](@previous)

import Foundation

class ClosedRange {
    let start: Int
    let end: Int
    
    var width: Int {
        return end - start + 1
    }
    
    // 调用时执行一次，并且记住值
    lazy var sum: Int = {
        var res = 0
        for i in self.start ... self.end {
            res += i
        }
        return res
    }()
    
    init?(start: Int, end: Int) {
        if start > end {
            return nil
        }
        self.start = start
        self.end = end
    }
}

if let range = ClosedRange(start: 0, end: 1_0000) {
    range.width
    range.sum
    range.sum
}

//: [Next](@next)
