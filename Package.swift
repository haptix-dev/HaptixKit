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
            url: "https://get.haptix.dev/v1.5.0/HaptixKit.xcframework.zip",
            checksum: "1543db01c2c6172facbd11438c578fceb2bc381a4f8893ad6270d8a357d9dc86"
        ),
    ]
)
