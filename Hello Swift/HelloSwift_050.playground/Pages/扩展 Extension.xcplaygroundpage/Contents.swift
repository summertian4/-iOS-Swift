//: [Previous](@previous)

import Foundation

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

class Rectangle {
    var origin = Point()
    var size = Size()
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}

extension Rectangle {
    func translate(x: Double, y: Double) {
        self.origin.x += x
        self.origin.y += y
    }
}

extension Rectangle {
    // 扩展不能添加存储类型的属性
//    var center:Point = Point()
    
    // 职能扩展计算性属性
    var center:Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
    
    // 必须是 convenience
    convenience init(center: Point, size: Size) {
        self.init(origin: Point(), size: Size())
    }
}

//: [Next](@next)
