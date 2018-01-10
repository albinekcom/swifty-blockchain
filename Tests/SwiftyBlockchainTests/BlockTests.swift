import XCTest
@testable import SwiftyBlockchainCore

final class BlockTests: XCTestCase {
    
    func testBlockHash() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual(6972330665191808743, block1.blockHash)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual(6972330665163311824, block2.blockHash)
    }
    
    func testDescription() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual("blockHash: 6972330665191808743, transactions: [\"test transaction 1\"], previousHash: 0", block1.description)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual("blockHash: 6972330665163311824, transactions: [\"test transaction 2\"], previousHash: 0", block2.description)
    }
    
    static var allTests = [
        ("testBlockHash", testBlockHash),
        ("testDescription", testDescription),
    ]
    
}
