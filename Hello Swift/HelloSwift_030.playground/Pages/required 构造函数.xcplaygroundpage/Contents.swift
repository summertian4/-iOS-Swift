//: [Previous](@previous)

import Foundation

class Person {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Coser: Person {
    var group: String = ""
    
    convenience init(group: String, name: String) {
        self.init(name: name)
        self.group = group
    }
    
    convenience required init(name: String) {
        self.init(name: name)
    }
}

//: [Next](@next)
