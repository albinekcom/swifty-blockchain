import Foundation

public struct Blockchain {
    
    public private(set) var blocks: [Block]
    
    public init() {
        blocks = [Block]()
    }
    
    public mutating func append(block: Block) {
        blocks.append(block)
    }
    
}

extension Blockchain: CustomStringConvertible {
    
    public var description: String {
        var description = "Blockchain:\n"
        
        for (index, block) in blocks.enumerated() {
            description += "  #\(index): \(block);\n"
        }
        
        return description
    }
    
}
