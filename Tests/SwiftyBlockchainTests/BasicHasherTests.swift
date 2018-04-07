import XCTest
@testable import SwiftyBlockchainCore

final class BasicHasherTests: XCTestCase {
    
    func testHash() {
        XCTAssertEqual(229483745223003, BasicHasher.hash(input: "test123"))
        XCTAssertEqual(7572963592359151, BasicHasher.hash(input: "test1234"))
    }
    
    static let allTests = [
        ("testHash", testHash)
    ]
    
}
