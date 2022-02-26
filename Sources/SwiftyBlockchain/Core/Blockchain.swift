struct Blockchain {
    
    private(set) var blocks: [Block] = []
    
    mutating func append(block: Block) {
        blocks.append(block)
    }
    
}

extension Blockchain: CustomStringConvertible {
    
    var description: String {
        var description = "Blockchain:\n"
        
        description += blocks.enumerated()
            .map { "  #\($0.offset): \($0.element);" }
            .joined(separator: "\n")
        
        return description
    }
    
}
