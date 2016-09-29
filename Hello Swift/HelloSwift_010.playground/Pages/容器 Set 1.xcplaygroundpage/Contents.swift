//: [Previous](@previous)

import Foundation

// 集合 Set

// 与 Array 效率不同，没有重复数据，无序
var skillsOfA: Set<String> = ["swift", "OC", "OC"]

var emptySet1: Set<Int> = []
var emptySet2 = Set<Double>()

skillsOfA.count
skillsOfA.isEmpty
skillsOfA.first
skillsOfA.contains("swift")

let setA: Set = [1, 2, 3]
let setB: Set = [3, 2, 1, 1, 1]
setA == setB


//: [Next](@next)
