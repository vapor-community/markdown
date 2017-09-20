// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    products: [
        .library(name: "SwiftMarkdown", targets: ["SwiftMarkdown"]),
    ],
    dependencies: [
    	.package(url: "https://github.com/brokenhandsio/cmark-gfm.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(name: "SwiftMarkdown", dependencies: ["cmark"]),
        .testTarget(name: "SwiftMarkdownTests", dependencies: ["SwiftMarkdown"]),
    ]
)
