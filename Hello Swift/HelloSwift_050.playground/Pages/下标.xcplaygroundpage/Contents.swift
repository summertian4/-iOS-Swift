//: [Previous](@previous)

import Foundation

struct Vector3 {
    var x: Double = 0.0
    var y: Double = 0.0
    var z: Double = 0.0
    
    // 理解成一个函数
    subscript(index: Int) -> Double? {
        get {
            switch index {
            case 0: return x
            case 1: return y
            case 2: return z
            default: return nil
            }
        }
        
        set {
            guard let newValue = newValue else {return}
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: return
            }
        }
    }
    
    subscript(axis: String) -> Double? {
        switch axis {
        case "x", "X": return x
        case "y", "Y": return y
        case "z", "Z": return z
        default: return nil
        }
    }
}

var v = Vector3(x: 1.0, y: 2.0, z: 3.0)

v.x

v[0]

v["x"]

v[1] = 100.0

//: [Next](@next)
