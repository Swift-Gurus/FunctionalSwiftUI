// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FunctionalSwiftUI",
    platforms: [.iOS(.v14), .macOS(.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FunctionalSwiftUI",
            targets: ["FunctionalSwiftUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Swift-Gurus/FunctionalSwift", branch: "master")
    ],
    targets: [
        .target(
            name: "FunctionalSwiftUI",
            dependencies: [ .product(name: "FunctionalSwift", package: "FunctionalSwift")]
        ),

        .testTarget(
            name: "FunctionalSwiftUITests",
            dependencies: ["FunctionalSwiftUI"]
        )
    ]
)
