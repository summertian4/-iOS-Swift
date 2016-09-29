//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

for c in str.characters {
    print(c)
}

// 也是""
let mark: Character = "!"

str + String(mark)
str.append(mark)
str

// swift 的 Character 使用 Unicode
let englishLetter: Character = "a"
let chineseLetter: Character = "周"
let dog: Character = "😊"
let coolGuy: Character = "\u{1F60E}"

var collLetters = "abc"
collLetters.characters.count

var chineseLetters = "周凌宇"
chineseLetters.characters.count

var emojiLetters = "\u{1F60E}\u{1F60E}"
emojiLetters.characters.count

let startIndex = str.startIndex
startIndex
str[str.index(startIndex, offsetBy: 5)]

let index = str.index(before: str.endIndex)
let range = str.startIndex..<index
str[range]


str.uppercased()
str.lowercased()
// 每个单词首字母大写
str.capitalized

str.contains("Hello")
// 是否有此前缀
str.hasPrefix("He")
// 是否有此后缀
str.hasSuffix("ft")

// NSString
let s2 = NSString(format: "%.2f", 1.0 / 3.0)
// 强制转换 / 桥接
let s: String = s2 as String

let willTrimStr = "      ----- Hello -----      " as NSString
willTrimStr.trimmingCharacters(in: CharacterSet(charactersIn: " -"))

//: [Next](@next)
