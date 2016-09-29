//: [Previous](@previous)

import Foundation

var errorCode: Int = 404
// 报错，swift 中 nil 是一个特殊的类型，必须声明为可选型的对象才可以赋值为 nil
// errorCode = nil

var errorCode2: Int? = 404
errorCode2 = nil

let imInt = 405
errorCode2 = imInt
// 错误，Int? 和 Int 是完全不同的类型，Int 可以赋值给 Int？，反过来不行
// imInt = errorCode2

print(errorCode)
print(errorCode2)

// unwrap
var errorCodeStr: String? = "404"
// 强制解包有风险
// errorCodeStr = nil
"The errorCode is " + errorCodeStr!

if errorCodeStr != nil {
    "The errorCode is " + errorCodeStr!
} else {
    "no errorCode is"
}


var errorStr: String? = nil

if let errorStr = errorStr {
    print("The errorCode is " + errorStr)
    print(errorStr)
} else {
    print("hah")
    print(errorStr)
}
print(errorStr)





// -----------------------------------------
// Optional Chaining
errorStr = "Not Found"
if let errorStr = errorStr {
    errorStr.uppercased()
}

// 与上面完全一致
// 尝试解包，解包成功调用 uppercased
errorStr?.uppercased()

errorStr!.uppercased()





// -----------------------------------------
// nil coalesce
var errorMessage: String? = nil
let message: String

if let errorMessage = errorMessage {
    message = errorMessage
} else {
    message = "NO ERROR"
}

let message2 = errorMessage == nil ? "NO ERROR" : errorMessage

let message3 = errorMessage ?? "NO ERROR"



// -----------------------------------------
// 可选型在元组中的使用
var error1: (errorCode: Int, errorMessage: String?) = (404, "NOT FOUND")
var error2: (errorCode: Int, errorMessage: String) = (404, "NOT FOUND")
var error3: (errorCode: Int, errorMessage: String?)? = (404, "NOT FOUND")
error1.errorMessage = nil




// -----------------------------------------
// 可选型是实际应用

var ageInput: String = "16"
var age = Int(ageInput)

if let age = Int(ageInput) , age < 20 {
    print("You are teenager!")
}

var greetings = "Hello"
greetings.range(of: "ll")
greetings.range(of: "oo")




// -----------------------------------------
// 隐式可选行
var hahah: String! = nil
"The meesage is " + hahah




//: [Next](@next)
