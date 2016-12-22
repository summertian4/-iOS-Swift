//: [Previous](@previous)

import UIKit

enum MyError: Error {
    case ErrorType1
    case ErrorType2(Int)
    case ErrorType3
}

// throws 告知函数可能抛出异常
func method(_ a: Int) throws -> Int {
    
    // defer 类似 java 的 finally
    // defer 要写在所有可能抛出异常的语句之前
    // defer 中的代码，会延迟到『当前函数退出』的时候执行
    // defer 其实是一种控制转移的关键字
    // 控制转移关键字少用
    defer {
        print("全部结束")
    }
    
    if a == 1 {
        // throw 之后函数结束
        throw MyError.ErrorType1
    }
    
    if a == 2 {
        throw MyError.ErrorType2(a)
    }
    
    if a == 3 {
        throw MyError.ErrorType3
    }
    
    // 写在这里的 defer 只有下面的 return 执行后，函数结束后，才会被执行
    // 多个 defer 的时候，按照代码的顺序，按照倒叙执行
    defer {
        print("😄")
    }
    
    return a * 100
}

// 第一种处理方式，加 try!，类似强制解包
try! method(4)
print("=============================================")

// 第二种处理方式，加 try?，类似尝试解包，如果是异常返回 nil
try? method(3)
print("=============================================")

// 第三种处理方式，do try catch

do {
    try method(2)
} catch MyError.ErrorType1 {
    print("In catch 1")
}
catch MyError.ErrorType2(let a) {
    a
    print("In catch 2")
} catch {
    print("In vague catch")
}
print("=============================================")

// 第四种处理方式，do try catch 直接截获 Error

do {
    try method(2)
} catch let error {
    error
}
print("=============================================")

//: [Next](@next)
