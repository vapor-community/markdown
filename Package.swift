import PackageDescription

let package = Package(
    name: "SwiftMarkdown",
    dependencies: [
    	.Package(url: "https://github.com/czechboy0/cmark.git", "0.26.1")
    ]
)
