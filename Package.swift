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
            url: "https://get.haptix.dev/v1.5.1/HaptixKit.xcframework.zip",
            checksum: "81a525524fae616edc2bbcec6ce890f825f6cb347cefd2078e818cc282eb3e09"
        ),
    ]
)
