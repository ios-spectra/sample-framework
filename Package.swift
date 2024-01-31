// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NewFW",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NewFW",
            targets: ["NewFW"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "NewSampleFW",
                      url: "https://github.com/ios-spectra/sample-framework/releases/download/1.0/NewSampleFW.xcframework.zip",
                      checksum: "1792ac386452ec82291adadee1c4509b9743bbb1160a562cf9377813edf42f67"),
        .target(
            name: "NewFW"),
        .testTarget(
            name: "NewFWTests",
            dependencies: ["NewFW"]),
    ]
)
