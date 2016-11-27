import Foundation

public class GameManager {
    public var score = 0
    static public let defaultGameManager = GameManager()
    
    private init() {
        
    }
    
    public func addScore() {
        score += 10
    }
}
