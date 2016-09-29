//: [Previous](@previous)

import Foundation

let point = (3, 3)
switch point {
case let (x, y) where x == y:
    print("It's on the line x == y")
case let (x, y) where x == -y:
    print("It's on the line x == -y")
case let (x, y):
    print("It's just an ordinary point")
    print("The point is (\(x), \(y))")
}

// 模式匹配

let age = 13
if case 10...19 = age {
    print("you are a teenager")
}

if case 10...19 = age, age >= 18 {
    print("you are a teenager and in college")
}

//: [Next](@next)
