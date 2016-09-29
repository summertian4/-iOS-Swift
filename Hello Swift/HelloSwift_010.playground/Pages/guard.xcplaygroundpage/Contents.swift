//: [Previous](@previous)

import Foundation

func buy2(money: Int, price: Int, capacity: Int, volume: Int) {
    guard money >= price else {
        print("Not enough moeny")
        return
    }
    
    guard capacity >= volume else {
        print("Not enough capacity")
        return
    }
    
    print("I can buy it")
    return
}

func buy1(money: Int, price: Int, capacity: Int, volume: Int) {
    if !(money >= price) {
        print("Not enough moeny")
        return
    }
    
    if !(capacity >= volume) {
        print("Not enough capacity")
        return
    }
    
    print("I can buy it")
    return
}

//: [Next](@next)
