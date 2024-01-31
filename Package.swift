// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleFramework",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SampleFramework",
            targets: ["SampleFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "SampleFramework",
                      url: "https://github.com/ios-spectra/sample-framework/releases/download/1.0/SampleFrameWork.xcframework.zip",
                      checksum: "01554e0506485b4bf3dc16fdc5efc5f91c6f0e41f20a84243881bd93a1bed1c0"),
        .target(
            name: "SampleFrameworkPackage"),
        .testTarget(
            name: "SampleFrameworkPackageTests",
            dependencies: ["SampleFrameworkPackage"]),
    ]
)
