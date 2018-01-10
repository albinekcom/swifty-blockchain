import Foundation

public struct Block {
    
    public let previousHash: Int
    
    public let transactions: [String]
    
    public var blockHash: Int {
        let hashes = [previousHash, transactions.description.hashValue]
        
        return hashes.description.hashValue
    }
    
    public init(previousHash: Int, transactions: [String]) {
        self.previousHash = previousHash
        self.transactions = transactions
    }
    
}

extension Block: CustomStringConvertible {
    
    public var description: String {
        return "blockHash: \(blockHash), transactions: \(transactions), previousHash: \(previousHash)"
    }
    
}
