// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftyBlockchain",
    
    targets: [
        .executableTarget(
            name: "SwiftyBlockchain",
            dependencies: []
        ),
        
        .testTarget(
            name: "SwiftyBlockchainTests",
            dependencies: ["SwiftyBlockchain"]
        ),
    ]
)
