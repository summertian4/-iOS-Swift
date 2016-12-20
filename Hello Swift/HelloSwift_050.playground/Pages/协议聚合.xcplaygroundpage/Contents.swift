//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation

protocol Prizable {
    // 是否可奖励
    func isPrizable() -> Bool
}

protocol Record: CustomStringConvertible {
    var wins: Int {get}
    var losses: Int {get}
    
    func winningPercent() -> Double
}

extension Record {
    var description: String {
        return String(format: "Wins: %d, Losses: %d", arguments: [wins, losses])
    }
    
    var gamePlayed: Int {
        return wins + losses
    }
    
    func winningPercent() -> Double {
        return Double(wins) / Double((gamePlayed))
    }
}

protocol Tieable {
    var ties: Int {get set}
}

extension Record where Self: Tieable {
    var gamePlayed: Int {
        return wins + losses + ties
    }
    
    func winningPercent() -> Double {
        return Double(wins) / Double((wins + losses + ties))
    }
}

struct FootballRecord: Record, Tieable, Prizable {
    var wins: Int
    var losses: Int
    var ties: Int
    
    func isPrizable() -> Bool {
        return (wins > 2) && (winningPercent() > 0.5)
    }
}

struct BasketballRecord: Record, Prizable {
    var wins: Int
    var losses: Int
    
    func isPrizable() -> Bool {
        return wins > 2
    }
}

struct Student: Prizable {
    var name: String
    var score:Int
    
    func isPrizable() -> Bool {
        return score > 80
    }
}

// 要求同时遵守 Prizable 和 CustomStringConvertible
func award(one: protocol<Prizable, CustomStringConvertible>) {
    if(one.isPrizable()) {
        print(one)
        print("Congratulation! You won a prize")
    } else {
        print("You can not have the prize")
    }
}

var footballRecord: FootballRecord = FootballRecord(wins: 5, losses: 3, ties:2)
footballRecord.gamePlayed
footballRecord.winningPercent()

var basketballRecord: BasketballRecord = BasketballRecord(wins: 5, losses: 3)
basketballRecord.gamePlayed
basketballRecord.winningPercent()

var student: Student = Student(name: "zhoulingyu", score: 100)

award(one: basketballRecord)

// 报错，因为 Student 没有遵守 CustomStringConvertible
//award(one: student)


//: [Next](@next)
