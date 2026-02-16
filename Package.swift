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
            checksum: "4c480ae0cc6f00bccb0f763d6b305d241954a0c0b99e4bd70ba2f20ed9ba84b7"
        ),
    ]
)
