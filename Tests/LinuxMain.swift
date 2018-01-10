import XCTest

@testable import SwiftyBlockchainTests

var tests = [XCTestCaseEntry]()

tests += BlockTests.allTests
tests += BlockchainTests.allTests

XCTMain(tests)
