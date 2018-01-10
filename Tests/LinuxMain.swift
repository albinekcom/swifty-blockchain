import XCTest

@testable import SwiftyBlockchainTests

XCTMain([
    testCase(BasicHasherTests.allTests),
    testCase(BlockTests.allTests),
    testCase(BlockchainTests.allTests)
])
