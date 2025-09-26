// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.2"
let package = Package(
    name: "ZohoDeskPortalCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCore",
            targets: ["ZohoDeskPortalCore", "ZohoDeskPortalCorePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalKB", exact: version),
        .package(url: "https://github.com/zoho/ZohoDeskPortalCommunity", exact: version),
        .package(url: "https://github.com/zoho/ZohoDeskPortalTicket", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/\(version)/ZohoDeskPortalCore.zip", checksum: "35916731f9518bc8d2f5b7a37b327bb1ed7b5cc353e6cdf05af7e89e689019b2"),
        
        .target(
            name: "ZohoDeskPortalCorePackage",
            dependencies: [
                .product(name: "ZohoDeskPortalKB", package: "ZohoDeskPortalKB"),
                .product(name: "ZohoDeskPortalCommunity", package: "ZohoDeskPortalCommunity"),
                .product(name: "ZohoDeskPortalTicket", package: "ZohoDeskPortalTicket")
            ]
        )
    ]
)
