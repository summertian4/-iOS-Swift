//: [Previous](@previous)

import Foundation

var user = ["name" : "zhoulingyu", "password" : "123", "occupation" : "programmer"]

let oldPassword = user.updateValue("123", forKey: "password")
if let oldPassword = oldPassword, let newPassword = user["password"], oldPassword == newPassword {
    print("修改前后密码一样")
}

// 可以传入空值，相当于 remove
user["name"] = nil
user

//: [Next](@next)
