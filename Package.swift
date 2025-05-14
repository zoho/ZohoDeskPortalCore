// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.2.0"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalKB", exact: "4.2.0"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalCommunity", exact: "4.2.0"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalTicket", exact: "4.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/\(version)/ZohoDeskPortalCore.zip", checksum: "af9ade365ea496dc9cd84457a20d2d46e9e2d35612448e56b3a37e92e082a1b8"),
        
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
