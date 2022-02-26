@main
struct SwiftyBlockchainMain {
    
    static var printerType: Printer.Type = SystemPrinter.self
    
    static func main() {
        var blockchain = Blockchain()

        let genesisBlock = Block(previousHash: 0, transactions: ["genesis block"])
        blockchain.append(block: genesisBlock)

        let block1 = Block(previousHash: genesisBlock.blockHash, transactions: ["transaction 1", "transaction 2"])
        blockchain.append(block: block1)

        let block2 = Block(previousHash: block1.blockHash, transactions: ["transaction 3", "transaction 4"])
        blockchain.append(block: block2)
        
        printerType.display(text: blockchain.description)
    }
    
}

protocol Printer {
    
    static func display(text: String)
    
}

private struct SystemPrinter: Printer {
    
    static func display(text: String) { print(text) }
    
}
