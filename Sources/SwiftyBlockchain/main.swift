import SwiftyBlockchainCore

var blockchain = Blockchain()

let genesisBlock = Block(previousHash: 0, transactions: ["genesis block"])
blockchain.append(block: genesisBlock)

let block1 = Block(previousHash: genesisBlock.blockHash, transactions: ["transaction 1", "transaction 2"])
blockchain.append(block: block1)

let block2 = Block(previousHash: block1.blockHash, transactions: ["transaction 3", "transaction 4"])
blockchain.append(block: block2)

print(blockchain)
