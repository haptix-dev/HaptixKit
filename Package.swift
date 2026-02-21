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
            checksum: "ea3952a993d24eff10a82dbe053e78100d29a0c80f8a2fb37e68d04486975047"
        ),
    ]
)
