import XCTest

@testable import SwiftyBlockchainTests

XCTMain([
    testCase(BlockTests.allTests),
    testCase(BlockchainTests.allTests)
])
