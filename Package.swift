// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    products: [
        .library(name: "SwiftMarkdown", targets: ["SwiftMarkdown"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-cmark.git", from: "0.5.0"),
    ],
    targets: [
        .target(name: "SwiftMarkdown", dependencies: ["cmark-gfm"]),
        .testTarget(name: "SwiftMarkdownTests", dependencies: ["SwiftMarkdown"]),
    ]
)
