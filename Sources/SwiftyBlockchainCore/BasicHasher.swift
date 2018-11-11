import Foundation

public struct BasicHasher {
    
    static func hash(input: String) -> Int {
        let unicodeScalars = input.unicodeScalars.map { $0.value }
        
        return unicodeScalars.reduce(5381) {
            ($0 << 5) &+ $0 &+ Int($1)
        }
    }
    
}
