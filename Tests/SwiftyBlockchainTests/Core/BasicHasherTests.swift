import XCTest
@testable import SwiftyBlockchain

final class BasicHasherTests: XCTestCase {

    func test_hash() {
        XCTAssertEqual(229483745223003, BasicHasher.hash(input: "test123"))
        XCTAssertEqual(7572963592359151, BasicHasher.hash(input: "test1234"))
    }

}
