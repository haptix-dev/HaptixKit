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
            targets: ["HaptixKit", "HaptixShared"]
        ),
    ],
    targets: [
        // IMPORTANT: Update the url and checksum after each release.
        // Run: swift package compute-checksum <file>.xcframework.zip
        .binaryTarget(
            name: "HaptixKit",
            url: "https://github.com/haptix-dev/HaptixKit/releases/download/v1.1.0/HaptixKit.xcframework.zip",
            checksum: "23a41f7f20a50b5d524184918a9f7db7ae399cc5c1ac93a9def98ef51b84142b"
        ),
        .binaryTarget(
            name: "HaptixShared",
            url: "https://github.com/haptix-dev/HaptixKit/releases/download/v1.1.0/HaptixShared.xcframework.zip",
            checksum: "5a135029af90f0bcdc76bcfd25df812d72c29f04fb7342ea3d1a5c710035be7c"
        ),
    ]
)
