import Foundation

struct Block {

  let previousHash: Int

  let transactions: [String]

  var blockHash: Int {
    return -1
  }

  init(previousHash: Int, transactions: [String]) {
    self.previousHash = previousHash
    self.transactions = transactions
  }

}

extension Block: CustomStringConvertible {

    var description: String {
        return "blockHash: \(blockHash), transactions: \(transactions), previousHash: \(previousHash)"
    }

}
