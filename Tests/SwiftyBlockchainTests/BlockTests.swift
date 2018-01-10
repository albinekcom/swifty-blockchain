import XCTest
@testable import SwiftyBlockchainCore

final class BlockTests: XCTestCase {
    
    func testBlockHash() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual(-8301865496324989072, block1.blockHash)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual(4704044732640366145, block2.blockHash)
    }
    
    func testDescription() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        XCTAssertEqual("blockHash: -8301865496324989072, transactions: [\"test transaction 1\"], previousHash: 0", block1.description)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual("blockHash: 4704044732640366145, transactions: [\"test transaction 2\"], previousHash: 0", block2.description)
    }
    
    static var allTests = [
        ("testBlockHash", testBlockHash),
        ("testDescription", testDescription),
    ]
    
}
