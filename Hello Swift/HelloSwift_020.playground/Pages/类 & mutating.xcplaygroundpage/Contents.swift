//: [Previous](@previous)

import Foundation

// Reference Type 引用类型
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

let person1 = Person(firstName: "Zhou", lastName: "lingyu", career: "Student")
person1.career = "Teacher"



// enum 和 struct 都是值类型，不可以随意改变自身，如果需要，加上 mutating 关键字
struct Location {
    
    var x = 0
    var y = 0
    
    mutating func goEast() {
        self.x += 1
    }
}

var location = Location()
location.goEast()

enum Switch {
    
    case On
    case Off
    
    mutating func click() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var button = Switch.Off
button.click()


//: [Next](@next)
