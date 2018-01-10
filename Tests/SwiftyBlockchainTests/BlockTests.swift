import XCTest
@testable import SwiftyBlockchainCore

final class BlockTests: XCTestCase {
    
    func testBlockHash() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        
        #if os(Linux)
            let expectedHashForBlock1 = -2639509807668851953
        #else
            let expectedHashForBlock1 = -8301865496324989072
        #endif
            
        XCTAssertEqual(expectedHashForBlock1, block1.blockHash)
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        
        #if os(Linux)
            let expectedHashForBlock2 = -3213349125456088923
        #else
            let expectedHashForBlock2 = 4704044732640366145
        #endif
        
        XCTAssertEqual(expectedHashForBlock2, block2.blockHash)
    }
    
    func testDescription() {
        let block1 = Block(previousHash: 0, transactions: ["test transaction 1"])
        
        #if os(Linux)
            let expectedHashForBlock1 = -2639509807668851953
        #else
            let expectedHashForBlock1 = -8301865496324989072
        #endif
        
        XCTAssertEqual("blockHash: \(expectedHashForBlock1), transactions: [\"test transaction 1\"], previousHash: 0", block1.description)
        
        #if os(Linux)
            let expectedHashForBlock2 = -3213349125456088923
        #else
            let expectedHashForBlock2 = 4704044732640366145
        #endif
        
        let block2 = Block(previousHash: 0, transactions: ["test transaction 2"])
        XCTAssertEqual("blockHash: \(expectedHashForBlock2), transactions: [\"test transaction 2\"], previousHash: 0", block2.description)
    }
    
    static var allTests = [
        ("testBlockHash", testBlockHash),
        ("testDescription", testDescription),
    ]
    
}
