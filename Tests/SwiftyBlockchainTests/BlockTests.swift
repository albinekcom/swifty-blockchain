import XCTest
@testable import SwiftyBlockchain

final class BlockTests: XCTestCase {
    
    func testBlockHash() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual(123, block1.blockHash)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual(123, block2.blockHash)
    }
    
    func testDescription() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual("", block1.description)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual("", block2.description)
    }
    
}

