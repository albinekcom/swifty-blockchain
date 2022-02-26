import XCTest
@testable import SwiftyBlockchain

final class SwiftyBlockchainMainTests: XCTestCase {

    func test_main() async {
        SwiftyBlockchainMain.printerType = PrinterMock.self
        
        await SwiftyBlockchainMain.main()
        
        XCTAssertEqual(1, PrinterMock.printed.count)
        XCTAssertEqual("Blockchain:\n  #0: blockHash: -2331138183360343848, transactions: [\"genesis block\"], previousHash: 0;\n  #1: blockHash: -8731640090887783613, transactions: [\"transaction 1\", \"transaction 2\"], previousHash: -2331138183360343848;\n  #2: blockHash: 7217213218175200998, transactions: [\"transaction 3\", \"transaction 4\"], previousHash: -8731640090887783613;", PrinterMock.printed[0])
    }

}

// MARK: - Helpers

private struct PrinterMock: Printer {
    
    static private(set) var printed: [String] = []
    
    static func display(text: String) {
        printed.append(text)
    }
    
}
