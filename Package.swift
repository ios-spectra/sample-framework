// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleFrameworkPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SampleFrameworkPackage",
            targets: ["SampleFrameworkPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "SampleFrameworkPackage",
                      url: "https://github.com/ios-spectra/sample-framework/releases/download/1.0/SampleFrameWork.xcframework.zip",
                      checksum: "c53e9754faf526e25244544ec3e57bf666afac5e6df929b894cb535648abd71d"),
        .target(
            name: "SampleFrameworkNewPackage"),
        .testTarget(
            name: "SampleFrameworkNewPackageTests",
            dependencies: ["SampleFrameworkNewPackage"]),
    ]
)
