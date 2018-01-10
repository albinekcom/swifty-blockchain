import XCTest
@testable import SwiftyBlockchainCore

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
        XCTAssertEqual("Blockchain:\n", blockchain.description)
        
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        blockchain.append(block: block1)
        
        #if os(Linux)
            let expectedHashForBlock1 = -2639509807668851953
            let expectedHashForBlock2 = -6097721999344705488
        #else
            let expectedHashForBlock1 = -8301865496324989072
            let expectedHashForBlock2 = -7150782369769308554
        #endif
        
        XCTAssertEqual("Blockchain:\n  #0: blockHash: \(expectedHashForBlock1), transactions: [\"test transaction 1\"], previousHash: 0;\n", blockchain.description)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 1", "test transaction 2"])
        blockchain.append(block: block2)
        XCTAssertEqual("Blockchain:\n  #0: blockHash: \(expectedHashForBlock1), transactions: [\"test transaction 1\"], previousHash: 0;\n  #1: blockHash: \(expectedHashForBlock2), transactions: [\"test transaction 1\", \"test transaction 2\"], previousHash: 0;\n", blockchain.description)
    }
    
    static var allTests = [
        ("testAppendBlock", testAppendBlock),
        ("testDescription", testDescription),
    ]
    
}
