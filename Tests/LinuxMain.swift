import XCTest

@testable import SwiftyBlockchainTests

XCTMain([
    testCase(BasicHasher.allTests),
    testCase(BlockTests.allTests),
    testCase(BlockchainTests.allTests)
])
