struct Block {
    
    let previousHash: Int
    
    let transactions: [String]
    
    var blockHash: Int {
        let hashes = [previousHash, BasicHasher.hash(input: transactions.description)]
        
        return BasicHasher.hash(input: hashes.description)
    }
    
    init(previousHash: Int, transactions: [String]) {
        self.previousHash = previousHash
        self.transactions = transactions
    }
    
}

extension Block: CustomStringConvertible {
    
    var description: String {
        return "blockHash: \(blockHash), transactions: \(transactions), previousHash: \(previousHash)"
    }
    
}
