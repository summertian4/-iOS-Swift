//: [Previous](@previous)

import UIKit

// 函数做变量
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let anotherAdd: (Int, Int) -> Int = add
anotherAdd(3, 4)

func sayHelloTo(name: String) {
    print("Hello, \(name)")
}

let anotherSayHelloTo: (String) -> () = sayHelloTo

// -----------------------------------
// 应用 1
var arr: [Int] = []
for _ in 0 ..< 100 {
    // arc4random() 9 位数的随机整数
    arr.append(Int(arc4random() % 1000))
}

arr.sort()

func biggerNumberFirst(_ a: Int, _ b: Int) -> Bool {
    return a > b
}

arr.sort(by: biggerNumberFirst)

// -----------------------------------
// 应用 2
func changeScores(scores: inout [Int], by changeScore: (Int) -> Int) {
    for (index, score) in scores.enumerated() {
        scores[index] = changeScore(score)
    }
}

func changeScore0(score: Int) -> Int {
    return Int(sqrt(Double(score)) * 10)
}

func changeScore1(score: Int) -> Int {
    return Int(Double(score) / 150.0 * 100.0)
}

func changeScore2(score: Int) -> Int {
    return score + 3
}

var scores1 = [36, 61, 78, 89, 99]
changeScores(scores: &scores1, by: changeScore2)
scores1

// 其实即 map
scores1.map(changeScore2)

// filter 过滤
func fail(score: Int) -> Bool {
    return score < 60
}

scores1.filter(fail)

// reduce 归纳

// 第一个值是初值
scores1.reduce(0, add)
scores1.reduce(0, +)

func concatenate(str: String, num: Int) -> String {
    return str + String(num) + " "
}

scores1.reduce("", concatenate)

//: [Next](@next)
