//: [Previous](@previous)

import Foundation

// 返回值空可以不写，可以写 Void，可以写 ()
func sayHello(name: String?) -> String {
    return "Hello " + (name ?? "Guest")
}

var nickname: String? = nil
sayHello(name: nickname)

// 常见命名规范
var arr = [1, 2, 3]
arr.append(4)
arr.contains(1)
arr.index(of: 0)
arr.remove(at: 0)


/// 查找数组最大、最小值
///
/// - parameter numbers: 数组
///
/// - returns: 元组
func finxMaxAndMin(numbers:[Int]) -> (maxValue: Int , minValue: Int)? {
    if numbers.isEmpty {
        return nil
    }
    
    var minValue = numbers[0]
    var maxValue = numbers[0]
    for number in numbers {
        minValue = minValue < number ? minValue : number
        maxValue = maxValue > number ? maxValue : number
    }
    return (maxValue, minValue)
}

var scores: [Int] = [203, 1234, 5678, 334, 982, 555]
//scores = scores ?? []

if let result = finxMaxAndMin(numbers: scores) {
    print("The max score is \(result.maxValue)")
    print("The min score is \(result.minValue)")
}



//: [Next](@next)
