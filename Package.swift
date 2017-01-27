import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    dependencies: [
    	.Package(url: "https://github.com/brokenhandsio/cmark.git", "0.26.2")
    ]
)
