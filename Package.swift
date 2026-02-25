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
            url: "https://get.haptix.dev/v1.0.1/HaptixKit.xcframework.zip",
            checksum: "b766fc9a0451ef36457c8cde7f2f9093c299ad9aa9517735d23faff936289031"
        ),
    ]
)
