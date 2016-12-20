//: [Previous](@previous)

import Foundation

protocol Record: CustomStringConvertible {
    var wins: Int {get}
    var losses: Int {get}
    
    func winningPercent() -> Double
}

// 扩展 Record
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

// 扩展同时遵守了 Tieable 的 Record
extension Record where Self: Tieable {
    var gamePlayed: Int {
        return wins + losses + ties
    }
    
    func winningPercent() -> Double {
        return Double(wins) / Double((wins + losses + ties))
    }
}

struct FootballRecord: Record, Tieable {
    var wins: Int
    var losses: Int
    var ties: Int
}

struct BasketballRecord: Record {
    var wins: Int
    var losses: Int
}

var footballRecord: FootballRecord = FootballRecord(wins: 5, losses: 3, ties:2)
footballRecord.gamePlayed
footballRecord.winningPercent()

var basketballRecord: BasketballRecord = BasketballRecord(wins: 5, losses: 3)
basketballRecord.gamePlayed
basketballRecord.winningPercent()

//: [Next](@next)
