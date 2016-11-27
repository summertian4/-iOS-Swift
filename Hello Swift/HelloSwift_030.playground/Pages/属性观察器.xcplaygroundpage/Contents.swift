//: [Previous](@previous)

import Foundation

// willSet 和 didSet 不会在 init 方法中被调用
class LightBulb {
    static let maxCurrent = 30
    var current = 0 {
        
        willSet(newCurrent) {
            
        }
        
        didSet {
            if current == LightBulb.maxCurrent {
                print("Pay attention, the current value get to the maximum point.")
            } else if current > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                self.current = oldValue
            }
            
            print("The current \(self.current)")
        }
    }
}

let bulb = LightBulb()

bulb.current = 30
bulb.current = 40


//: [Next](@next)
