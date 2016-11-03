//: [Previous](@previous)

import Foundation

enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multipliaction(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let two = ArithmeticExpression.Number(2)
let product = ArithmeticExpression.Multipliaction(sum, two)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let ArithmeticExpression.Number(value):
        return value
    case let ArithmeticExpression.Addition(left, right):
        return evaluate(left) + evaluate(right)
    case let ArithmeticExpression.Multipliaction(left, right):
        return evaluate(left) * evaluate(right)
    }
}

let result = evaluate(product)

//: [Next](@next)
