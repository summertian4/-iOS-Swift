//: [Previous](@previous)


// 使得 center 随着 origin 和 size 自动改变
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
    var center: Point {
        
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.x + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        } // 或者使用默认的 newValue
    }
    
    var area: Double {
        return size.width * size.height
    }
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}

var rect = Rectangle(origin: Point(), size: Size(width: 10, height: 5))
rect.center

// 默认 center 是只读的，若想改变，加 get set 代码段

rect.center  = Point()

//: [Next](@next)
