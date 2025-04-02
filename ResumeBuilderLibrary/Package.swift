// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ResumeBuilderLibrary",
  platforms: [
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "ResumeBuilderLibrary",
      targets: ["ResumeBuilderLibrary"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/coenttb/swift-html", branch: "main")
  ],
  targets: [
    .target(
      name: "ResumeBuilderLibrary",
      dependencies: [
        .product(name: "HTML", package: "swift-html")
      ]
    )
  ]
)
