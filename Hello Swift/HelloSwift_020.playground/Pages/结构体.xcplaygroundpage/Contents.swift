//: [Previous](@previous)

import Foundation

struct Location {
    
    // 可以赋初值
    var latitude: Double = 0
    var longitude: Double = 0
    
    // 参数是"5,6" init 后加 ？ 代表 Failable-Initializer
    init?(coordinateString: String) {
        
//        guard let commaIndex = coordinateString.range(of: ",")?.lowerBound else {
//            return nil
//        }
//        
//        guard let firstElement = Double(coordinateString.substring(to: commaIndex)) else {
//            return nil
//        }
//        
//        guard let secondElement = Double(coordinateString.substring(from: coordinateString.index(after: commaIndex))) else {
//            return nil
//        }
        
        guard
            let commaIndex = coordinateString.range(of: ",")?.lowerBound,
            let firstElement = Double(coordinateString.substring(to: commaIndex)),
            let secondElement = Double(coordinateString.substring(from: coordinateString.index(after: commaIndex)))
        else {
            return nil
        }
        
        self.latitude = firstElement
        self.longitude = secondElement
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func isNorth() -> Bool {
        return self.latitude > 0
    }
    
    func isSouth() -> Bool {
        return !self.isNorth()
    }
    
    func distanceTo(location: Location) -> Double {
        return sqrt(pow(self.latitude - self.longitude, 2) + pow(self.longitude - self.latitude, 2))
    }
}

var loc: Location = Location(coordinateString: "4.6666,6.9999")!
loc.isNorth()


//: [Next](@next)
