// swift-tools-version:6.2

import PackageDescription

let package = Package(
    name: "HaptixKit",
    platforms: [
        .iOS(.v26)
    ],
    products: [
        .library(
            name: "HaptixKit",
            targets: ["HaptixKit"]
        ),
    ],
    targets: [
        // IMPORTANT: Update the url and checksum after each release.
        // Run: swift package compute-checksum HaptixKit.xcframework.zip
        .binaryTarget(
            name: "HaptixKit",
            url: "https://github.com/haptix-dev/HaptixKit/releases/download/v1.0.0/HaptixKit.xcframework.zip",
            checksum: "def8c86dba7a38dd58b53d0e07cce6319e9119362f7fede946efee3c8c59adcc"
        ),
    ]
)
