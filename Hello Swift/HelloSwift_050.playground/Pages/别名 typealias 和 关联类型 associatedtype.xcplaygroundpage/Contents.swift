//: [Previous](@previous)

import Foundation

typealias Length = Double

extension Double {
    var km: Length{
        return self * 1000.0
    }
    
    var m: Length{
        return self
    }
}

let runningDistance: Length = 3.54.km
runningDistance



protocol WeightCalcutable {
    // 在协议中定义别名用 associatedtype
    associatedtype WeightType
    
    var weight: WeightType {get}
}

class iPhone7: WeightCalcutable {
    typealias WeightType = Double
    
    var weight: Double
}

class Ship: WeightCalcutable {
    typealias WeightType = Int
    let weight: Int
}


//: [Next](@next)
