//: [Previous](@previous)

import Foundation

findAnswer:
for m in 1...300 {
    for n in 1...300 {
        if (m * m * m * m - n * n == 15 * m * n) {
            print(m,n)
            break findAnswer
        }
    }
}

// 五种控制转移
// 1. break
// 2. continue
// 3. fallthrough
// 4. return
// 5. throw

//: [Next](@next)
