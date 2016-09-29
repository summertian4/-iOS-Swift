//: [Previous](@previous)

import Foundation

// 增删改查

var courses = ["swift", "javascript", "php"]
courses.append("hah")
print(courses)

courses += ["hah 2"]

courses.insert("zhongjian", at: 2)

//courses.removeLast()
//courses
//courses.removeFirst()
//courses
//courses.remove(at: 2)
//courses
//
//courses.removeSubrange(0..<2)
//courses

courses[0] = "gengxin"
courses

courses[1...3] = ["01", "02", "03", "04"]
courses

// 相当于替换
courses[0..<4] = ["none"]
courses

//: [Next](@next)
