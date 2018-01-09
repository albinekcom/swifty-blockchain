struct Blockchain {
    
    private var blocks: [Block]
    
    init() {
        blocks = [Block]()
    }
    
    mutating func append(block: Block) {
        blocks.append(block)
    }
    
}

extension Blockchain: CustomStringConvertible {
    
    var description: String {
        var description = "Blockchain:\n"
        
        for (index, block) in blocks.enumerated() {
            description += "  #\(index): \(block);\n"
        }
        
        return description
    }
    
}
