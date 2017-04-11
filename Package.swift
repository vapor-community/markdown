import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    dependencies: [
    	.Package(url: "https://github.com/ONEdotTWO/cmark-markdown.git", "0.26.2")
    ]
)
