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
            checksum: "957364828862facdce2f685f9a5738cd4ef29bc1b3bc1ecbcfadda9a740f00f2"
        ),
    ]
)
