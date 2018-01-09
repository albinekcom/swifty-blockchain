import XCTest
@testable import SwiftyBlockchain

final class BlockchainTests: XCTestCase {
    
    func testAppendBlock() {
        var blockchain = Blockchain()
        XCTAssertEqual(0, blockchain.blocks.count)
        
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        blockchain.append(block: block1)
        XCTAssertEqual(1, blockchain.blocks.count)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 1", "test transaction 2"])
        blockchain.append(block: block2)
        XCTAssertEqual(2, blockchain.blocks.count)
    }
    
    func testDescription() {
        var blockchain = Blockchain()
        XCTAssertEqual("", blockchain.description)
        
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        blockchain.append(block: block1)
        XCTAssertEqual("", blockchain.description)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 1", "test transaction 2"])
        blockchain.append(block: block2)
        XCTAssertEqual("", blockchain.description)
    }
    
}
