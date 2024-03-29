import XCTest
@testable import SwiftyBlockchain

final class BlockchainTests: XCTestCase {

    func test_appendBlock() {
        var blockchain = Blockchain()
        XCTAssertEqual(0, blockchain.blocks.count)

        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        blockchain.append(block: block1)
        XCTAssertEqual(1, blockchain.blocks.count)

        let block2 = Block(previousHash: 0, transactions: ["test transaction 1", "test transaction 2"])
        blockchain.append(block: block2)
        XCTAssertEqual(2, blockchain.blocks.count)
    }

    func test_description() {
        var blockchain = Blockchain()
        XCTAssertEqual("Blockchain:\n", blockchain.description)

        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        blockchain.append(block: block1)
        XCTAssertEqual("Blockchain:\n  #0: blockHash: 6972330665191808743, transactions: [\"test transaction 1\"], previousHash: 0;", blockchain.description)

        let block2 = Block(previousHash: 0, transactions: ["test transaction 1", "test transaction 2"])
        blockchain.append(block: block2)
        XCTAssertEqual("Blockchain:\n  #0: blockHash: 6972330665191808743, transactions: [\"test transaction 1\"], previousHash: 0;\n  #1: blockHash: 7496021644692191452, transactions: [\"test transaction 1\", \"test transaction 2\"], previousHash: 0;", blockchain.description)
    }
    
}
