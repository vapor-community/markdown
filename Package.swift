// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    products: [
        .library(name: "SwiftMarkdown", targets: ["SwiftMarkdown"]),
    ],
    dependencies: [
        .package(url: "https://github.com/brokenhandsio/cmark-gfm.git", from: "2.0.0"),
    ],
    targets: [
        .target(name: "SwiftMarkdown", dependencies: ["cmark"]),
        .testTarget(name: "SwiftMarkdownTests", dependencies: ["SwiftMarkdown"]),
    ]
)
