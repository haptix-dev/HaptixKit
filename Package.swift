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
            url: "https://github.com/haptix-dev/HaptixKit/releases/download/v1.2.0/HaptixKit.xcframework.zip",
            checksum: "52309fe2611ac3975d91331ec0cfdf02c5878212d574dea7dd196e22ca4177d0"
        ),
    ]
)
