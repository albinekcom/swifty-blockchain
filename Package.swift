// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftyBlockchain",

    dependencies: [],

    targets: [
        .target(
            name: "SwiftyBlockchain",
            dependencies: []),

        .testTarget(
            name: "SwiftyBlockchainTests",
            dependencies: [])
    ]
)
