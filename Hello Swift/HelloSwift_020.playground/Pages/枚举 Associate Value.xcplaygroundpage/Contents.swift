//: [Previous](@previous)

import Foundation

// Raw Value
enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

// Associate Value
enum ATMStatus {
    case Success(Int)
    case Error(String)
    case Waiting
}


var balance: Int = 1000

func withdraw(amount: Int) -> ATMStatus {
    if balance >= amount {
        balance -= amount
        return .Success(balance)
    } else {
        return .Error("Not enough money")
    }
}

let result = withdraw(amount: 100)
switch result {
case let .Success(newBalance):
    print("\(newBalance) Yuan left in your account")
case let .Error(errorMessage):
    print(errorMessage)
case .Waiting:
    print("Waiting")
}

// 多值关联
enum Shape {
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerX: Double, centery: Double, radius: Double)
    case Point
}

let square = Shape.Square(side: 10)
let rec = Shape.Rectangle(width: 20, height: 20)

func area(shape: Shape) -> Double {
    switch shape {
    case let Shape.Square(side):
        return side * side
    case let Shape.Rectangle(width, height):
        return width * height
    case let Shape.Circle(_, _, radius):
        return M_PI * radius * radius
    case Shape.Point:
        return 0
    }
}

let shape = Shape.Rectangle(width: 20, height: 40)
let shapeArea = area(shape: shape)
print("shapeArea = \(shapeArea)")

//: [Next](@next)
