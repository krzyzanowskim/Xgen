// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Xgen",
    products: [
        .library(name: "Xgen", targets: ["Xgen"])
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files.git", .branch("master")),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Xgen",
            dependencies: ["Files"],
            path: "Sources"
        ),
        .testTarget(
            name: "XgenTests",
            dependencies: ["Xgen", "ShellOut"],
            path: "Tests"
        )
    ]
)
