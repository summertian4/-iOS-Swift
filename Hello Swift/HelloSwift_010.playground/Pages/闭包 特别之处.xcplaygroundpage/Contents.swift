//: [Previous](@previous)

import Foundation

// 内容捕获
var arr: [Int] = []
for _ in 0 ..< 20 {
    // arc4random() 9 位数的随机整数
    arr.append(Int(arc4random() % 1000))
}

var num = 700
arr.sort { (a, b) -> Bool in
    abs(a - num) < abs(b - num)
}

func runningMetersWithMetersPerDay(metersPerDay: Int) -> () -> Int {
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}

var planA = runningMetersWithMetersPerDay(metersPerDay: 2000)
planA()
planA()

var planB = runningMetersWithMetersPerDay(metersPerDay: 5000)
planB()
planB()

var anotherPlan = planB
anotherPlan()
planB()

//: [Next](@next)
