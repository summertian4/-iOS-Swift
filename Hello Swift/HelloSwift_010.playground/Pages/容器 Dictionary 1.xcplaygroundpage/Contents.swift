//: [Previous](@previous)

import Foundation

var dic = ["a" : "1", "b" : "2", "c" : "3"]

var emptyDictionary1: [String : Int] = [ : ]
var emptyDictionary2: Dictionary<Int, String> = [ : ]
var emptyDictionary3 = [String : String]()
var emptyDictionary4 = Dictionary<Int, Int>()

print(dic["a"])
if let value = dic["a"] {
    print("a 对应的是 ： \(value)")
}


Array(dic.keys)
Array(dic.values)

for (key, value) in dic {
    print("\(key) : \(value)")
}

let dic1 = [1 : "A", 2 : "B", 3 : "C"]
let dic2 = [1 : "A", 2 : "B", 3 : "C"]
let dic3 = [2 : "B", 1 : "A", 3 : "C"]
// 字典、数组比较是值比较
dic1 == dic2
dic1 == dic3

//: [Next](@next)
