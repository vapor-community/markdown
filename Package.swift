import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    dependencies: [
    	.Package(url: "https://github.com/brokenhandsio/cmark-gfm.git", majorVersion: 1)
    ]
)
