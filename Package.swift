// swift-tools-version:5.3

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
