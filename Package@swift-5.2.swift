// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "SwiftMarkdown", targets: ["SwiftMarkdown"]),
    ],
    dependencies: [
        .package(url: "https://github.com/brokenhandsio/cmark-gfm.git", from: "2.0.0"),
    ],
    targets: [
        .target(name: "SwiftMarkdown", dependencies: [
            .product(name: "cmark", package: "cmark-gfm"),
        ]),
        .testTarget(name: "SwiftMarkdownTests", dependencies: [
            .target(name: "SwiftMarkdown"),
        ]),
    ]
)
