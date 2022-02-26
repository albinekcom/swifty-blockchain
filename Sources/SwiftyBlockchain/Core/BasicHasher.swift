struct BasicHasher {
    
    static func hash(input: String) -> Int {
        input
            .unicodeScalars
            .map { $0.value }
            .reduce(5381) { ($0 << 5) &+ $0 &+ Int($1) }
    }
    
}
