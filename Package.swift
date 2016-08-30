import PackageDescription

let package = Package(
    name: "cmark.swift",
    targets: [
    	Target(name: "cmark.swift-example", dependencies: ["cmark.swift"])
    ],
    dependencies: [
    	.Package(url: "https://github.com/czechboy0/cmark.git", "0.26.1")
    ]
)
