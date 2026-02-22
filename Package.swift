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
            url: "https://get.haptix.dev/v1.0.0/HaptixKit.xcframework.zip",
            checksum: "30c770f9b6f3891bc3213bf26b690d7f1afeac78e518f8fe4d2e627838aec65a"
        ),
    ]
)
