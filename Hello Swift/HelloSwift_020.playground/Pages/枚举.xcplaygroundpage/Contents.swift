//: [Previous](@previous)

import Foundation

// Raw Value
enum Month: Int {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case November
    case December
}

enum Direction: Int {
    case Left = 1, Right, Up, Down
}

let currentMonth = Month.July
let currentMonth2: Month = .July

Direction.Down

func mothsBeforeNewYear(month: Month) -> Int {
    return 12 - month.rawValue
}

let input = 4
// 返回可选型
if let month = Month(rawValue: input) {
    mothsBeforeNewYear(month: month)
}

// swift 中 enum 不仅仅是 Int 型
enum ProgrammingLanguage: String {
    case Swift
    case ObjectiveC = "Objective-C"
    case C = "C"
    case JAVA
}

let language: ProgrammingLanguage = .Swift
print("\(language)")

//: [Next](@next)
