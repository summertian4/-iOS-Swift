//: [Previous](@previous)

import Foundation

protocol Record: CustomStringConvertible {
    var wins: Int {get}
    var losses: Int {get}
    
    func winningPercent() -> Double
}

// 扩展协议
extension Record {
    var description: String {
        return String(format: "Wins: %d, Losses: %d", arguments: [wins, losses])
    }
    
    func shoutWins() {
        print("We win", wins, "Times")
    }
}

struct BasketballRecord: Record {
    var wins: Int
    var losses: Int
    
    func winningPercent() -> Double {
        return Double(wins) / Double((losses + wins))
    }
}

let teamRecord = BasketballRecord(wins: 20, losses: 1)
print(teamRecord)

teamRecord.shoutWins()

//: [Next](@next)
