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
            url: "https://github.com/haptix-dev/sdk/releases/download/v1.0.0/HaptixKit.xcframework.zip",
            checksum: "59a2f68440b27b0b4a9d39eb8db63c53fd42edc406fdffb4a1000929618ca64d"
        ),
    ]
)
