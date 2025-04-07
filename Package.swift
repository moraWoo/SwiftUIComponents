// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUI_Components",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftUI_Components",
            targets: ["SwiftUI_Components"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUI_Components",
            dependencies: []),
        .testTarget(
            name: "SwiftUI_ComponentsTests",
            dependencies: ["SwiftUI_Components"]),
    ]
)
