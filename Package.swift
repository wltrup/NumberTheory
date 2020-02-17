// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NumberTheory",
    products: [
        .library(
            name: "NumberTheory",
            targets: ["NumberTheory"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NumberTheory",
            dependencies: []),
        .testTarget(
            name: "NumberTheoryTests",
            dependencies: ["NumberTheory"]),
    ]
)
