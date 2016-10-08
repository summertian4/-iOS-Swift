//: [Previous](@previous)

import Foundation

// 返回值为函数
func tier1MailFeeByWeight(weight: Int) -> Int {
    return 1 * weight
}

func tier2MailFeeByWeight(weight: Int) -> Int {
    return 3 * weight
}

func feeByUnitPrice(price: Int, weight: Int) -> Int {
    // 函数嵌套
    func chooseMailFeeCalculationByWeight(weight: Int) -> (Int) -> Int {
        return weight <= 10 ? tier1MailFeeByWeight : tier2MailFeeByWeight
    }
    
    let mailFeeByWeight = chooseMailFeeCalculationByWeight(weight: weight)
    return mailFeeByWeight(weight) + price * weight
}

feeByUnitPrice(price: 10, weight: 15)

//: [Next](@next)
