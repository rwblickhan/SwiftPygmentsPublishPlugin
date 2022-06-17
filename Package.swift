// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftPygmentsPublishPlugin",
    platforms: [.macOS(.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftPygmentsPublishPlugin",
            targets: ["SwiftPygmentsPublishPlugin"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SwiftPygments", url: "https://github.com/Ze0nC/SwiftPygments", .branch("master")),
        .package(name: "Publish", url: "https://github.com/rwblickhan/publish.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftPygmentsPublishPlugin",
            dependencies: ["SwiftPygments", "Publish"]),
        .testTarget(
            name: "SwiftPygmentsPublishPluginTests",
            dependencies: ["SwiftPygmentsPublishPlugin", "SwiftPygments"]),
    ]
)
