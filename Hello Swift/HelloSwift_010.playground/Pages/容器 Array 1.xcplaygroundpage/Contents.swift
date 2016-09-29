//: [Previous](@previous)

import Foundation

// swift 只支持三种容器(collections)，数组、字典、集合
var numbers: [Int] = [1, 2, 3, 4, 5]
var vowels = ["A", "E", "I", "O", "U"]
var numbers2: Array<Int> = [0, 1, 3, 4, 5]

var emptyArray1: [Int] = []
var emptyArray2: Array<Int> = []
var emptyArray3 = [Int]()
var emptyArray4 = Array<Int>()

var allZeros = [Int](repeating: 0, count: 5)
var allZeros2 = Array<Int>(repeating: 0, count: 5)


vowels.count
numbers.isEmpty

vowels[2]

vowels.first
vowels.last

// 获取最小值
numbers.min()
vowels.max()
numbers[2..<4]

vowels.contains("A")
vowels.index(of: "E")

for index in 0..<numbers.count {
    numbers[index]
}

for number in numbers {
    print(number)
}

for (index, vowel) in vowels.enumerated() {
    print("\(index + 1) : \(vowel)")
}

var oneToFive = [1, 2, 3, 4, 5]
var fiveToOne = [5, 4, 3, 2, 1]
// swift 中数组比较是值比较
numbers == oneToFive
numbers == fiveToOne

//: [Next](@next)
