//: [Previous](@previous)

import Foundation

enum Shape {
    
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerX: Double, centery: Double, radius: Double)
    case Point
    
    func area() -> Double {
        
        switch self {
        case let .Square(side):
            return side * side
        case let .Rectangle(width, height):
            return width * height
        case let .Circle(_, _, r):
            return M_PI * r * r
        case .Point:
            return 0
        }
    }
}

//: [Next](@next)
