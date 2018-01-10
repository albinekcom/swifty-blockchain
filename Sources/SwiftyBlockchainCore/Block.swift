import Foundation

public struct Block {
    
    public let previousHash: Int
    
    public let transactions: [String]
    
    public var blockHash: Int {
        let hashes = [previousHash, BasicHasher.hash(input: transactions.description)]
        
        return BasicHasher.hash(input: hashes.description)
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
