//: [Previous](@previous)

import Foundation

var skillsOfA: Set<String> = ["swift", "OC"]
var skillsOfB: Set<String> = ["HTML", "CSS", "Javascript"]
var skillsOfC: Set<String> = []

skillsOfC.insert("swift")
skillsOfC.insert("HTML")
skillsOfC.insert("CSS")
skillsOfC

skillsOfC.remove("CSS")
skillsOfC

// 集合不提供更新操作

// 并
skillsOfC.insert("CSS")

skillsOfA
skillsOfC

skillsOfA.union(skillsOfC)

// 交集
skillsOfA.intersection(skillsOfC)

// 减法
skillsOfA.subtract(skillsOfC)

// 异或
skillsOfA.formSymmetricDifference(skillsOfC)

// 判断子集
skillsOfC.isSubset(of: skillsOfA)
// 判断真子集
skillsOfC.isStrictSubset(of: skillsOfA)
// 判断相离
skillsOfC.isDisjoint(with: skillsOfA)

//: [Next](@next)
