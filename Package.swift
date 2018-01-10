// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftyBlockchain",
    
    targets: [
        .target(
            name: "SwiftyBlockchain",
            dependencies: ["SwiftyBlockchainCore"]
        ),
        
        .target(
            name: "SwiftyBlockchainCore"
        ),
        
        .testTarget(
            name: "SwiftyBlockchainTests",
            dependencies: ["SwiftyBlockchainCore"]
        )
    ]
)
