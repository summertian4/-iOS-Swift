//: [Previous](@previous)

import Foundation

// protocol Pet: class 只能被类遵守
protocol Pet {
    
    // 协议里所有属性都是 var 
    // 协议里方法不能设置默认值，属性不能设置默认值
    
    var name: String {get set}
    var birthPlace: String {get}
    
    init(name: String)
    
    func playWith()
    func fed(food: String)
    
    mutating func changeName(name: String)
}

class Animal {
    var type: String = "mammal"
}

// 继承对象放在前面，协议放在后面

class Dog: Animal, Pet {
    var name: String = ""
    var birthPlace: String = ""
    
    // 如果是 final 的 class 就不需要 required
    required init(name: String) {
        self.name = name
    }
    
    func playWith() {
        print("Dog paly")
    }
    
    func fed(food: String) {
        print("dog eat \(food)")
    }
    
    func changeName(name: String) {
        
    }
}

var myDog: Dog = Dog(name: "Doggy")
var aPet: Pet = myDog

myDog.birthPlace = "shanghhai"
// 不可以 ⤵️
// aPet.birthPlace = "hah"


//: [Next](@next)
