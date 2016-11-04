//: [Previous](@previous)

import Foundation

class Person {
    
    let firstName: String
    let lastName: String
    var career: String
    
    
    // 必须要手动写初始化方法，和结构体不同。或者可以给每个变量赋初值
    init(firstName: String, lastName: String, career: String) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    func fullName() -> String {
        
        return firstName + lastName
    }
}

let person1 = Person(firstName: "Zhou", lastName: "lingyu", career: "Teacher")
let person2 = person1

// 编译器报错, == 不能用于类对象
// swift 中 == 是对值类型进行比较
// person1 == person2

// === 用于判断引用比较
person1 === person2
person1 !== person2

//: [Next](@next)
